# msj-studio Hard UI Rewrite Notes

## What Changed (Hard Restructure)

This pass intentionally re-architected the interface into a **pro builder shell** (Shopify-style framing) instead of polishing the prior layout.

### 1) New left vertical rail (Create / Content / Theme / Settings)
- Added a dedicated persistent left rail with four explicit sections:
  - **Create**
  - **Content**
  - **Theme**
  - **Settings**
- Rail buttons now visually drive focus and hierarchy (section highlight + panel focus/scroll behavior).

### 2) New top command bar
- Replaced previous mixed toolbar with a command-oriented top bar containing:
  - page context label
  - **device switch** (Desktop / Tablet / Mobile)
  - **zoom controls** with visible percentage
  - **Undo / Redo**
  - utility actions (Copy export / Export)
  - prominent **Save** and **Publish** actions
  - draft/published mode status toggle and live status text

### 3) Center canvas became a true editing stage
- Moved block create tools into a dedicated strip above canvas.
- Center area now behaves as a focused stage with:
  - central preview frame and dark canvas zone
  - stronger selected-block outlines and badge
  - persistent inline block operation controls (move/duplicate/delete)
  - editing affordance improvements for immediate visual feedback

### 4) Right inspector got stronger hierarchy
- Reorganized into grouped inspector panels:
  - Editing scope
  - Project settings (SEO)
  - Theme system (global scale controls)
  - Selected block controls
- Updated panel architecture to read as professional, layered control hierarchy.

## Visual Direction
- Applied a **dark minimal** aesthetic across shell, rails, and panels.
- Introduced clearer separation between shell chrome and content canvas.
- Increased first-glance contrast between navigation, command bar, workspace, and inspector.

## What Was Preserved (Core Functionality)
- Existing block model and block types (header, hero, text, image, split, gallery, footer)
- Template switching behavior
- Block operations (move up/down, duplicate, delete)
- Inline text editing in draft mode
- Per-device style behavior (Desktop/Tablet/Mobile + link styles toggle)
- Local persistence/autosave via `localStorage`
- Undo/redo history flow
- Save/publish mode behavior
- HTML export + copy export
- Keyboard shortcuts (`Ctrl/Cmd+S`, `Ctrl/Cmd+D`)

## Net Result
The app now reads as a **builder shell product** at first glance rather than a single-panel prototype, while preserving key editing workflows and data behavior from the previous build.