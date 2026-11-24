---
name: design-website
description: Give a beehiiv website a distinctive look that fits the newsletter's subject, audience, and voice, applied to the draft from a palette and type plan the publisher reviews. Use when someone wants to redesign or restyle their site, make it look less generic, design the homepage, match their brand, or build a landing page look.
---

# Design the website

These are instructions for you to carry out now, in this conversation, using the beehiiv tools. Nothing runs in the background.

Give the publisher's website a look that belongs to their newsletter, applied to the draft for them to review. Nothing goes live until the publisher publishes it.

1. **Find the site.** List the publication's sites (`list_sites`) and use the live one. Check its builder (`get_site`). On the simple `website` builder, page tools cannot read or edit pages. Say so plainly, then change only the theme (`save_site_theme`) and globals (`save_site_global`).
2. **Learn the subject.** Read the newsletter description, the three most recent posts (`list_posts`, then `get_post_content`), and any site URL, logo, or colours the publisher gives. Name the niche, the reader, and the voice in one sentence each. Ask one question if the niche is unclear.
3. **Read the design rules.** Read the site design overview, composition, and directions topics (`learn_site_design`) and the page authoring guide (`learn_page_authoring`) before you plan, and the design references tool if you have it. Those rules always apply; this skill only adds taste on top, so do not restate them. Use only the attributes they allow, because unknown attributes are rejected.
4. **Write the plan.** Give a palette of 4 to 6 named hex values. Give one or two type families with a role for each. Add a layout sketch, 2 or 3 principles, and one bold element. Keep every other element calm. When the publisher names a colour, font, or style, use it exactly: their words win over every rule here.
5. **Check the plan against generic defaults.** Where the publisher left a choice open, revise any part that matches one of these without a reason from the subject: cream background with a serif and terracotta accent; near-black with an acid accent; broadsheet layout with hairline rules and dense columns; identical rounded cards with soft shadows; ALL-CAPS eyebrow labels above every heading; one accented word in a headline; 01, 02, 03 markers on content that is not a sequence; an arrow on every link; fade-in motion on every section. Say what you changed and why.
6. **Apply the plan to the draft.** Save the site theme first (`save_site_theme`), then the navbar or footer if the plan changes them (`save_site_global`). Then change the homepage hero to make the signup the main action (`get_page_content`, then `save_page_content`). Pass the stamp on every save: `updated_at` from `get_site` or `get_site_global` for theme and global saves, and `content_updated_at` from `get_page_content` for page saves. A rejected save means someone edited in between. Read again and retry once. Never overwrite. If the reply says nothing to update, the edit changed nothing. Stop, do not loop.
7. **Read back and summarise.** Read the theme (`get_site`) and the hero (`get_page_content`) again to confirm the values. Give a short summary: the palette, the type choices, and what changed in the draft. Tell them to preview the draft in the beehiiv website builder, because the live site does not show it until it is published. Call it the website builder, never Studio. Ask for changes or approval.
8. **Iterate on the draft.** Apply each requested change the same way as step 6, then read back and summarise again. Never publish. Publishing is the publisher's action.
