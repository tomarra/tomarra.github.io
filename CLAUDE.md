# tomarra.github.io

Personal blog built with Jekyll, hosted on GitHub Pages.

## Setup

After cloning, install the git hooks so images are automatically optimized on commit:

```bash
./scripts/install-hooks.sh
```

Requires `cwebp` for image optimization: `brew install webp`

## Images

All images live in `images/` (root-level) or `images/posts/` (post images).

**Format:** WebP only. All images must be `.webp` before committing.

**The pre-commit hook handles this automatically:** drop any `.jpg`, `.jpeg`, or `.png` into `images/`, stage it with `git add`, and the hook converts it to `.webp` and swaps the staged file before the commit lands. You never commit non-WebP images.

**Reference images in posts using the `.webp` extension:**

```markdown
![Alt text]({{site.baseurl}}/images/posts/my_photo.webp)
```

**To bulk-convert images manually** (e.g. if hooks aren't installed):

```bash
./scripts/optimize-images.sh
```

## Running locally

```bash
bundle exec jekyll serve
```
