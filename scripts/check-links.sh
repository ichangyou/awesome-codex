#!/usr/bin/env bash
# Check README URLs with GET requests, following redirects.
# Usage: ./scripts/check-links.sh [file ...]   (defaults to both READMEs)
# curl uses shell proxy settings (HTTPS_PROXY/HTTP_PROXY), not macOS system settings.
# Exit codes: 0 = verified, 1 = broken links, 2 = unable to verify all links.

set -uo pipefail
cd "$(dirname "$0")/.."

files=("${@:-}")
if [ -z "${files[0]:-}" ]; then
  files=(README.md README.zh-CN.md)
fi

urls=$(grep -ho 'https\?://[^)" ]*' "${files[@]}" | sed 's/[.,]$//' | sort -u)
total=$(printf '%s\n' "$urls" | grep -c . || true)

echo "Checking $total unique URLs from: ${files[*]}"
echo

fail=0
unverified=0
while IFS= read -r url; do
  [ -z "$url" ] && continue
  for attempt in 1 2 3; do
    if code=$(curl --compressed -sL -o /dev/null -w '%{http_code}' \
      --connect-timeout 10 -m 25 \
      -A 'Mozilla/5.0 (compatible; awesome-codex-linkcheck/1.0)' "$url"); then
      curl_status=0
    else
      curl_status=$?
    fi
    # Retry transport errors and temporary server/rate-limit responses.
    if [ "$curl_status" -eq 0 ]; then
      case "$code" in
        408|425|429|5??) ;;
        *) break ;;
      esac
    fi
    [ "$attempt" -eq 3 ] || sleep "$attempt"
  done

  if [ "$curl_status" -ne 0 ]; then
    echo "  ERROR curl=$curl_status HTTP=$code  $url"
    unverified=$((unverified + 1))
    continue
  fi
  case "$code" in
    200) ;;
    404|410)
      echo "  FAIL $code  $url"
      fail=$((fail + 1))
      ;;
    *)
      # Access restrictions and other responses do not establish a dead link.
      echo "  UNVERIFIED HTTP=$code  $url"
      unverified=$((unverified + 1))
      ;;
  esac
done <<< "$urls"

echo
verified=$((total - fail - unverified))
echo "$verified verified, $fail broken, $unverified unverified out of $total."
if [ "$fail" -gt 0 ]; then
  exit 1
fi
if [ "$unverified" -gt 0 ]; then
  exit 2
fi
