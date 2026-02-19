# DRAG_RESIZE_NOTES

## Model

Implemented in single-file app (`index.html`) with persisted section-level layout state:

- `section.layout.box` → section width/height overrides
- `section.layout.items[key]` → per-element `{ x, y, w, h }`
- `section.layout.media` → media width/height convenience sync

Global interaction state:

- `state.toolMode`: `edit` | `move`
- `state.snapToGrid`: boolean
- `state.gridSize`: currently `8`

Storage key bumped to: `msj_editorial_v3`.

## Interaction

### Edit vs Move/Resize safety

- Inline `contenteditable` fields are enabled only in `Tool: Edit` mode.
- Dragging/resizing handlers are enabled only in `Tool: Move/Resize` mode.
- This avoids accidental drag while typing.

### Drag

- Draggable wrappers (`data-draggable="item"`) are applied to key elements in major section types.
- Drag is clamped to section bounds (computed from section/item client rects).
- Optional snapping uses grid-size rounding.

### Resize

- Selected section shows a section resize handle (bottom-right) in move mode.
- Media wrappers in Hero/Split get item resize handles.
- Resized values persist to local state.

## Current limitations

1. Drag math uses visual rect-based clamping; in very complex wrapped content, edge behavior can feel approximate.
2. Free-positioning uses transform offsets on flow elements (not full absolute canvas layout), preserving base responsiveness but allowing overlap when moved aggressively.
3. Resize persistence is per section (not per device breakpoint yet).
4. Gallery tiles are not individually draggable/resizable in this pass.
5. Existing users on old localStorage key won’t auto-migrate (new key `v3` starts fresh state).

## Notes for future hardening

- Add per-device drag/size overrides.
- Add keyboard nudging (arrow keys) and reset-position button.
- Add visual grid overlay when snap is enabled.
- Add migration from `v2` to `v3` with defaults.
