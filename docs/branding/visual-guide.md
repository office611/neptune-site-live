# Neptune Filtration — Visual Identity System

**Status:** Documentation only. No production changes.
**Version:** 1.0 — May 2026
**Purpose:** The definitive reference for every visual decision across Neptune Filtration.
Apply this before creating any ad, page, email, or printed asset.

---

## 1. The Visual Standard

Neptune Filtration competes in the premium home services category.
The aesthetic benchmark is premium European appliance brands and upmarket home improvement services —
not tradie directories, not hardware stores, not infomercial water filters.

**The test for every creative:**
> Would this look credible in a Houzz editorial, a premium Melbourne home magazine,
> or alongside a Zip HydroTap or Miele advertisement? If yes — proceed. If not — redesign.

**Three-word visual brief:** Calm. Clean. Premium.

---

## 2. Logo

### The Brand Mark — Confirmed May 2026

The NEPTUNE logo is a **bold geometric wordmark** with an integrated icon element.

The wordmark `NEPTUNE` is set in a heavy rounded-terminal geometric sans-serif, all caps,
with the final E replaced by a **bidirectional trident/arrow symbol** (←→). This is simultaneously
a trident reference (Neptune mythology), a water-flow metaphor (in and out), and a
unique visual fingerprint that makes the mark unmistakable.

Below the wordmark: `Whole Home Filtration` in a light regular-weight sans-serif.
The brand name is **NEPTUNE** — not "Neptune Filtration." The descriptor is a product category
line, not part of the brand name.

### Files Now Confirmed

| File | Variant | Status |
|------|---------|--------|
| `Neptune_Logo_Black.png` | Black wordmark + descriptor | ✅ Exists |
| `Neptune_Logo_White.png` | White wordmark + descriptor | ✅ Exists |
| `Neptune_Logo_White.svg` | White vector | ✅ Exists |
| `Neptune_Logo_White.ai` | Adobe Illustrator master | ✅ Exists |
| `Neptune_Logo_White.pdf` | Print PDF | ✅ Exists |
| `Neptune_Logo_Black.svg` | Black vector | ❌ Must be created |
| Compact version (no descriptor) | For header/small UI | ❌ Must be created |
| Icon mark only (the ←→ symbol) | Favicon, social avatar | ❌ Must be created |

**See [logo-standards.md](logo-standards.md) for the complete logo usage system.**

### Logo Usage Rules (Summary)

**On dark backgrounds (neptune-deep, dark photography):**
- Use white version
- Minimum width: 130px digital / 32mm print
- Clear space: equal to the cap-height of the wordmark on all four sides

**On light backgrounds (white, off-white content sections):**
- Use dark version (navy or brand-matched dark tone)
- Same minimum size and clear space rules

**Never:**
- Place white logo on white or light backgrounds
- Place dark logo on dark backgrounds
- Stretch, rotate, or recolour the logo
- Add drop shadows, outlines, or effects
- Use at widths below the minimum (becomes illegible)
- Place the logo on busy or clashing photography without a clear zone

### Logo Placement — Ads
Every ad must carry the Neptune Filtration logo. Current ads have none.
Position: top-left corner (standard) or bottom with tagline.
Minimum size on ad: 180px wide on a 1080px canvas.

---

## 3. Colour System

### The Problem with Current Ads
The Facebook ads use a bright medium blue (#1A7FD4 range) that does not match the
deep navy on the website. These are two different blues being used as if they're
the same brand colour. They are not. This must be resolved.

### Confirmed Colour Directions (from website observation)

The website uses:
- Deep navy/dark charcoal for hero sections
- Clean white for content areas
- A blue accent (exact value needs to be extracted from live CSS)

The ads incorrectly use a bright electric blue that reads as cheap and generic.

### Recommended Colour Token System

**Primary Palette:**

| Token | Name | Approximate Value | Role |
|-------|------|-------------------|------|
| `--neptune-deep` | Neptune Deep | #0B1F3A | Primary dark — hero backgrounds, footer, nav |
| `--neptune-blue` | Neptune Blue | #1A5FA8 | Accent — CTAs, links, icon highlights |
| `--neptune-blue-hover` | Neptune Blue Hover | #1E72C8 | CTA hover state |
| `--neptune-copper` | Neptune Copper | #B87333 | Accent — copper pipe detail (echoes the product) |

**Secondary Palette:**

| Token | Name | Approximate Value | Role |
|-------|------|-------------------|------|
| `--surface-white` | Surface White | #FFFFFF | Content backgrounds |
| `--surface-off-white` | Surface Off-White | #F5F8FC | Alternating sections, cards |
| `--surface-card` | Surface Card | #EBF0F7 | Stat callouts, info cards |
| `--border-subtle` | Border Subtle | #D6E0EC | Dividers, card borders |

**Text:**

| Token | Name | Value | Role |
|-------|------|-------|------|
| `--text-primary` | Text Primary | #0B1F3A | Same as Neptune Deep — primary body text |
| `--text-secondary` | Text Secondary | #4A5C72 | Secondary copy, captions |
| `--text-muted` | Text Muted | #7A8EA3 | Labels, fine print |
| `--text-on-dark` | Text On Dark | #FFFFFF | All text on dark backgrounds |

**System colours:**

| Token | Name | Value | Role |
|-------|------|-------|------|
| `--success` | Success | #2A8A50 | Checkmarks, confirmation |
| `--warning` | Warning | #C97B1A | Caution states — use sparingly |

**Note:** All hex values above are derived from careful observation of the live site.
**Confirm all values against the actual CSS/Figma files before applying to production.**
Extract the real values using browser DevTools on neptunefiltration.com.au.

### Colour Usage Rules

**Backgrounds (by section type):**

| Section Type | Desktop | Mobile |
|-------------|---------|--------|
| Hero / dark emphasis | `--neptune-deep` | Same |
| Standard content | `--surface-white` | Same |
| Alternating section | `--surface-off-white` | Same |
| Stat / callout card | `--surface-card` | Same |
| Footer | `--neptune-deep` | Same |
| Trust bar (above footer) | `--neptune-deep` or `--surface-off-white` | Wrap to 2 cols |

**Buttons:**
- Primary CTA: `--neptune-blue` background, `--text-on-dark` text
- Primary CTA hover: `--neptune-blue-hover`
- Ghost/secondary: transparent, `--neptune-blue` border + text

**DO NOT use bright electric blue (the colour used in Ads 1 & 2).**
It reads as generic and cheap. The Neptune brand blue is a deeper, more restrained tone.

**The copper accent (`--neptune-copper`)** is an opportunity.
The product's copper pipe fittings appear across all install photography.
Using copper as a subtle accent in design elements (icons, borders, dividers) creates
a subconscious connection between the brand's visual identity and the physical product.
Use sparingly — a single copper-tinted rule or icon highlight is enough.

---

## 4. Typography

### Confirmed Direction
The website uses a clean modern sans-serif — likely Inter, Plus Jakarta Sans, or similar.
The ads incorrectly use a heavy condensed typeface (similar to Impact or Bebas Neue)
that reads as generic tradie advertising. This must be corrected.

**The premium brand uses one typeface consistently — not mixing display faces for ads.**

### Recommended Type System

**Primary typeface:** Confirm from live site CSS.
Candidates based on aesthetic observation:
1. **Inter** — clean, modern, excellent screen legibility, free
2. **Plus Jakarta Sans** — slightly warmer, premium feel, free
3. **Manrope** — rounded geometric, friendly-professional, free

Once confirmed, this single typeface applies across ALL channels:
website, ads, email, print, brochures.

### Type Scale (Apply Across All Channels)

| Role | Desktop | Mobile | Weight | Use |
|------|---------|--------|--------|-----|
| Display | 56–64px | 36–40px | 700 | Hero H1 only |
| H1 | 44–52px | 30–36px | 700 | Page/section headlines |
| H2 | 32–38px | 24–28px | 600–700 | Section heads |
| H3 | 22–26px | 18–22px | 600 | Sub-section heads, card titles |
| Body Large | 18px | 16px | 400 | Key paragraphs |
| Body | 16px | 15px | 400 | Standard copy |
| Body Small | 14px | 13px | 400 | Captions, secondary |
| Label | 12–13px | 12px | 500–600 | Badges, tags |
| CTA | 16–17px | 15–16px | 600 | Button text |

### Typography Rules

- Headlines: sentence case — not ALL CAPS (unless a deliberate single-word callout)
- Body text: left-aligned — never centred for paragraphs
- Max line length: 65 characters (~620px container)
- Never use condensed/compressed fonts in Neptune marketing
- Never mix headline fonts with body fonts from different type families

---

## 5. Product Imagery

### Confirmed Product — May 2026

The actual Neptune system is confirmed from real installation photography:

- **Housing:** Grey/beige rectangular exterior enclosure — clean, boxy, low-profile
- **Pipes:** Copper fittings — highly distinctive, warm metallic tones, the brand's most
  photogenic physical detail
- **Valves:** Blue plastic shutoff valves at the base — functional, visible, not yet a
  premium visual detail
- **Install location:** Mounted externally against a wall or fence — in side passages,
  external laundry walls, or back garden areas. **Not freestanding in garden beds**
  as AI renders suggested.

The 3-stage blue filter housing (from `Professional_product_photography-3.png`) is the
indoor filtration hardware — this may be what's inside the grey enclosure, or may be
a separate product variant. Confirm with the team.

### The Current Real Install Photo — Honest Assessment

One genuine installation photo now exists: `assets/install-photos/93298737...jpg`

**What it confirms:**
- The grey enclosure with copper pipes is the real product ✅
- The copper pipe detail is exactly as premium in reality as in the AI renders ✅
- The installed footprint is compact and tidy ✅

**What it reveals as needing improvement for marketing use:**
- Background: Dark timber fence — visually busy, unglamorous
- Ground: Loose gravel and disturbed soil around the base
- Lighting: Flat overcast — no directional warmth or depth
- Composition: Unit slightly cramped in frame, fence fills entire background
- Blue valves visible at base — functional but visually unresolved
- Water droplets on unit surface (freshly installed or wet weather)
- Overall: A tradesperson's documentation photo, not a marketing photograph

**Assessment:** Not ready for premium ad or website use in its current form without
post-processing. Can be used internally, in email sequences, or on lower-stakes
touchpoints while professional photography is arranged.

### Photography Roadmap — Three Phases

**Phase 1 (Now) — Use What Exists Carefully**
- The real install photo can be used in: pre-appointment email (process transparency),
  technical/spec sections of the website, brochure back pages
- The AI renders can continue in ads if no better option exists — but move to real
  photography as quickly as possible
- Clearly label AI renders as "system in a typical installation" if used in print

**Phase 2 (Next install — or dedicated shoot) — Elevate One Real Photo**
Work with a photographer or use good mobile photography on the next clean install:
- Choose an install at a premium Melbourne property (clean exterior, tidy surrounds)
- Prep the site: clear loose gravel, clean the unit of any debris or marks
- Shoot at golden hour (warm directional light flatters the copper pipes)
- Angle: Low 3/4 view looking up slightly — makes the unit look more substantial
- Include a section of the home exterior in background (blurred)
- Take 5–10 shots from different angles at the same location

**Phase 3 (6–12 months) — Professional Photography Library**
Commission a professional photographer for a half-day shoot:
- 3–4 recent install locations selected for visual quality
- Indoor shots of the filtration hardware detail
- Lifestyle: water flowing, glasses of water, family in kitchen/bathroom
- Team/technician shots: professional appearance, working at an install
- All images edited to the Neptune brand grade standard

### Product Photography Standards

**For installation photography (real or AI-assisted):**

| Element | Standard |
|---------|---------|
| Background | Premium Melbourne property — brick, render, or clean timber |
| Ground | Manicured — pebble, grass, or aggregate. No loose dirt. |
| Lighting | Golden hour (late afternoon) — warm, directional. Flatters copper. |
| Primary angle | 3/4 view, slightly low — shows full unit and one copper pipe clearly |
| Secondary angles | Straight-on detail of copper fitting; aerial view of unit in context |
| Colour grade | Warm-neutral — highlights slightly lifted, slight warmth added |
| The unit | Clean, dry, no smudges, no construction debris |
| Blue valves | Consider painting or replacing with copper/brass alternatives over time |
| Background blur | Slight — enough to remove distraction, not so much it looks fake |

**For indoor/hardware photography:**
- White or very light grey seamless background (studio standard)
- Even lighting — no harsh shadows across the filter housings
- Show the 3 filter stages clearly with enough separation to read each element
- Include the pressure gauge detail — it reads as technical authority
- Consider a labelled diagram overlay for the website product section

**What to avoid:**
- AI-generated imagery where the background is clearly artificial (visible tells: too-perfect grass, oversaturated greenery, American-style homes)
- The 3-panel blue filter unit in lifestyle contexts — it reads as industrial/lab
- US-style suburban homes with brick frontages and American landscaping
- Stock photography that any water filtration brand could use
- Photos with visible construction mess, rubbish, or unfinished surroundings

---

## 6. Lifestyle Imagery

### Direction

**Approved subjects:**
- People in showers — from the back/side, atmospheric, not overtly sexualised
- Hands under flowing tap water
- Glass of clear water being poured or held (clean, crystal clear — NOT murky)
- Kitchen or bathroom interiors — premium Melbourne aesthetic
- Morning routine scenes (clean, calm, aspirational)
- Families in kitchen settings (natural, not staged)

**Never:**
- Murky, brown, or contaminated-looking water (used in Ad 4 — this is specifically off-brand)
- Generic smiling stock families
- Fear-based imagery (danger icons, alarming visuals)
- US-style interiors (different cabinet style, different tap styles to Australian)

### Photography Treatment / Colour Grading

**Target look:** Slightly desaturated, cool-neutral to slightly warm. Clean. No heavy filters.

Think: Architectural Digest product photography meets premium Australian bathroom retailer.

Specifically:
- Highlights: Slightly lifted (airy feel)
- Shadows: Deep but not crushed — retain detail
- Saturation: -10 to -15% from base (natural, not punchy)
- Colour cast: Neutral to very slightly warm (not blue-tinted water brand cliché)
- Skin tones: Natural, healthy

**NOT:**
- Heavy vignettes
- Dramatic colour grading (orange-teal split, heavy greens)
- Oversaturated blues (looks like generic water ad)
- High contrast "Instagram" treatment

---

## 7. Ad Creative Visual System

### Current State Assessment

| Ad | Visual Quality | Brand Alignment | Recommendation |
|----|---------------|-----------------|----------------|
| Ad 1 & 2 (Blue/Price) | Low | ❌ Off-brand | Retire — price-led, generic blue, no logo |
| Ad 3 (Shower/Benefits) | Medium | ⚠️ Partial | Rebuild — good structure, remove price from visual |
| Ad 4 (Toxic Water) | Very Low | ❌ Severely off-brand | Retire immediately — contradicts every brand value |
| Ad 5 (Melbourne Only) | Medium-High | ⚠️ Partial | Rebuild — best visual, remove price, add logo + trust |

### New Ad Creative Direction

**What every ad must have:**
1. Neptune Filtration logo (top-left or bottom-right)
2. A single clear benefit or hook statement (headline)
3. Visual that matches the premium product/lifestyle direction
4. One CTA line (not a price)
5. Trust signal (at minimum: "WaterMark Certified" or "VIC Licensed & Insured")

**What no ad should have:**
- $2,895 as the primary or dominant visual element
- "TOXIC" or fear/danger imagery
- Discount framing ("Usually $3,995", "April Offer")
- Bright electric blue background (use neptune-deep instead)
- Heavy condensed all-caps typography for body content

### Ad Creative Framework — 4 Visual Templates

**Template A: Product in Context (Build on Ad 5's strength)**
```
Background:     Real installation photography (grey unit in Melbourne garden)
Logo:           Top-left, white on photo
Headline:       Single benefit or curiosity hook — NOT the price
                E.g., "Every tap. Every shower. Filtered."
Subtext:        1-line reinforcer — "Whole-home filtration for Melbourne homes"
Trust signal:   "WaterMark Certified · VIC Licensed & Insured" — bottom strip
CTA text:       "Book Your Free Water Test"
Style:          Photography-led, clean white typography, neptune-deep strip at bottom
```

**Template B: Lifestyle — Benefit-Led (Build on Ad 3's structure)**
```
Background:     Lifestyle photography (shower, kitchen, water)
Logo:           Top-left, white
Headline:       Benefit outcome — "Noticeably different water from day one"
Body:           3–4 benefit bullets with checkmarks (neptune-blue ticks)
Bottom strip:   neptune-deep background
                "Book Your Free Water Test" — CTA button
                "WaterMark Certified · VIC Licensed & Insured"
Style:          Dark/moody top half, dark navy bottom strip — sophisticated
Price:          Not shown
```

**Template C: Educational/Credibility (New direction)**
```
Background:     neptune-deep
Logo:           Top-left, white
Headline:       Curiosity or educational hook
                E.g., "Melbourne's water is safe. It's not optimal."
Body:           2–3 lines of educational context (what's in Melbourne water)
Trust signals:  WaterMark badge + VIC Licensed + 7-Year Warranty
CTA:            "Book a free water test — approximately 30 minutes"
Style:          Dark premium, credential-heavy — builds authority
Price:          Not shown
```

**Template D: Process/Transparency (New direction)**
```
Background:     Light/white or product imagery
Logo:           Top-left, neptune-deep
Headline:       "Free in-home water test. No obligation."
Body:           3-step visual: Test (5 min) → Results (10 min) → Options (15 min)
Trust signals:  Credentials row
CTA:            "Book Your Free Water Test →"
Style:          Clean, informational, removes objection before it forms
Price:          Not shown
```

### Colour Application for Ads

| Element | Colour |
|---------|--------|
| Dark background sections | `neptune-deep` (#0B1F3A) |
| Headline text on dark | White (#FFFFFF) |
| CTA button | `neptune-blue` (#1A5FA8) |
| CTA button text | White |
| Accent / key word highlight | `neptune-blue` or white (NOT yellow) |
| Checkmarks / ticks | `neptune-blue` or white |
| Trust signal text | White or `text-secondary` |
| Logo | White (on dark) / Dark (on light) |
| Photography overlay treatment | Neutral grade — see photography standards |

**Yellow is not a Neptune brand colour.** The yellow used in current ads is a generic
"discount retail" signal. Remove it from all future creative.

---

## 8. Social Media Creative Standards

### Format Requirements

| Placement | Dimensions | Safe Zone |
|-----------|-----------|-----------|
| Feed (1:1) | 1080 × 1080px | 108px all sides |
| Feed (4:5) | 1080 × 1350px | 108px all sides |
| Feed (tall) | 1080 × 1500px | 108px all sides |
| Stories / Reels (9:16) | 1080 × 1920px | 250px top + bottom |
| Facebook Marketplace / right column | 1200 × 628px | 80px all sides |

**Always design for mobile first.** Most Meta impressions are on mobile.
Check every creative at 375px width before exporting.

### Text on Image Rules

- Keep text to <20% of total image area (Meta policy + clarity)
- Never rely on text alone — the image must communicate if text is removed
- All text must pass contrast ratio — white on dark, dark on light only
- Video/Reels: assume no sound — all key messages must work as on-screen text

---

## 9. Icon & Badge Standards

### Trust Badge System

The three-credential trust bar is the most important recurring visual element.
It must appear identically across all channels:

```
[ WaterMark Shield Icon ]    [ Tick Icon ]              [ Shield/Ribbon Icon ]
WaterMark Certified          VIC Licensed & Insured      7-Year Workmanship
AS 3497                                                   Warranty
```

**Icon style:** Simple line icons, not filled/solid. Clean, professional.
**Colour on dark:** White icons and text
**Colour on light:** `neptune-deep` icons and text, or `neptune-blue` for the icons

### Checkmark / Benefit List Style

- Icon: Simple tick/checkmark in a circle or standalone
- Colour: `neptune-blue` on light backgrounds, white on dark
- Never use red X marks for competitor comparisons (aggressive, off-brand)
- Use grey or muted tone for "not included" comparisons

---

## 10. Visual Identity Governance

### Before Creating Any Visual Asset

1. **Check this file first**
2. Confirm the product visual being used is the correct, agreed version
3. Use the `neptune-deep` background — not bright electric blue
4. Include the Neptune logo on every ad and printed piece
5. Include at minimum one trust credential
6. Do not use price as the primary visual element
7. Match the typography to the website's typeface
8. Run the premium brand test: "Would this appear in a premium Melbourne home publication?"

### Asset Naming Convention

```
neptune_[channel]_[format]_[description]_[version].[ext]

Examples:
neptune_meta_1080x1350_shower-benefits_v1.png
neptune_meta_1080x1920_product-context_v2.png
neptune_google_display_education-hook_v1.jpg
neptune_print_a4-brochure_install-process_v1.pdf
neptune_email_header_welcome-sequence_v1.png
```

### Approval Checklist (For Any New Creative)

Before any ad or visual asset goes live:

- [ ] Neptune logo present at correct size
- [ ] Colour matches neptune-deep / neptune-blue system (not bright blue)
- [ ] Typography matches website typeface (not condensed/impact style)
- [ ] No price shown as primary visual element
- [ ] No fear/toxic/danger imagery or language
- [ ] At least one trust credential visible
- [ ] CTA is benefit-led (not price-led)
- [ ] Tested at mobile size (375px or 1080×1350px)
- [ ] Photography treatment matches brand grade standard
- [ ] Premium brand test passed
