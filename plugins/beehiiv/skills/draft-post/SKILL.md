---
name: draft-post
description: Write a new beehiiv post draft in the publication's own voice from notes, a transcript, an outline, a link, or a topic. Use when someone wants a new issue, their first post, or source material turned into a newsletter draft.
---

# Draft a post

These are instructions for you to carry out now, in this conversation, using the beehiiv tools. Nothing runs in the background.

Leave the publisher with a new draft that sounds like them and uses only facts they gave you.

1. **Learn the voice.** List recent posts (`list_posts`) and read two or three of them (`get_post_content`): how they open, how they sign off, how sections are labelled, and how long paragraphs run. Reuse their recurring openers, sign-offs, and section labels word for word, because readers recognise them. With no published posts yet, ask for a sentence or two on tone, or match their source material.
2. **Learn the format.** Read the post authoring guide (`learn_post_authoring`) before you write any HTML, because content that does not follow it is dropped or collapsed into one paragraph. Send real tags, not escaped ones such as `&lt;p&gt;`.
3. **Write.** Follow the structure their posts already use and take facts only from the source. Mark anything you would have to invent as `[TK: what's needed]` for them to fill in. Give it a title and a subtitle that match the style of their best posts. If the publisher gives a local image, upload it with `create_image_upload`, then save it with `save_image`, rather than skipping it.
4. **Save it as a draft.** Create the draft with `save_post`. Never schedule or publish it. If you need to change it after saving, update the same post with `edit_post_content` instead of creating a new one.
5. **Report back.** Give the title, the word count, and any `[TK]` gaps, and link the draft in the editor. Say plainly that it is still a draft and that they publish it from beehiiv.
6. **Offer a test copy.** Ask for the address to check it in, then send it with `send_test_email` only after they give or confirm one. Subscribers receive nothing. Recipients must be workspace members unless the workspace allows outside addresses, and each publication has a daily limit.
