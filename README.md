# msj-studio — Editorial Builder

Canonical source: `index.html` (single-file, local-first studio).

## Run locally

```bash
cd /home/jason/.openclaw/workspace/msj-studio
python3 -m http.server 4173
# open http://localhost:4173
```

## New: free drag + resize controls

In Draft mode, you now have a second interaction toggle:

- **Tool: Edit** → safe text/content editing (inline typing stays usable)
- **Tool: Move/Resize** → free-positioning + resize handles

### Free-positioning (in-section)

1. Select a section.
2. Click **Tool: Move/Resize** in the top bar.
3. Drag key elements (headline, text blocks, chips/buttons, media where supported).
4. Elements are clamped to section bounds.
5. Positions are persisted in local save.

### Snapping/grid

- Use **Snap: On/Off** in top bar.
- When on, drag/resize snaps to an 8px grid.

### Resizing

- **Section resize:** select section in Move/Resize mode and drag the visible bottom-right section handle.
- **Media resize:** in supported sections (Hero/Split media), drag the media resize handle.
- Size values are persisted in local save.

## Existing builder features

- Section add/duplicate/reorder/delete
- Responsive device preview (desktop/tablet/mobile)
- Per-section spacing/type controls
- Theme tokens (color, type scale, spacing, radius, shadows)
- Reusable section library
- Undo/redo + autosave localStorage
- Draft/Published local snapshot mode
- SEO fields + export HTML

## Save model

Everything is local in browser `localStorage` key `msj_editorial_v3`.
No backend required.

## Deploy

Use the repo helper script:

```bash
cd /home/jason/.openclaw/workspace/msj-studio
./publish.sh "feat: drag-resize free positioning controls"
```

This stages, commits, pushes, and triggers deploy via your existing setup.
