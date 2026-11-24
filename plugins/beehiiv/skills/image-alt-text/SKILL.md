---
name: image-alt-text
description: Write alt text and titles for images in a publication's media library where they are blank or only a file name, so they are accessible and easy to find. Use when someone asks for image alt text, image descriptions, accessible images, untitled or unlabelled images, or a media library clean-up.
---

# Write image alt text

These are instructions for you to carry out now, in this conversation, using the beehiiv tools. Nothing runs in the background.

Give each unlabelled image in the media library alt text that describes it, and leave every label a person wrote.

1. **Find the publication.** Use the publication the publisher names. If they have several, ask which one to use.
2. **List the images.** List the media library assets (`list_assets`) with a file type starting `image/`, 100 per page. Read every page until none are left. Get one asset's full details when you need them (`get_asset`).
3. **Pick the images to fix.** Keep an image only when its alt text is blank or is only a file name, such as `IMG_4021.jpg`. Never change alt text a person wrote. Skip PDFs and other non-images.
4. **View each image.** Open the image at its URL and look at it. If you cannot view it, skip it and say so. Never write alt text from the file name.
5. **Write the alt text.** Keep it under 125 characters. Describe what the image shows and why it is there. Do not start with "image of" or "picture of". Include visible text when it matters.
6. **Write a title when needed.** Write a title of 3 to 6 words only when the current title is blank or a file name. Keep titles a person wrote.
7. **Save each asset.** Update each asset with its alt text (`update_asset`). Send the title only when it changes.
8. **Work in batches.** Do the first 5 images, then show a table of asset ID, alt text, title, and whether the title changed. Ask before the next batch of 20, and report how many images are left.

These changes apply to the media library only. They do not email anyone or change any post.
