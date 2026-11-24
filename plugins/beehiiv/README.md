# beehiiv

Connect Claude to your beehiiv workspace. This plugin bundles the hosted beehiiv MCP server with skills for the jobs publishers ask for most.

## Skills

- **start-here:** where you are up to and the one task to do first, when you are not sure where to begin.
- **onboarding:** an audit of a new publication, a checklist of what is missing, and setup of the items you pick.
- **draft-post:** turn notes, a transcript, or an outline into a new draft in your own voice.
- **edit-post:** tighten, rewrite, or repurpose an existing post in your own voice.
- **pre-send-check:** check a drafted post before it goes out, and send a test copy only to an address you confirm.
- **build-segment:** describe an audience in plain language and get a segment with its member count.
- **performance-report:** which posts, subject lines and links worked, why, and what to write next.
- **revenue-report:** earnings for a period by source, with ad network detail by advertiser.
- **media-kit:** a sponsor-ready one-pager built from your real audience and engagement numbers.
- **unsubscribe-spikes:** when you lost readers, which post caused it, and what to do differently.
- **automation-dropoff:** where readers disengage in a welcome series or other automation, and why.
- **upgrade-campaign:** a segment of engaged free readers plus a draft email sequence that invites them to upgrade.
- **win-back-inactive:** a segment of readers who stopped opening plus a draft win-back sequence, left inactive.
- **newsletter-advisor:** grow your list around the newsletter: promo posts for an issue, a lead magnet, a welcome email, newsletter swaps or a first product.
- **brand-newsletter:** set the post theme, post template theme, and footer to match the publication's brand colours and fonts.
- **subscribe-form:** create and style a subscribe form for the website or as an external link.
- **image-alt-text:** write alt text and titles for images in your media library that are blank or only a file name.
- **design-website:** a distinctive website look that fits your newsletter, applied to the draft site for you to preview and approve before you publish.
- **edit-website:** add or change website pages and site sections, such as the about page or the footer, without changing the design.
- **audit-website:** a read-only scored audit of your live site for broken links, SEO fields, redirects, navigation and crawlers.

Skills that could email readers create drafts only: sending a post and turning on an automation stay human actions in beehiiv. Skills that change live settings, such as brand-newsletter, ask before they save.

## How it connects

The plugin connects to `https://mcp.beehiiv.com/mcp` over Streamable HTTP. Sign in with OAuth 2.1; there is no API key to store. Every call runs against your own beehiiv account with your own permissions, using the `read` and `write` scopes. Read tools work on every plan, and write tools need a paid plan.

The plugin runs no local code. It contacts only `mcp.beehiiv.com` and the beehiiv sign-in page.

Learn more at https://www.beehiiv.com/features/mcp.
