---
name: edit-website
description: Change the content of existing beehiiv website pages or site-wide sections, such as adding a page, rewriting a section, or fixing navigation or footer copy, without changing the design. Use when someone wants to add or edit a page, change text on their site, update the about page, fix the nav or footer, or add a section.
---

# Edit the website

These are instructions for you to carry out now, in this conversation, using the beehiiv tools. Nothing runs in the background.

Make the publisher's requested content change on the website and leave the design as it is.

1. **Find the site.** List the publication's sites (`list_sites`) and use the live one. Read it with `get_site` and keep the site URL it returns for the report. Check its builder. On the simple `website` builder, page tools cannot read or edit pages. Say so plainly, and leave the page change for the publisher in beehiiv.
2. **Find the page.** List the site's pages (`list_pages`) and match the one the publisher named by name or slug. Ask which page if more than one fits.
3. **Read the rules.** Read the page authoring guide (`learn_page_authoring`) and the site design rules (`learn_site_design`) before any save. Use only the attributes the guide lists. Do not invent attributes, such as `zoomOnHover`, because unknown attributes are rejected.
4. **Read the page.** Read the page body in JSON format (`get_page_content`) so each edit uses the current node ids and content.
5. **Make the smallest change.** Reuse the existing blocks and their styles. For a new page, copy the structure of the site's existing pages. Do not change the design. For a design overhaul, point the publisher to design-website.
6. **Save with the stamp.** Save the change (`save_page_content`) and pass the `content_updated_at` from `get_page_content` on every save. A rejected save means someone edited the page in between: read again and retry once. Never overwrite. If the reply says nothing to update, the edit changed nothing. Stop, do not loop.
7. **Read back and report.** Read the page again (`get_page_content`) and confirm the change is there. List what changed, and tell them to preview the draft in the beehiiv website builder, because the live site does not show it until it is published. Publishing is the publisher's action. Never call publish.
