# STYLE_PIVOT_NOTES

## What changed (major pivot)

msj-studio was shifted from a dark/minimal shell to a **premium light editorial builder** with a visible first-glance transformation:
- Soft neutral background system and warm paper-like panels
- Cleaner section cards with subtle borders, elevation, and spacing rhythm
- Refined typography hierarchy and calmer inspector visuals
- Clear selected-state affordances and consistent interaction states

## Architecture preserved

Kept the requested core editing architecture:
- **Left rail** (Create / Sections / Tokens / Project)
- **Topbar** (device switch, zoom, undo/redo, save/publish/export)
- **Canvas center** (responsive preview frame)
- **Right inspector** (deep section + token controls)

Local-first save and export flows remain intact (`localStorage`, export HTML, copy export).

## Flexibility + modular system upgrades

### Section system
- Expanded modular section set:
  - Header, Hero, Feature Grid, Story, Split, Quote, Gallery, CTA, Footer
- Each section now includes **variants** (e.g. hero split/background, gallery 2/3/4-up, feature 2/3/4 cards)
- Added page layout presets: **Campaign / Journal / Studio profile**
- In-canvas section controls: move up/down, duplicate, delete

### Reusable components
- Added **Save selected as reusable**
- Added **Insert reusable** dropdown
- Reusable modules are persisted locally and inserted as cloned sections

### Inspector depth
For selected sections, inspector now exposes grouped controls for:
- Variant + alignment
- Responsive spacing (desktop/tablet/mobile)
- Responsive typography scale (desktop/tablet/mobile)
- Link/unlink behavior for spacing and typography
- Background/text color, radius
- Media fit + width controls
- CTA style selection
- Content-specific fields by section type
- Media upload (single or gallery accumulation)

### Global design tokens
Added a more explicit token model with quick presets and editable values:
- Color tokens: page bg, panel bg, text, accent
- Type scale
- Spacing scale
- Max width
- Radius
- Shadow toggle
- Quick presets: **Linen, Stone, Ink serif, Contrast**

## Editing UX improvements
- Better discoverability through naming and grouped controls
- Improved visual hierarchy in inspector panels
- Stronger selected-state affordance with tag + highlight ring
- Smooth, practical interactions suitable for iterative page composition
- Keyboard shortcuts preserved (save, duplicate)

## Scope guardrails (non-ecommerce)
- No cart, checkout, product backend, or commerce data model added
- Focus remains on **flexible storytelling page composition** and editorial layouts

## Notes on export
- Export remains intentionally lightweight and static
- It keeps local-first practicality and metadata output (SEO title/description/OG)
