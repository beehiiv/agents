---
name: audit-website
description: Run a read-only, scored audit of a beehiiv website for broken or disabled internal links, missing SEO fields, navigation, redirect chains, image alt text and AI crawler visibility. Use when someone asks to audit their website, check site SEO, find broken links on the site, review navigation, or see how the site looks to search engines and AI crawlers.
---

# Audit the website

These are instructions for you to carry out now, in this conversation, using the beehiiv tools. Nothing runs in the background.

Score the live site and list each finding with its page and its fix. This skill never writes to the site, and it never publishes anything.

1. **Find the live site.** List the publication's sites (`list_sites`) and use the live one. Get its builder and details (`get_site`). On the simple `website` builder, page tools cannot read pages. Say so plainly, then audit only what the tools return.
2. **List the pages.** List the site's pages (`list_pages`) and note which are disabled. Read each enabled page's metadata (`get_page`) for its meta title and meta description. Read each page body (`get_page_content`) for its internal links and images.
3. **Check navigation.** Read the navbar and footer links (`get_site_global`). An internal link to a disabled or missing page is broken, unless an active redirect covers it.
4. **Check redirects.** List the redirects (`list_site_redirects`). Treat a link covered by an active redirect as working. Flag a redirect that points to another redirect, because that makes a chain.
5. **Check AI crawlers.** Get the crawler analytics for the last four weeks (`get_crawler_analytics`). Report blocked requests and any top crawled page that returns errors.
6. **Check images.** List images on the pages that have no alt text. Point fixes for media library images to `image-alt-text`.
7. **Score it.** Start at 100. Deduct 10 for each high finding, 5 for each medium and 2 for each low, to a minimum of 0. Show the score and this rule in the report.
8. **Report back.**
   - The score on one line.
   - Findings grouped as High, Medium and Low. Each finding gives its page and its fix.
   - Point each fix to the right skill: `edit-website` for page content and navigation, `design-website` for look and theme, and `image-alt-text` for media library images.
   - A **Limits** line: no external link checks, no live render, no speed tests, no accessibility testing.

Never change a page, a global, a theme or a redirect in this skill. Offer the fix skill instead.
