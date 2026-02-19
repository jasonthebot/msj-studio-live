# UI Polish Pass — msj-studio (Phase Beta)

## What changed

### 1) Top bar cleanup
- Reorganized toolbar into **secondary** and **primary action** groups.
- Made **Save / Publish / Export** visually prominent inside a highlighted action container.
- Toned down **Undo / Redo / Templates** with softer contrast.
- Added keyboard hint chip for Save: `⌘/Ctrl+S`.

### 2) Canvas hierarchy
- Increased contrast between canvas frame and content area via deeper canvas background treatment.
- Reduced inactive block border noise (`subtle alpha border + hover emphasis`).
- Kept selected block highlight strong but tasteful (`accent ring + inset glow + slight lift`).

### 3) Inspector spacing & structure
- Improved vertical rhythm (consistent card/field spacing and header hierarchy).
- Made section headers more distinct (stronger weight/letter spacing).
- Added a **sticky “Apply to all devices”** control near the top of inspector.
  - This syncs with selected block’s `linkStyles` state.

### 4) Micro UX
- Added hover tooltips to icon-heavy block action controls (move/duplicate/delete).
- Added keyboard shortcuts:
  - `⌘/Ctrl+S` → Save local
  - `⌘/Ctrl+D` → Duplicate selected block
- Added subtle transition animation when switching Desktop/Tablet/Mobile (frame soft fade/shift + active device button state).

## Notes
- Preserved existing dark minimal style and core functionality.
- This is a practical polish pass; no architecture rewrite.
