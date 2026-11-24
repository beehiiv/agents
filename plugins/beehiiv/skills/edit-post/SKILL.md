---
name: edit-post
description: Edit, tighten, or rewrite an existing beehiiv post in the publication's own voice. Use when someone wants a post or draft shortened, restructured, rewritten, or repurposed.
---

# Edit a post

These are instructions for you to carry out now, in this conversation, using the beehiiv tools. Nothing runs in the background.

Leave the publisher with a better draft that still sounds like them, and a clear account of what changed.

1. **Find the post.** If they don't name it, list the recent drafts (`list_posts`), and ask when more than one fits.
2. **Learn the voice.** List recent published posts (`list_posts`) and read two or three (`get_post_content`): how they open, how they sign off, how sections are labelled, and how long paragraphs run. Keep their recurring openers, sign-offs, and section labels word for word, because readers recognise them.
3. **Edit.** Change only what the request needs, and leave strong blocks alone, so the publisher's own sentences survive. Read the post again right before you change it (`get_post_content`), so the edit uses the current version; stale content causes errors. Save the change with `edit_post_content`. When a draft feels long, the usual culprits are throat-clearing intros, hedges, and asides, so cut those before cutting substance.
4. **Report back.** List what you changed and why, give the old and new word counts, and link the draft in the editor. Say plainly that it is still a draft and that they publish it from beehiiv.
5. **Offer a test copy.** Ask for the address to check it in, then send it with `send_test_email` only after they give or confirm one. Subscribers receive nothing. Recipients must be workspace members unless the workspace allows outside addresses, and each publication has a daily limit.
