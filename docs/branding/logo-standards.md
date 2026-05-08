# Neptune Filtration — Logo Standards

**Status:** Documentation only. No production changes.
**Last updated:** May 2026 — full revision after all logo files confirmed.

---

## 1. The Logo — What It Is

The NEPTUNE brand mark is a **bold geometric wordmark** with an integrated icon element.

### Wordmark
`NEPTUNE` in a bold, rounded-terminal geometric sans-serif — all caps, tight tracking,
heavy weight (Black or ExtraBold). The distinctive element: the final `E` in NEPTUNE
is replaced by a **bidirectional arrow/trident symbol** (←→), functioning simultaneously as:

- A visual reference to Neptune's trident (mythology, authority, water)
- A representation of water flowing in two directions (filtration: water in, clean water out)
- A unique brand mark that differentiates the wordmark from any generic typography

This icon-within-wordmark is the brand's most distinctive asset. It must never be
altered, redrawn, or substituted.

### Descriptor
`Whole Home Filtration` appears beneath the wordmark in a lighter weight sans-serif
(regular or medium weight), sentence case, wider tracking. This provides brand context
and positioning without competing with the wordmark.

### Brand Name Clarification
The brand name is **NEPTUNE** — not "Neptune Filtration."
The descriptor "Whole Home Filtration" is a product category line, not part of the brand name.

**In copy:** Refer to the brand as Neptune (or Neptune Whole Home Filtration in full context).
**In the logo:** Always use the complete lockup including the descriptor unless using the
compact/icon version in constrained spaces.

---

## 2. Logo File Inventory

### Confirmed Available Files

| File | Variant | Format | Background | Use Case |
|------|---------|--------|------------|----------|
| `Neptune_Logo_Black.png` | Black wordmark + descriptor | PNG (transparent) | Light/white backgrounds | Website content sections, email, print on white, light ad backgrounds |
| `Neptune_Logo_White.png` | White wordmark + descriptor | PNG (transparent) | Dark backgrounds | Website header/footer (dark), dark ad backgrounds, dark hero sections |
| `Neptune_Logo_White.svg` | White wordmark + descriptor | SVG (vector) | Dark backgrounds | Primary digital production file — scales to any size |
| `Neptune_Logo_White.ai` | White wordmark + descriptor | Adobe Illustrator | Dark backgrounds | Master source — use for creating new variants |
| `Neptune_Logo_White.pdf` | White wordmark + descriptor | PDF vector | Dark backgrounds | Print production |

### Missing Files — Must Be Created

| File to Create | How to Create | Priority |
|---------------|---------------|----------|
| `Neptune_Logo_Black.svg` | Export from AI source, recolour to black | 🔴 Critical — needed for all light-background digital production |
| `Neptune_Logo_Black.ai` | Duplicate white AI file, swap fill to black | 🔴 Critical — master source for dark version |
| `Neptune_Logo_Black.pdf` | Export from black AI file | High — print on white stock |
| `Neptune_Logo_Compact_White.svg` | Version without descriptor, wordmark only | High — header, tight UI contexts |
| `Neptune_Logo_Compact_Black.svg` | Same compact, black version | High — light backgrounds, compact use |
| `Neptune_Icon_White.svg` | The trident/arrow symbol only, isolated | Medium — favicon source, social avatar, small icon use |
| `Neptune_Icon_Black.svg` | Icon only, black version | Medium |
| `favicon.ico` | Derived from icon mark | Medium — browser tab |
| `favicon.png` (512×512) | Derived from icon mark | Medium — PWA, social meta |

**Action:** Open `Neptune_Logo_White.ai` and export all required variants above.

---

## 3. Logo Anatomy & Proportions

### Structural Elements

```
┌──────────────────────────────────────────────────────┐
│                                                      │
│   N E P T U N ←→                                    │
│   [BOLD GEOMETRIC SANS — BLACK OR WHITE]             │
│                                                      │
│         Whole Home Filtration                        │
│         [LIGHT WEIGHT SANS — WIDER TRACKING]         │
│                                                      │
└──────────────────────────────────────────────────────┘

Approximate proportions:
- Wordmark height : descriptor height ≈ 3 : 1
- Total lockup height ≈ 1.3× wordmark height
- Descriptor is horizontally centred below wordmark
- Clear space between wordmark baseline and descriptor cap-height ≈ 0.3× wordmark height
```

### The Trident/Arrow Icon Within the Wordmark
The ←→ element sits at the end of NEPTUNE in the position of the final E.
It is visually weighted to match the surrounding letterforms — not lighter, not heavier.
This element **cannot be used in isolation** as a social avatar or icon (it will read as an
arrow, not the Neptune mark). The dedicated icon variant (the symbol extracted and
given proper isolation) must be created separately.

---

## 4. Clear Space Rules

Clear space is the minimum exclusion zone around the logo. Nothing enters this zone:
no text, no other graphics, no image edges, no decorative elements.

**Measurement:** Use the cap-height of the wordmark letters as the unit.
Clear space = 1× that height on all four sides.

```
At 200px wide logo, wordmark cap-height ≈ 32px:
  Clear space = 32px top, bottom, left, right

At 140px wide logo, wordmark cap-height ≈ 22px:
  Clear space = 22px on all sides
```

For ads: The logo must not touch or bleed to any edge of the frame.
Minimum margin from frame edge to logo clear zone: 16px on a 1080px canvas.

---

## 5. Size Standards

### Minimum Sizes

| Context | Minimum Width | Rationale |
|---------|--------------|-----------|
| Desktop website header | 130px | Comfortable recognition at normal viewing distance |
| Mobile website header | 110px | Readable on 375px screens |
| Email header | 160px | Email clients render at 600px width |
| Social media profile image | N/A — use icon mark only | Full wordmark too small at avatar sizes |
| Meta ad (1080px canvas) | 180px | Visible on mobile feed |
| Meta story (1080×1920px) | 200px | Sufficient presence on full-screen format |
| Print — business card | 32mm | Minimum for legibility in print |
| Print — A4 document / brochure | 50mm | Standard document logo size |
| Print — A4 brochure cover (prominent) | 80–100mm | Cover branding should command presence |
| Vehicle signage | Scale to context | Minimum: readable at 5m distance |

**Never reproduce the full wordmark lockup below these minimums.** Use the compact
version (wordmark without descriptor) for tighter constraints.

---

## 6. Colour Usage Rules

### On Dark Backgrounds (Neptune Deep, dark photography, dark hero sections)

- **Use:** White version (`Neptune_Logo_White.png` / `.svg`)
- Ensure the background is dark enough for clear contrast
- Minimum contrast ratio: 4.5:1 (WCAG AA)

### On Light Backgrounds (White, off-white, light photography)

- **Use:** Black version (`Neptune_Logo_Black.png` / `.svg` — once created)
- The black version on white backgrounds has inherently strong contrast and always passes

### On Photography

- **Dark-toned photo areas:** Use white version
- **Light-toned photo areas:** Use black version
- **Mixed or mid-tone photo:** Add a clear zone — a semi-transparent dark bar or
  feathered shape behind the logo to ensure contrast
- Never place the logo on a part of a photo where it competes with busy texture or colour

### On Coloured Backgrounds

If Neptune Blue is used as a background:
- Use white version (confirms contrast is sufficient against the brand blue)

If any other colour is used:
- Verify contrast ratio before proceeding
- When in doubt, use white logo on dark overlay, black on white panel

---

## 7. Logo Placement by Channel

| Channel | Version | Position | Size |
|---------|---------|----------|------|
| Website — header (dark bg) | White | Left-aligned | 130–150px wide |
| Website — email header (light bg) | Black | Centred | 160px wide |
| Website — footer (dark bg) | White | Left column | 120px wide |
| Facebook/Instagram ad — dark bg | White | Top-left, 16px from edges | 180px+ |
| Facebook/Instagram ad — light bg | Black | Top-left, 16px from edges | 180px+ |
| Facebook/Instagram story | White or Black (per bg) | Top section, 16px from top edge | 200px+ |
| Google Display ad | White or Black (per bg) | Visible, not cramped | Scale to ad size |
| Email — body (light bg) | Black | Header, centred or left | 160px wide |
| Print brochure — cover (dark) | White | Prominent position | 80–100mm |
| Print brochure — inside (white) | Black | Header or footer | 50mm |
| Business card — front (white) | Black | Standard position | 45mm |
| Vehicle signage | Per background colour | Dominant position | Scale to visibility |
| SMS | N/A | — | No logo in SMS |
| Favicon / browser tab | Icon mark only | — | 32×32 / 64×64 / 512×512 |

---

## 8. What the Logo Should Never Do

| Prohibited | Why |
|-----------|-----|
| Stretch or distort (change aspect ratio) | Breaks the wordmark geometry |
| Recolour to anything other than black or white | Introduces unapproved brand colour |
| Apply gradient, drop shadow, glow, or emboss | Adds noise, reduces premium feel |
| Rotate or skew | Never acceptable for a wordmark |
| Place at below minimum size | Renders the mark illegible |
| Place white version on white/light background | Invisible |
| Place black version on black/dark background | Invisible |
| Crop or partially obscure any letterform or the icon | Breaks recognition and looks unfinished |
| Alter the spacing between the wordmark and descriptor | Breaks the lockup proportions |
| Use without clear space enforced | Cramped logo reads as unprofessional |
| Remove the descriptor from the full lockup | Use compact version instead — don't simply delete |
| Use the wordmark ←→ icon in isolation as the avatar | Create a proper isolated icon mark variant |
| Apply a box or shape directly around the logo | If a container is needed, use the clear zone |
| Combine with other logos at the same visual weight | Third-party co-branding: confirm separately |

---

## 9. Logo Across the Brand System

### Typography Relationship
The wordmark uses a **bold geometric rounded-terminal sans-serif.**
Website body and headline typography should be chosen to complement — not match —
this typeface. A well-paired secondary typeface is slightly lighter and more neutral,
so the logo retains its authority when it appears alongside the site's typographic system.

Do not use the same heavy geometric typeface for headlines — it would compete with the logo.

### The Icon Within the Context
The trident/arrow symbol that forms the E is the brand's most unique visual asset.
When creating decorative or graphic elements (icons, dividers, watermarks, print elements),
there is an opportunity to echo this bidirectional arrow motif in subtle ways — as a
design accent, not as a logo substitute.

---

## 10. Immediate Action Items

Priority order for logo asset production:

1. **Create `Neptune_Logo_Black.svg`** — open `Neptune_Logo_White.ai`, swap fill to black (#0B1F3A or pure black #000000), export as SVG and PNG. This unblocks all light-background production.
2. **Create compact version** — wordmark only (no descriptor) in both black and white SVGs. Used for header, small UI slots, and tight ad placements.
3. **Create isolated icon mark** — the trident/arrow symbol extracted from the E, given proper proportions and isolation, exported as SVG in both colours. Used for favicon and social avatar.
4. **Create favicon** — from the icon mark, exported at 32×32, 64×64, and 512×512px.
5. **Store all in** `assets/logos/` with the naming convention:
   - `Neptune_Logo_White.svg` ✅ exists
   - `Neptune_Logo_Black.svg` ← create
   - `Neptune_Logo_Compact_White.svg` ← create
   - `Neptune_Logo_Compact_Black.svg` ← create
   - `Neptune_Icon_White.svg` ← create
   - `Neptune_Icon_Black.svg` ← create
   - `Neptune_Favicon_512.png` ← create
