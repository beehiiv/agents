---
name: unsubscribe-spikes
description: Find when a beehiiv newsletter lost unusual numbers of subscribers and trace each loss to the post that likely caused it. Use when someone asks why they are losing subscribers, what caused an unsubscribe spike, or which emails made people leave.
---

# Unsubscribe spikes

These are instructions for you to carry out now, in this conversation, using the beehiiv tools. Nothing runs in the background.

Show the publisher when they lost readers and the likely reason, so they don't repeat it.

1. **Find the spikes.** Get the daily subscriber growth with `get_subscriber_growth`: new subscribers, unsubscribes, resubscribes, and net per day. Pass start and end dates for the period (default: the last three months), because the tool defaults to 28 days. A typical day's unsubscribes are the baseline; a spike is a day with far more than usual. Use the total count from `get_subscriber_history` only as context.
2. **Match them to posts.** List the posts sent in the period (`list_posts`), then get their stats (`get_post_stats_batch`), and compare each post's unsubscribe rate with the typical rate. A spike usually lands on the send day or the day after.
3. **Read the culprit.** Read each post that lines up with a spike (`get_post_content`). The cause is often in the body, such as a price change, a paywall move, a sponsor-heavy issue, or an off-topic piece, rather than in the subject line.
4. **Report back.**
   - A headline naming the worst spike: the date, the post, and how many readers left.
   - A dated table of posts with unsubscribes and unsubscribe rate, spikes marked.
   - For each spike, the likely cause, quoted from the post. Present it as the most likely explanation, not proof, because unsubscribes don't record a reason.
   - One or two concrete changes, such as how to announce the same news with less loss.

If nothing stands out, say so. A steady list is a finding too.
