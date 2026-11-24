---
name: brand-newsletter
description: Set the post theme, post template theme, and footer to match the publication's brand colours and style from a site URL, logo, or colours you provide. Use when someone wants their newsletter emails to look like their brand, or to use specific colours and fonts in their posts.
---

# Brand the newsletter

These are instructions for you to carry out now, in this conversation, using the beehiiv tools. Nothing runs in the background.

Take the publisher's brand and apply it to the publication's post template, post, and footer themes.

1. **Get the current themes.** Read the post theme (`get_post_theme`) and the footer (`get_post_footer`), and read the post template theme as it is now. Note which settings each theme returns. Send only the keys the themes return, because unknown keys are rejected by the API.
2. **Learn the brand.** If the publisher gives a site URL, logo, or colours, extract brand colours and fonts from it, or ask them to name the main colour, accent colour, link colour, and body font. Check that each colour has enough contrast with white and dark text for readability.
3. **Ask before you save.** These settings change how every future post looks, so they are not drafts. Show a table of each setting with its current and proposed value, and save only after the publisher approves.
4. **Update the themes.** Send the approved changes in three separate calls: one for the post template theme (`save_post_template_theme`), one for the post theme (`save_post_theme`), and one for the footer (`save_post_footer`). Send only the keys that already exist in each theme.
5. **Report back.** List each theme updated, the setting name, and the old and new values, and say how to change them back in beehiiv.
