# beehiiv/agents

Official beehiiv tools for AI agents, built on the beehiiv MCP server.

This repository holds the plugin manifests for Claude Code, Grok Build, Gemini CLI, Cursor and
Codex, plus the official MCP registry entry. They all point at the same hosted server at
`https://mcp.beehiiv.com/mcp`. Nothing runs on your machine.

## What you can do

Once connected, the agent works against your beehiiv workspace directly:

- **Posts.** Draft, edit and duplicate posts and post templates. Read post content, stats,
  clicks, comments and per-subscriber engagement. Publishing and sending stay human actions in
  beehiiv, so the agent prepares the post and you press send.
- **Communities.** Create channels, publish and pin posts, moderate reports, manage members and
  roles, send invites and direct messages, read community metrics.
- **Podcasts.** Create shows and episodes, upload audio, schedule episodes, read transcripts
  and episode stats.
- **Automations.** Build journeys, steps, triggers and automation emails, including A/B
  variants. Activating an automation stays a human action in the editor.
- **Audience.** Manage subscriptions, segments, tags, custom fields, newsletter lists and signup
  flows.
- **Monetisation.** Products, tiers, premium offers, orders, paywalls, the ad network and the
  sponsor network.
- **Growth.** Recommendations, referral programs, polls and surveys.
- **Analytics.** Publication and website analytics, post and podcast stats, poll and survey
  responses, earnings.

The server also documents itself. Ask the agent to call `search_documentation`,
`read_documentation`, or any of the `learn_*` tools, and it fetches current guidance on post
authoring and community authoring rather than guessing.

## Install

### Claude

beehiiv is in the Claude connector directory. Add it from the
[beehiiv connector](https://claude.com/connectors/beehiiv) page, then sign in when prompted.

### ChatGPT

beehiiv is in the shared ChatGPT and Codex plugin directory. Add it from the
[beehiiv plugin](https://chatgpt.com/plugins/plugin_asdk_app_6a999c9511808191affcabcf3962c9d1)
page.

### Claude Code and Cursor

```
/plugin marketplace add beehiiv/agents
/plugin install beehiiv@beehiiv
```

### Grok Build

```bash
grok plugin install beehiiv/agents
```

### Gemini CLI

```bash
gemini extensions install https://github.com/beehiiv/agents
```

### Codex

Run `/plugins`, select **beehiiv**, then choose **Install Plugin**. Codex and ChatGPT share
one plugin directory, so installing in either place covers both.

Or add the server to `~/.codex/config.toml` by hand:

```toml
[mcp_servers.beehiiv]
url = "https://mcp.beehiiv.com/mcp"
enabled = true
```

Cloning this repo and trusting it also works. `.codex/config.toml` registers the server for
sessions inside the repo.

### Any other MCP client

Point it at `https://mcp.beehiiv.com/mcp` over Streamable HTTP. Setup snippets are in your beehiiv
workspace under [Settings → Workspace → MCP](https://app.beehiiv.com/settings/workspace/mcp).

## Authentication

OAuth 2.1. There is no API key to copy and no secret to store in this repo.

On first use your client registers itself automatically (RFC 7591 dynamic client registration) and
opens a browser to beehiiv, where you sign in and grant access. The client receives an access token
and a refresh token scoped to `read` and `write`.

Every tool call is authorised against your own beehiiv permissions. The agent can only reach
publications you can already reach.

## Requirements

- A beehiiv account on a plan that includes MCP access.
- MCP enabled for your workspace. Check
  [Settings → Workspace → MCP](https://app.beehiiv.com/settings/workspace/mcp).

If MCP is off for your workspace, tool calls return a permission error. See
[Getting started with the beehiiv MCP](https://www.beehiiv.com/support/article/39255979546263-how-to-access-the-beehiiv-mcp-to-connect-your-ai-tools)
for the current plan requirements.

Some tool groups are gated separately, so the tools an agent sees depend on your plan and
workspace settings.

## Layout

```
.mcp.json lives at plugins/beehiiv/ and states the server URL once.
Every ecosystem manifest beside it delegates to that file.

.claude-plugin/marketplace.json     point their client at ./plugins/beehiiv
.cursor-plugin/marketplace.json
.grok-plugin/marketplace.json
plugins/beehiiv/.mcp.json           the shared server config
plugins/beehiiv/.claude-plugin/     per-ecosystem plugin manifests
plugins/beehiiv/.cursor-plugin/
plugins/beehiiv/.grok-plugin/
plugins/beehiiv/.codex-plugin/
gemini-extension.json               must sit at the repo root
server.json                         official MCP registry entry
```

Gemini requires its manifest at the absolute repo root and does not support delegating to a shared
file, so the server URL appears there a second time.

## Network endpoints and credentials

Declared for review and for anyone auditing what this plugin reaches:

| Endpoint | Purpose |
|---|---|
| `https://mcp.beehiiv.com/mcp` | The MCP server. All tool calls. |
| `https://mcp.beehiiv.com/.well-known/oauth-protected-resource` | OAuth resource discovery (RFC 9728). |
| `https://mcp.beehiiv.com/.well-known/oauth-authorization-server` | OAuth server metadata (RFC 8414). |
| `https://mcp.beehiiv.com/register` | Dynamic client registration (RFC 7591). |
| `https://mcp.beehiiv.com/authorize` | Starts the sign-in flow. Redirects to `app.beehiiv.com`. |
| `https://mcp.beehiiv.com/token` | Token exchange and refresh. |

Credentials required: a beehiiv account. The plugin requests the `read` and `write` scopes.

This repository ships no executable code beyond `scripts/validate.sh`, no install hooks and no
local processes. The plugins are JSON manifests pointing at a hosted HTTPS endpoint.

## Validate

```bash
./scripts/validate.sh
```

## Licence

MIT. See [LICENSE](LICENSE).
