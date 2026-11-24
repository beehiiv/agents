---
name: win-back-inactive
description: Build a segment of subscribers who stopped opening, plus a draft win-back automation of two or three emails that ends with a choice to stay or leave. Use when someone wants to win back inactive readers, re-engage cold subscribers, reactivate people who stopped opening, or clean up an unengaged list.
---

# Win back inactive readers

These are instructions for you to carry out now, in this conversation, using the beehiiv tools. Nothing runs in the background.

Create a segment of readers who stopped opening, and a draft automation to win them back. Leave everything inactive. Never remove, unsubscribe or delete anyone.

1. **Check what exists.** List the segments (`list_segments`) and the automations (`list_automations`). If a win-back segment or automation already exists, offer to reuse it instead of making a duplicate.
2. **Confirm the criteria.** The default is active subscribers with no opens in the last 90 days who opened before. Use the publisher's criteria if they give any. Read the segment conditions reference (`get_segment_schema`) before you write the rule.
3. **Build the segment.** Save it (`save_segment`) with a name that says what it is, such as "Inactive 90 days (win-back)". Recalculate it (`recalculate_segment`) and read the member count. A count of zero, or most of the list, means the rule is wrong, so re-check it before you report.
4. **Draft the sequence.** Read the automation trigger reference (`get_automation_schema`). Create the automation (`save_automation`) and its two or three emails (`save_automation_email`). Use these roles:
   - **Check-in:** ask whether they still want the newsletter, and give one reason to open.
   - **Value:** name the topic they used to open, with one recent example. Skim recent posts first (`list_posts`, `get_post_content`).
   - **Last email:** offer a clear choice to stay, or to leave with one click.
   Write each email in the publication's voice, and keep each one short.
5. **Leave it inactive.** Never turn the automation on. State plainly that nothing sends until the publisher reviews it and turns it on in the beehiiv automation editor.
6. **Tell them about current members.** The segment trigger only enrols people who join after the automation goes live. Tell the publisher to add the current segment members once it is on, and link https://www.beehiiv.com/support/article/21526057683991?utm_source=mcp&utm_medium=skill.
7. **Suggest a clean-up for later.** After the sequence, suggest reviewing the readers who did not respond. Present it as a later choice for the publisher. Do not carry it out.

Report the segment name and rule, its member count, the automation name, each email subject line, and the draft status.
