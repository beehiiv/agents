---
name: pre-send-check
description: Check a drafted beehiiv post before it goes out, covering subject and preview text, links, images, placeholder markers, audience and paywall settings, and send a test copy only to an address the publisher confirms. Use when someone asks to check a post before sending, run a pre-send check, proofread a draft for sending, or see whether a newsletter is ready to go out.
---

# Pre-send check

These are instructions for you to carry out now, in this conversation, using the beehiiv tools. Nothing runs in the background.

Check the draft and list what must be fixed before it goes out. This skill only checks. Never schedule or send the post.

1. **Find the post.** If the publisher does not name it, list the recent drafts (`list_posts`, status `draft`), and ask when more than one fits.
2. **Read the settings.** Read the post's metadata (`get_post`): subject line, preview text, audience (free tier, paid tiers or segments), content tags, and paywall settings.
3. **Read the body.** Read the post body (`get_post_content`). Note every link, every image and every `[TK]` marker.
4. **Run the checks.**
   - The subject line and preview text are present, specific, and not placeholders.
   - Every link is a real-looking URL. Flag placeholders such as `example.com`, `#`, an empty link, or `[link]`.
   - Every image has alt text. Flag blank alt text or a file name used as alt text.
   - No `[TK]` marker remains.
   - The audience matches what the publisher intended. If they did not say, state the audience as it is and ask.
   - The paywall and content tags are as intended.
5. **Offer a test copy.** Ask for an address to send a test to. Send it with `send_test_email` only after the publisher gives or confirms that address. Never guess an address. A test copy reaches only that address, and subscribers receive nothing.
6. **Report back.** Give a short pass list and a fix list. Give each fix its location in the post. Say plainly that the post is still a draft, and that the publisher schedules or sends it from beehiiv.
