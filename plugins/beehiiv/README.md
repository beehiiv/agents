# beehiiv

Connect Claude to your beehiiv workspace. This plugin bundles the hosted beehiiv MCP server with skills for the jobs publishers ask for most.

## Skills

- **start-here:** where you are up to and the one task to do first, when you are not sure where to begin.
- **onboarding:** an audit of a new publication, a checklist of what is missing, and setup of the items you pick.
- **edit-post:** tighten, rewrite, or repurpose a post in your own voice, or turn notes into a new draft.
- **build-segment:** describe an audience in plain language and get a segment with its member count.
- **performance-report:** which posts and subject lines worked, why, and what to write next.
- **upgrade-campaign:** a segment of engaged free readers plus a draft email sequence that invites them to upgrade.
- **revenue-report:** earnings for a period by source, with ad network detail by advertiser.
- **unsubscribe-spikes:** when you lost readers, which post caused it, and what to do differently.
- **media-kit:** a sponsor-ready one-pager built from your real audience and engagement numbers.
- **automation-dropoff:** where readers disengage in a welcome series or other automation, and why.

The skills create drafts only. Sending a post and turning on an automation stay human actions in beehiiv.

## How it connects

The plugin connects to `https://mcp.beehiiv.com/mcp` over Streamable HTTP. Sign in with OAuth 2.1; there is no API key to store. Every call runs against your own beehiiv account with your own permissions, using the `read` and `write` scopes. Read tools work on every plan, and write tools need a paid plan.

The plugin runs no local code. It contacts only `mcp.beehiiv.com` and the beehiiv sign-in page.

Learn more at https://www.beehiiv.com/features/mcp.
