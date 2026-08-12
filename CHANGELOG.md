# Changelog

Weekly updates to this list. Newest first.

Format: additions grouped by section, then removals/fixes, then one line on what was learned that week.

---

## 2026-W32 (2026-08-09)

### Added

- **Configuration** — Official Auto-review guide for routing sandbox-boundary approvals to a separate reviewer agent without expanding permissions.
- **Skills** — Record & Replay for turning demonstrated macOS workflows into reusable skills, with its Computer Use and regional availability limits stated explicitly.
- **Codex SDK & Headless** — Codex App Server documentation for building rich clients around authentication, conversation history, approvals, and streamed agent events.
- **Multi-Agent & Orchestration** — Official Git worktree workflow for isolating parallel Codex desktop chats in the same repository.

### Notes

- Codex 0.147.0 added Auto-review through `--approve-for-me` and removed the deprecated `codex exec --full-auto` flag; use `--sandbox workspace-write` instead.
- Portable Agent Plugins were not added again because the Plugins section already gained the relevant official guides in W31.

## 2026-W31 (2026-08-02)

### Added

- **Plugins** — Official guides for discovering plugins, building and testing installable bundles, and deciding when a workflow should be a skill or a plugin.
- **Configuration** — Official model and reasoning-effort guide for interactive and non-interactive Codex sessions.
- **Hooks & Automation** — `openai/codex-action` for running `codex exec` in GitHub Actions with explicit credentials and permission profiles.
- **Multi-Agent & Orchestration** — Official subagents guide for parallel work and custom agent definitions.

### Fixed

- **Codex SDK & Headless** — Replaced the generic `openai/codex` link for `codex exec` with the dedicated non-interactive-mode documentation.

### Notes

- Codex 0.146.0 added plugin manifests, workspace plugin publishing, more marketplaces, thread forks, and remote Code Mode, making plugins and parallel workflows the highest-value theme for this update.
- For ChatGPT-authenticated Codex sessions, GPT-5.4 and GPT-5.4 mini are scheduled to retire on 2026-08-31; OpenAI recommends GPT-5.6 Terra and GPT-5.6 Luna respectively. API-key-authenticated sessions are not affected by this retirement notice.
- Community candidates were not added because they have not yet passed the repository's hands-on-use bar.

## 2026-W30 (2026-07-21)

### Added

Initial list. 65 entries across 16 sections, all 63 unique URLs verified live on 2026-07-21.

- **Official** — `openai/codex`, docs overview, changelog, CLI reference, security & approvals, prompting guide, `openai/skills`.
- **AGENTS.md** — official docs, `agents.md` spec, the Codex team's own AGENTS.md, `awesome-agents-md`, `agent-rules-books`.
- **Configuration** — `config.toml` reference, `cc-switch`, an article on how the instruction layers resolve.
- **Skills** — official skills catalog and authoring guide, `awesome-codex-skills`, `awesome-agent-skills`, `hallmark`, `microsoft/skills`.
- **MCP** — Codex MCP docs, protocol spec, reference servers, `cursor-talk-to-figma-mcp`, `codeseek`, `notebooklm-mcp`, `codexpro`.
- **Hooks & Automation** — official hooks docs, `ai-setup`, `context-mode`.
- **SDK, IDE, Cloud & Code Review** — official docs for each surface, VS Code extension.
- **Orchestration & clients** — `wshobson/agents`, `agent-orchestrator`, `oh-my-openagent`, `ruflo`, `happy`, `claudecodeui`, `cc-connect`, `AionUi`.
- **Tools** — `graphify`, `codegraph`, `planning-with-files`, `open-design`, `design.md`.
- **Chinese** — `ai-guide`, `cockpit-tools`, `claude-relay-service`.
- **Related lists** — the four competing Codex lists, listed honestly.

### Removed

- **Community** — `r/OpenAI`. Not a Codex-specific venue; it was included to pad the section, which is exactly what rule 1 in [CONTRIBUTING.md](CONTRIBUTING.md) exists to prevent. Removed the same day it shipped.

### Notes

- OpenAI's Codex docs moved from `developers.openai.com/codex/*` to `learn.chatgpt.com/docs/*`. The old URLs still 301, but this list uses the resolved canonical URLs so the link checker stays honest.
- Codex now has first-class **Hooks** and **Skills** docs. Both are new enough that community tooling around them is thin — likely the highest-value area to cover in the coming weeks.
- Seeded entries were verified for liveness and relevance, not personally road-tested. Entries will be pruned as they get real use. The "someone used it" bar in [CONTRIBUTING.md](CONTRIBUTING.md) applies from W31 onward.
