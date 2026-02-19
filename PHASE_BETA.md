# PHASE_BETA — msj-studio

## Release summary

Phase Beta upgrades msj-studio from a simple block editor into a practical local website builder with templates, responsive preview, SEO metadata, export, and draft/published workflow.

## Implemented

## 1) Standard builder features
- Header/Nav block with:
  - Logo slot
  - Optional title text
  - Logo position option (left / center / right)
  - Nav links list
  - CTA button text
- Hero block with presets:
  - split-right
  - split-left
  - background image style
  - headline/subheadline/button
- Content blocks:
  - Text block (alignment via style controls)
  - Image block (align + fit + width + radius)
  - Split block (text + image with side swap)
  - Gallery/grid block (multi-upload)
- Footer builder with logo/text/social labels/columns
- Global style controls:
  - typography scale
  - spacing scale
  - page max-width
  - global border radius
  - shadow toggle
- Editor UX improvements:
  - add-block menu
  - per-block toolbar: duplicate / move up / move down / delete
  - undo/redo
  - autosave local + manual save

## 2) Smart extras
- Template library presets:
  - SaaS
  - Portfolio
  - Landing
- Mobile preview + tablet preview toggles
- Export clean HTML/CSS:
  - download `.html`
  - copy export to clipboard
- Draft vs Published mode:
  - local published snapshot saved in localStorage
- SEO fields:
  - title
  - meta description
  - OG image URL

## 3) Device-specific editing
- Corner device switch (Desktop / Tablet / Mobile)
- Per-device style editing behavior:
  - linked styles (global)
  - unlinked styles (device-specific overrides)
- Live preview frame width changes by selected device

## Local usage

```bash
cd /home/jason/.openclaw/workspace/msj-studio
python3 -m http.server 4173
# browse http://localhost:4173
```

## Publish commands

Preferred:

```bash
cd /home/jason/.openclaw/workspace/msj-studio
./publish.sh "feat: phase beta website builder"
```

Manual fallback:

```bash
git add index.html README.md PHASE_BETA.md
git commit -m "feat: phase beta website builder"
git push origin main
```
