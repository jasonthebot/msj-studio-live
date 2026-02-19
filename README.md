# msj-studio — Phase Beta

Canonical source: `index.html` (single-file local-first studio).

## Run locally

```bash
cd /home/jason/.openclaw/workspace/msj-studio
python3 -m http.server 4173
# open http://localhost:4173
```

You can also double-click/open `index.html` directly, but local server is recommended.

## Beta features shipped

- Header/Nav builder (logo/title/nav links/CTA + logo position)
- Hero presets (split left/right, background image)
- Content blocks (text/image/split/gallery/footer)
- Media upload from device (data URL local save)
- Block operations: add, duplicate, move up/down, delete
- Undo/redo + autosave localStorage
- Template library: SaaS, Portfolio, Landing
- Device switcher: Desktop / Tablet / Mobile
- Per-device style editing + link/unlink style behavior
- Global scales: typography, spacing, max width, radius, shadows
- Mobile/tablet preview frame width
- Draft vs Published local mode (publish snapshot)
- SEO fields (title/meta description/OG image)
- Export clean HTML/CSS (download and copy)

## Save model

Everything is local in browser `localStorage` key `msj_beta_v1`.
No backend required.

## Publish to GitHub / Vercel

Use the repo helper script:

```bash
cd /home/jason/.openclaw/workspace/msj-studio
./publish.sh "feat: phase beta website builder release"
```

That script stages canonical release docs/files, commits, pushes current branch, and Vercel auto-deploy picks it up.

## Manual git (if needed)

```bash
git add index.html README.md PHASE_BETA.md
git commit -m "feat: phase beta studio"
git push origin main
```
