# Juan Gonzalez - Personal Website

Minimalistic Hugo setup using [PaperMod](https://github.com/adityatelange/hugo-PaperMod).

## Workflow

1. Write content in `content/` using Markdown (`.md`) or Org-mode (`.org`).
2. Run locally: `hugo server -D`
3. Push to `main` to deploy to GitHub Pages automatically via Actions.

## Phone Editing via iCloud

1. On your phone, save Markdown files to the `Documents/Blog Drafts` folder.
2. On your Mac, run `./sync-icloud.sh` to copy them into the Hugo repository.
3. Commit and push!
