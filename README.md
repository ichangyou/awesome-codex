# Awesome Codex [![Awesome](https://awesome.re/badge.svg)](https://awesome.re)

**English** | [简体中文](README.zh-CN.md)

> A curated list of tools, skills, MCP servers, AGENTS.md patterns, and resources for OpenAI Codex.

[Codex](https://learn.chatgpt.com/docs/codex/overview) is OpenAI's agentic coding agent — a terminal CLI, an IDE extension, and a cloud environment that share the same agent. This list focuses on the **community ecosystem** around it, plus the official docs worth bookmarking.

**What makes this list different:** it is updated every week, and entries are kept alive. Dead links get removed, not archived. If a section stops being useful, it gets deleted. See [OPERATIONS.md](OPERATIONS.md) for the maintenance contract.

**Legend:** `(Official)` by OpenAI · `(Chinese)` Chinese-language resource · `(Paid)` paid or freemium · everything else is community/open source.

## Contents

- [Official Resources](#official-resources)
- [Getting Started](#getting-started)
- [AGENTS.md](#agentsmd)
- [Configuration](#configuration)
- [Skills](#skills)
- [Plugins](#plugins)
- [MCP Servers](#mcp-servers)
- [Hooks & Automation](#hooks--automation)
- [Codex SDK & Headless](#codex-sdk--headless)
- [IDE & Editor Integrations](#ide--editor-integrations)
- [Cloud & Code Review](#cloud--code-review)
- [Multi-Agent & Orchestration](#multi-agent--orchestration)
- [Clients & Remote Access](#clients--remote-access)
- [Tools & Utilities](#tools--utilities)
- [Chinese Resources](#chinese-resources)
- [Related Awesome Lists](#related-awesome-lists)
- [Community](#community)
- [Contributing](#contributing)

---

## Official Resources

- [openai/codex](https://github.com/openai/codex) — The Codex CLI itself. Rust, Apache-2.0, developed in the open. `(Official)`
- [Codex Documentation](https://learn.chatgpt.com/docs/codex/overview) — Entry point covering CLI, IDE, and cloud surfaces. `(Official)`
- [Codex Changelog](https://learn.chatgpt.com/docs/changelog) — Release notes. Codex ships fast; this is the single highest-value page to check weekly. `(Official)`
- [Codex CLI Reference](https://learn.chatgpt.com/docs/codex/cli) — Commands, flags, and terminal workflow. `(Official)`
- [Security & Approvals](https://learn.chatgpt.com/docs/agent-approvals-security) — Sandbox modes and the approval model. Read this before granting write access. `(Official)`
- [Prompting Guide](https://learn.chatgpt.com/docs/prompting) — OpenAI's own guidance on prompting Codex. `(Official)`
- [openai/skills](https://github.com/openai/skills) — Official skills catalog for Codex. `(Official)`

## Getting Started

- [Quickstart](https://learn.chatgpt.com/docs/quickstart) — Install, sign in, and run the first task. `(Official)`
- [openai/codex — Releases](https://github.com/openai/codex/releases) — Prebuilt binaries and per-release notes. `(Official)`
- [openai/codex — Discussions](https://github.com/openai/codex/discussions) — Where the maintainers answer questions and the community posts ecosystem projects. `(Official)`

## AGENTS.md

> `AGENTS.md` is the file Codex reads before doing any work — the equivalent of a README written for the agent. It layers: `~/.codex/AGENTS.md` (global) → repo root → nested directories.

- [AGENTS.md — Official Docs](https://learn.chatgpt.com/docs/agent-configuration/agents-md) — How Codex discovers and layers instruction files. `(Official)`
- [agents.md](https://agents.md/) — The open format spec, shared across Codex, Cursor, Jules, and others.
- [agentsmd/agents.md](https://github.com/agentsmd/agents.md) — Source repo for the spec and the site.
- [codex/docs/agents_md.md](https://github.com/openai/codex/blob/main/docs/agents_md.md) — The in-repo version of the docs, usually ahead of the website. `(Official)`
- [openai/codex — AGENTS.md](https://github.com/openai/codex/blob/main/AGENTS.md) — The Codex team's own AGENTS.md. The best available reference example. `(Official)`
- [Ischca/awesome-agents-md](https://github.com/Ischca/awesome-agents-md) — Collection of real-world AGENTS.md files and templates.
- [ciembor/agent-rules-books](https://github.com/ciembor/agent-rules-books) — AGENTS.md rulesets derived from Clean Code and similar books.

## Configuration

- [Config File Reference](https://learn.chatgpt.com/docs/config-file/config-basic) — `~/.codex/config.toml`: models, approval policy, sandbox, MCP servers, profiles. `(Official)`
- [Codex Models](https://learn.chatgpt.com/docs/models) — Choose models and reasoning effort in interactive and non-interactive Codex sessions. `(Official)`
- [Auto-review](https://learn.chatgpt.com/docs/sandboxing/auto-review) — Routes sandbox-boundary approval requests to a separate reviewer agent without expanding the active sandbox or permission policy. `(Official)`
- [Codex Rules: Global Instructions, AGENTS.md, and the Mac App](https://kirill-markin.com/articles/codex-rules-for-ai/) — Walkthrough of how the instruction layers actually resolve in practice.
- [farion1231/cc-switch](https://github.com/farion1231/cc-switch) — Cross-platform desktop app for switching provider/account configs across Codex, Claude Code, and others.

## Skills

> Skills package reusable instructions and scripts that Codex can load on demand.

- [Build Skills](https://learn.chatgpt.com/docs/build-skills) — Official guide to authoring skills. `(Official)`
- [openai/skills](https://github.com/openai/skills) — OpenAI's skills catalog. Start here before writing your own. `(Official)`
- [Record & Replay](https://learn.chatgpt.com/docs/extend/record-and-replay) — Turns a demonstrated macOS workflow into a reusable Skill; it requires Computer Use and is not available in every region. `(Official)`
- [composio-community/awesome-codex-skills](https://github.com/composio-community/awesome-codex-skills) — Curated practical skills for the Codex CLI and API.
- [VoltAgent/awesome-agent-skills](https://github.com/VoltAgent/awesome-agent-skills) — Large cross-harness skill collection; Codex-compatible subset is substantial.
- [Nutlope/hallmark](https://github.com/Nutlope/hallmark) — Design skill that pushes generated UI away from generic AI-template output. Works with Codex.
- [microsoft/skills](https://github.com/microsoft/skills) — Skills, MCP servers, and AGENTS.md files for grounding coding agents in Microsoft SDKs.

## Plugins

> Plugins package reusable Codex capabilities for installation and sharing.

- [Plugins](https://learn.chatgpt.com/docs/plugins) — Browse, install, and use reusable capability bundles in the Codex CLI and supported ChatGPT surfaces. `(Official)`
- [Build Plugins](https://learn.chatgpt.com/docs/build-plugins) — Package skills and MCP servers into installable bundles, then test them through a local marketplace. `(Official)`
- [Skills & Plugins](https://learn.chatgpt.com/docs/skills-and-plugins) — Decide when a repeatable workflow should remain a skill and when it should become a shareable plugin. `(Official)`
- [MARGINAL](https://github.com/SignalLayerLabs/Marginal) — Local-first Codex runtime governor that observes repeated tool work in Shadow Mode and gates narrow enforcement on verified evidence, explicit consent, and integrity checks.

## MCP Servers

> Codex speaks the Model Context Protocol, so most MCP servers work without Codex-specific glue.

- [MCP in Codex](https://learn.chatgpt.com/docs/extend/mcp) — How to register MCP servers in `config.toml`. `(Official)`
- [Model Context Protocol](https://modelcontextprotocol.io) — Protocol spec and SDKs.
- [modelcontextprotocol/servers](https://github.com/modelcontextprotocol/servers) — Reference server implementations.
- [grab/cursor-talk-to-figma-mcp](https://github.com/grab/cursor-talk-to-figma-mcp) — Read and write Figma from Codex.
- [CodeBendKit/codeseek](https://github.com/CodeBendKit/codeseek) — Rust code-intelligence CLI that builds call graphs and semantic search for coding agents.
- [PleasePrompto/notebooklm-mcp](https://github.com/PleasePrompto/notebooklm-mcp) — Lets Codex research documentation through NotebookLM.
- [rebel0789/codexpro](https://github.com/rebel0789/codexpro) — Uses ChatGPT Developer Mode as a local coding agent for your repo over MCP.

## Hooks & Automation

- [Hooks](https://learn.chatgpt.com/docs/hooks) — Run commands on Codex lifecycle events. `(Official)`
- [openai/codex-action](https://github.com/openai/codex-action) — Run `codex exec` in GitHub Actions with explicit API credentials and permission profiles. `(Official)`
- [caliber-ai-org/ai-setup](https://github.com/caliber-ai-org/ai-setup) — Syncs agent skills, MCP servers, and config across machines with one command.
- [mksglu/context-mode](https://github.com/mksglu/context-mode) — Sandboxes tool output to cut context usage; supports Codex.

## Codex SDK & Headless

- [Codex SDK](https://learn.chatgpt.com/docs/codex-sdk) — Embed Codex in your own applications and pipelines. `(Official)`
- [Codex App Server](https://learn.chatgpt.com/docs/app-server) — Exposes authentication, conversation history, approvals, and streamed agent events over JSON-RPC for building rich Codex clients. `(Official)`
- [`codex exec` — Non-interactive Mode](https://learn.chatgpt.com/docs/non-interactive-mode) — Run Codex in scripts and CI with pipe-friendly output and explicit sandbox settings. `(Official)`

## IDE & Editor Integrations

- [Codex IDE Extension](https://learn.chatgpt.com/docs/codex/ide) — Official docs for the editor integration. `(Official)`
- [ChatGPT — VS Code Marketplace](https://marketplace.visualstudio.com/items?itemName=openai.chatgpt) — The official extension for VS Code, Cursor, and Windsurf. `(Official)`

## Cloud & Code Review

- [Codex Cloud](https://learn.chatgpt.com/docs/cloud) — Delegate tasks to cloud containers that open PRs. `(Official)`
- [Code Review](https://learn.chatgpt.com/docs/code-review) — Codex reviewing pull requests. `(Official)`

## Multi-Agent & Orchestration

- [Subagents](https://learn.chatgpt.com/docs/agent-configuration/subagents) — Run independent work in parallel and define specialized agents with task-specific models and instructions. `(Official)`
- [Git Worktrees](https://learn.chatgpt.com/docs/environments/git-worktrees) — Isolates parallel Codex desktop chats in managed Git worktrees so they can work in the same repository without interfering with each other. `(Official)`
- [wshobson/agents](https://github.com/wshobson/agents) — Multi-harness agentic plugin marketplace covering Codex CLI, Claude Code, Cursor, and more.
- [AgentWrapper/agent-orchestrator](https://github.com/AgentWrapper/agent-orchestrator) — Agent IDE for managing fleets of coding agents.
- [code-yeongyu/oh-my-openagent](https://github.com/code-yeongyu/oh-my-openagent) — Opinionated harness (`omo` / `lazycodex`) built for long, complex agent runs.
- [ruvnet/ruflo](https://github.com/ruvnet/ruflo) — Meta-harness for coordinating multi-agent swarms.

## Clients & Remote Access

- [slopus/happy](https://github.com/slopus/happy) — Mobile and web client for Codex and Claude Code, with realtime voice and end-to-end encryption.
- [siteboon/claudecodeui](https://github.com/siteboon/claudecodeui) — Web and mobile UI for driving Codex, Claude Code, Cursor CLI, and OpenCode.
- [chenhg5/cc-connect](https://github.com/chenhg5/cc-connect) — Bridges local coding agents to messaging platforms so you can drive them from chat.
- [iOfficeAI/AionUi](https://github.com/iOfficeAI/AionUi) — Local, open-source desktop app for running Codex and other agents continuously.

## Tools & Utilities

- [Graphify-Labs/graphify](https://github.com/Graphify-Labs/graphify) — Turns a codebase plus its docs, schemas, and PDFs into a queryable knowledge graph for agents.
- [colbymchenry/codegraph](https://github.com/colbymchenry/codegraph) — Pre-indexed code knowledge graph that auto-syncs on change; supports Codex.
- [OthmanAdi/planning-with-files](https://github.com/OthmanAdi/planning-with-files) — File-based persistent planning for long-running agent tasks.
- [nexu-io/open-design](https://github.com/nexu-io/open-design) — Local-first desktop app that gives a coding agent a design surface to work against.
- [google-labs-code/design.md](https://github.com/google-labs-code/design.md) — `DESIGN.md` spec: describes a visual identity to coding agents, the way AGENTS.md describes a codebase.

## Chinese Resources

- [liyupi/ai-guide](https://github.com/liyupi/ai-guide) — 程序员鱼皮的 AI 资源大全与 Vibe Coding 教程，含 Codex 在内的多种 agent 用法。 `(Chinese)`
- [jlcodes99/cockpit-tools](https://github.com/jlcodes99/cockpit-tools) — 通用 AI IDE 账号管理工具，支持 Codex、Copilot、Cursor 等。 `(Chinese)`
- [Wei-Shaw/claude-relay-service](https://github.com/Wei-Shaw/claude-relay-service) — 自建中转服务，统一接入 Claude、OpenAI 等订阅，供本地 agent 使用。 `(Chinese)`

## Related Awesome Lists

> Listed honestly, including the ones that compete with this one. Cross-check them — they cover different slices.

- [hashgraph-online/awesome-codex-plugins](https://github.com/hashgraph-online/awesome-codex-plugins) — Codex plugins, skills, and a plugin registry. The most actively maintained alternative.
- [RoggeOhta/awesome-codex-cli](https://github.com/RoggeOhta/awesome-codex-cli) — 150+ tools across 20 categories. Broadest coverage, but has not been updated since April 2026.
- [milisp/awesome-codex-cli](https://github.com/milisp/awesome-codex-cli) — Resources, tools, and tutorials for the Codex CLI.
- [Ischca/awesome-agents-md](https://github.com/Ischca/awesome-agents-md) — AGENTS.md-focused.
- [awesomelistsio/awesome-openai](https://github.com/awesomelistsio/awesome-openai) — Broader OpenAI ecosystem, Codex is one slice.

## Community

- [openai/codex Discussions](https://github.com/openai/codex/discussions) — The primary community venue. `(Official)`
- [openai/codex Issues](https://github.com/openai/codex/issues) — Bug reports and feature requests; search before filing. `(Official)`

## Contributing

Pull requests are welcome. Read [CONTRIBUTING.md](CONTRIBUTING.md) first — the quality bar is stricter than "it's a link about Codex."

Weekly changes are recorded in [CHANGELOG.md](CHANGELOG.md).

## License

[CC0-1.0](LICENSE) — public domain.
