# beehiiv/agents

Official beehiiv skills for Claude Code, Cursor, and Codex.

## Install

### Claude Code and Cursor

```
/plugin marketplace add beehiiv/agents
/plugin install beehiiv@beehiiv
```

### Codex

Add to `~/.codex/config.toml`:

```toml
[mcp_servers.beehiiv]
url = "https://mcp.beehiiv.com/mcp"
enabled = true
```

Or clone this repo and trust it — `.codex/config.toml` registers the server automatically.
