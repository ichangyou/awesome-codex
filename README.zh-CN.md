# Awesome Codex [![Awesome](https://awesome.re/badge.svg)](https://awesome.re)

[English](README.md) | **简体中文**

> OpenAI Codex 的精选资源清单：工具、Skills、MCP 服务器、AGENTS.md 实践。

[Codex](https://learn.chatgpt.com/docs/codex/overview) 是 OpenAI 的编码 agent，同一个 agent 有三种形态：终端 CLI、IDE 扩展、云端环境。本清单聚焦围绕它的**社区生态**，外加值得长期收藏的官方文档。

**这份清单和别的不一样在哪：**每周更新，条目保持存活。链接死了就删，不做归档。分区没用了就砍掉。维护约定见 [OPERATIONS.md](OPERATIONS.md)。

**标记说明：**`(Official)` OpenAI 官方 · `(Chinese)` 中文资源 · `(Paid)` 付费或 freemium · 其余为社区/开源项目。

## 目录

- [官方资源](#官方资源)
- [快速上手](#快速上手)
- [AGENTS.md](#agentsmd)
- [配置](#配置)
- [Skills](#skills)
- [Plugins](#plugins)
- [MCP 服务器](#mcp-服务器)
- [Hooks 与自动化](#hooks-与自动化)
- [Codex SDK 与无头模式](#codex-sdk-与无头模式)
- [IDE 与编辑器集成](#ide-与编辑器集成)
- [云端与代码评审](#云端与代码评审)
- [多 Agent 与编排](#多-agent-与编排)
- [客户端与远程访问](#客户端与远程访问)
- [工具与实用程序](#工具与实用程序)
- [中文资源](#中文资源)
- [相关 Awesome 清单](#相关-awesome-清单)
- [社区](#社区)
- [参与贡献](#参与贡献)

---

## 官方资源

- [openai/codex](https://github.com/openai/codex) — Codex CLI 本体。Rust 编写，Apache-2.0，公开开发。 `(Official)`
- [Codex 文档](https://learn.chatgpt.com/docs/codex/overview) — 覆盖 CLI、IDE、云端三种形态的入口。 `(Official)`
- [Codex Changelog](https://learn.chatgpt.com/docs/changelog) — 更新日志。Codex 迭代很快，这是每周最值得看的一页。 `(Official)`
- [CLI 参考](https://learn.chatgpt.com/docs/codex/cli) — 命令、参数、终端工作流。 `(Official)`
- [安全与审批机制](https://learn.chatgpt.com/docs/agent-approvals-security) — 沙箱模式与审批模型。给写权限之前先读这篇。 `(Official)`
- [Prompting 指南](https://learn.chatgpt.com/docs/prompting) — OpenAI 官方给出的 Codex prompt 写法。 `(Official)`
- [openai/skills](https://github.com/openai/skills) — Codex 官方 Skills 目录。 `(Official)`

## 快速上手

- [Quickstart](https://learn.chatgpt.com/docs/quickstart) — 安装、登录、跑通第一个任务。 `(Official)`
- [openai/codex Releases](https://github.com/openai/codex/releases) — 预编译二进制与逐版本更新说明。 `(Official)`
- [openai/codex Discussions](https://github.com/openai/codex/discussions) — 维护者答疑、社区项目发布的地方。 `(Official)`
- [Linux 版 ChatGPT 桌面应用](https://learn.chatgpt.com/docs/linux/linux-app) — 在支持的 Ubuntu、Debian 和 Fedora 发行版上安装预览版桌面应用，处理本地文件并使用 Codex。 `(Official)`
- [从其他 Agent 导入](https://learn.chatgpt.com/docs/import) — 将 Claude Code 或 Cursor 中受支持的配置、Skills、Plugins、项目和近期工作导入 ChatGPT 或 Codex。 `(Official)`

## AGENTS.md

> `AGENTS.md` 是 Codex 动手前必读的文件，相当于写给 agent 看的 README。它按层级叠加：`~/.codex/AGENTS.md`（全局）→ 仓库根目录 → 子目录。

- [AGENTS.md 官方文档](https://learn.chatgpt.com/docs/agent-configuration/agents-md) — Codex 如何发现并叠加这些指令文件。 `(Official)`
- [agents.md](https://agents.md/) — 开放格式规范，Codex、Cursor、Jules 等共用。
- [agentsmd/agents.md](https://github.com/agentsmd/agents.md) — 规范与站点的源仓库。
- [codex/docs/agents_md.md](https://github.com/openai/codex/blob/main/docs/agents_md.md) — 仓库内版本，通常比官网更新更快。 `(Official)`
- [openai/codex 的 AGENTS.md](https://github.com/openai/codex/blob/main/AGENTS.md) — Codex 团队自己写的 AGENTS.md，是目前最好的参考样本。 `(Official)`
- [Ischca/awesome-agents-md](https://github.com/Ischca/awesome-agents-md) — 真实项目的 AGENTS.md 与模板合集。
- [ciembor/agent-rules-books](https://github.com/ciembor/agent-rules-books) — 从《Clean Code》等书提炼的 AGENTS.md 规则集。

## 配置

- [配置文件参考](https://learn.chatgpt.com/docs/config-file/config-basic) — `~/.codex/config.toml`：模型、审批策略、沙箱、MCP 服务器、profile。 `(Official)`
- [Codex 模型](https://learn.chatgpt.com/docs/models) — 在 Codex 的交互与非交互模式中选择模型和推理强度。 `(Official)`
- [Auto-review](https://learn.chatgpt.com/docs/sandboxing/auto-review) — 在不扩大现有沙箱或权限策略的前提下，将越过沙箱边界的审批请求交给独立 reviewer agent。 `(Official)`
- [CLI 自定义](https://learn.chatgpt.com/docs/cli-customization) — 自定义 Codex 终端界面、编辑器、补全和键盘快捷键。 `(Official)`
- [Codex Rules: Global Instructions, AGENTS.md, and Mac App](https://kirill-markin.com/articles/codex-rules-for-ai/) — 实战角度讲清各层指令的生效顺序。
- [farion1231/cc-switch](https://github.com/farion1231/cc-switch) — 跨平台桌面端配置/账号切换工具，支持 Codex、Claude Code 等。

## Skills

> Skills 把可复用的指令和脚本打包，让 Codex 按需加载。

- [编写 Skills](https://learn.chatgpt.com/docs/build-skills) — 官方 Skill 编写指南。 `(Official)`
- [openai/skills](https://github.com/openai/skills) — OpenAI 的 Skills 目录。自己写之前先来这里翻。 `(Official)`
- [Record & Replay](https://learn.chatgpt.com/docs/extend/record-and-replay) — 把演示过的 macOS 工作流转成可复用 Skill；依赖 Computer Use，且仅在部分地区可用。 `(Official)`
- [Suede Creator Skills](https://github.com/JasonColapietro/suede-creator-skills) — 面向 Codex 与 Claude Code 的 MIT 开源 Skills 合集，覆盖多 Agent 编排、工作节点集群、代码审查与发布门槛、AI 评测、产品、设计和增长。
- [composio-community/awesome-codex-skills](https://github.com/composio-community/awesome-codex-skills) — 面向 Codex CLI 和 API 的实用 Skill 精选。
- [VoltAgent/awesome-agent-skills](https://github.com/VoltAgent/awesome-agent-skills) — 跨 harness 的大型 Skill 合集，其中兼容 Codex 的部分相当可观。
- [Nutlope/hallmark](https://github.com/Nutlope/hallmark) — 让生成的 UI 摆脱"AI 模板味"的设计 Skill，支持 Codex。
- [microsoft/skills](https://github.com/microsoft/skills) — 微软给自家 SDK 提供的 Skills、MCP 服务器与 AGENTS.md。

## Plugins

> Plugins 把可复用的 Codex 能力打包，供安装和分享。

- [Plugins](https://learn.chatgpt.com/docs/plugins) — 在 Codex CLI 和支持的 ChatGPT 界面中浏览、安装、使用可复用能力包。 `(Official)`
- [构建 Plugins](https://learn.chatgpt.com/docs/build-plugins) — 把 Skills 和 MCP 服务器打包为可安装的能力，并通过本地 marketplace 测试。 `(Official)`
- [Skills 与 Plugins](https://learn.chatgpt.com/docs/skills-and-plugins) — 判断一个重复工作流应该保留为 Skill，还是做成可分享的 Plugin。 `(Official)`
- [nowork-studio/notfair-plugin](https://github.com/nowork-studio/notfair-plugin) — 面向 Codex 的营销插件，包含 45 个 SEO、GEO、付费媒体与分析工作流，并通过一个托管 MCP 连接处理实时账户任务。
- [MARGINAL](https://github.com/SignalLayerLabs/Marginal) — 本地优先的 Codex 运行时治理插件；先以 Shadow Mode 观察重复工具调用，仅在验证证据、明确同意和完整性检查通过后启用窄范围拦截。
- [Focus Field](https://github.com/qq783840671-png/recursive-center-field-theory) — 用于定位当前场域、生成主导问题，并在新证据出现时只重开受影响结论的 Codex Plugin 与 Skill。

## MCP 服务器

> Codex 原生支持 Model Context Protocol，绝大多数 MCP 服务器不需要 Codex 专属适配就能用。

- [Codex 中的 MCP](https://learn.chatgpt.com/docs/extend/mcp) — 如何在 `config.toml` 里注册 MCP 服务器。 `(Official)`
- [Model Context Protocol](https://modelcontextprotocol.io) — 协议规范与 SDK。
- [modelcontextprotocol/servers](https://github.com/modelcontextprotocol/servers) — 官方参考实现。
- [grab/cursor-talk-to-figma-mcp](https://github.com/grab/cursor-talk-to-figma-mcp) — 让 Codex 读写 Figma。
- [CodeBendKit/codeseek](https://github.com/CodeBendKit/codeseek) — Rust 写的代码情报 CLI，为 agent 构建调用图和语义检索。
- [PleasePrompto/notebooklm-mcp](https://github.com/PleasePrompto/notebooklm-mcp) — 让 Codex 通过 NotebookLM 查文档。
- [rebel0789/codexpro](https://github.com/rebel0789/codexpro) — 通过 MCP 把 ChatGPT Developer Mode 当作本地编码 agent 使用。

## Hooks 与自动化

- [Hooks](https://learn.chatgpt.com/docs/hooks) — 在 Codex 生命周期事件上挂命令。 `(Official)`
- [openai/codex-action](https://github.com/openai/codex-action) — 使用明确的 API 凭据和权限 profile，在 GitHub Actions 中运行 `codex exec`。 `(Official)`
- [caliber-ai-org/ai-setup](https://github.com/caliber-ai-org/ai-setup) — 一条命令同步多机之间的 Skills、MCP 与配置。
- [mksglu/context-mode](https://github.com/mksglu/context-mode) — 沙箱化工具输出以压缩上下文占用，支持 Codex。

## Codex SDK 与无头模式

- [Codex SDK](https://learn.chatgpt.com/docs/codex-sdk) — 把 Codex 嵌进自己的应用和流水线。 `(Official)`
- [Codex App Server](https://learn.chatgpt.com/docs/app-server) — 通过 JSON-RPC 暴露认证、会话历史、审批与流式 agent 事件，用于构建深度集成的 Codex 客户端。 `(Official)`
- [`codex exec` 非交互模式](https://learn.chatgpt.com/docs/non-interactive-mode) — 在脚本和 CI 中运行 Codex，支持管道友好的输出和显式沙箱设置。 `(Official)`

## IDE 与编辑器集成

- [Codex IDE 扩展](https://learn.chatgpt.com/docs/codex/ide) — 编辑器集成官方文档。 `(Official)`
- [ChatGPT — VS Code 插件市场](https://marketplace.visualstudio.com/items?itemName=openai.chatgpt) — VS Code / Cursor / Windsurf 通用的官方扩展。 `(Official)`
- [集成终端](https://learn.chatgpt.com/docs/integrated-terminal) — 无需离开 Codex 对话即可运行命令并查看输出。 `(Official)`

## 云端与代码评审

- [Codex Cloud](https://learn.chatgpt.com/docs/cloud) — 把任务丢给云端容器执行并直接开 PR。 `(Official)`
- [Code Review](https://learn.chatgpt.com/docs/code-review) — 用 Codex 评审 PR。 `(Official)`
- [用 Codex 评审 GitHub Pull Request](https://learn.chatgpt.com/docs/third-party/github) — 配置 GitHub Code Review，用 `@codex review` 发起评审，并在 `AGENTS.md` 中编写自定义评审规则。 `(Official)`

## 多 Agent 与编排

- [Subagents](https://learn.chatgpt.com/docs/agent-configuration/subagents) — 并行执行相互独立的工作，并用任务专属模型和指令定义特化 Agent。 `(Official)`
- [Git Worktrees](https://learn.chatgpt.com/docs/environments/git-worktrees) — 在托管的 Git worktree 中隔离并行的 Codex 桌面端会话，使它们能在同一仓库内工作而不互相干扰。 `(Official)`
- [本地环境](https://learn.chatgpt.com/docs/environments/local-environment) — 为 Codex worktree 配置常用操作和初始化脚本。 `(Official)`
- [长时间运行的工作](https://learn.chatgpt.com/docs/long-running-work) — 用清晰的结果和完成标准让多步骤工作保持聚焦。 `(Official)`
- [wshobson/agents](https://github.com/wshobson/agents) — 跨 harness 的 agent 插件市场，覆盖 Codex CLI、Claude Code、Cursor 等。
- [AgentWrapper/agent-orchestrator](https://github.com/AgentWrapper/agent-orchestrator) — 管理 agent 集群的 Agent IDE。
- [code-yeongyu/oh-my-openagent](https://github.com/code-yeongyu/oh-my-openagent) — 为长时间复杂任务设计的 harness（`omo` / `lazycodex`）。
- [ruvnet/ruflo](https://github.com/ruvnet/ruflo) — 多 agent 集群协调的 meta-harness。

## 客户端与远程访问

- [slopus/happy](https://github.com/slopus/happy) — Codex 与 Claude Code 的移动端/网页客户端，支持实时语音和端到端加密。
- [siteboon/claudecodeui](https://github.com/siteboon/claudecodeui) — 在网页和手机上驱动 Codex、Claude Code、Cursor CLI、OpenCode。
- [chenhg5/cc-connect](https://github.com/chenhg5/cc-connect) — 把本地编码 agent 接到 IM 平台，用聊天窗口指挥。
- [iOfficeAI/AionUi](https://github.com/iOfficeAI/AionUi) — 本地开源桌面应用，可长时间挂着跑 Codex 等 agent。

## 工具与实用程序

- [Graphify-Labs/graphify](https://github.com/Graphify-Labs/graphify) — 把代码库连同文档、schema、PDF 一起转成可查询的知识图谱喂给 agent。
- [colbymchenry/codegraph](https://github.com/colbymchenry/codegraph) — 预索引的代码知识图谱，随代码变更自动同步，支持 Codex。
- [OthmanAdi/planning-with-files](https://github.com/OthmanAdi/planning-with-files) — 基于文件的持久化计划，用于长时间 agent 任务。
- [Skill Sunset](https://github.com/ooocooc/open-skill-sunset) — 用于检查过期 AGENTS.md、CLAUDE.md 与通用 SKILL.md 指令的本地只读审计工具。
- [nexu-io/open-design](https://github.com/nexu-io/open-design) — 本地优先的桌面应用，给编码 agent 一个可对照的设计面。
- [google-labs-code/design.md](https://github.com/google-labs-code/design.md) — `DESIGN.md` 规范：像 AGENTS.md 描述代码库那样，向 agent 描述视觉规范。

## 中文资源

- [liyupi/ai-guide](https://github.com/liyupi/ai-guide) — 程序员鱼皮的 AI 资源大全与 Vibe Coding 教程，含 Codex 在内的多种 agent 用法。 `(Chinese)`
- [jlcodes99/cockpit-tools](https://github.com/jlcodes99/cockpit-tools) — 通用 AI IDE 账号管理工具，支持 Codex、Copilot、Cursor 等。 `(Chinese)`
- [Wei-Shaw/claude-relay-service](https://github.com/Wei-Shaw/claude-relay-service) — 自建中转服务，统一接入 Claude、OpenAI 等订阅供本地 agent 使用。 `(Chinese)`

## 相关 Awesome 清单

> 如实列出，包括和本清单竞争的那几个。它们覆盖的切面不同，值得交叉查阅。

- [hashgraph-online/awesome-codex-plugins](https://github.com/hashgraph-online/awesome-codex-plugins) — Codex 插件、Skills 与插件注册表。维护最勤的替代品。
- [RoggeOhta/awesome-codex-cli](https://github.com/RoggeOhta/awesome-codex-cli) — 20 个分类下 150+ 工具。覆盖面最广，但自 2026 年 4 月起未更新。
- [milisp/awesome-codex-cli](https://github.com/milisp/awesome-codex-cli) — Codex CLI 的资源、工具与教程。
- [Ischca/awesome-agents-md](https://github.com/Ischca/awesome-agents-md) — 专注 AGENTS.md。
- [awesomelistsio/awesome-openai](https://github.com/awesomelistsio/awesome-openai) — 更宽的 OpenAI 生态，Codex 只是其中一块。

## 社区

- [openai/codex Discussions](https://github.com/openai/codex/discussions) — 主要社区阵地。 `(Official)`
- [openai/codex Issues](https://github.com/openai/codex/issues) — Bug 与需求，提之前先搜。 `(Official)`

## 参与贡献

欢迎 PR，先读 [CONTRIBUTING.md](CONTRIBUTING.md)——收录标准比"这是个和 Codex 有关的链接"要严。

每周变更记录在 [CHANGELOG.md](CHANGELOG.md)。

## 许可

[CC0-1.0](LICENSE)，公共领域。
