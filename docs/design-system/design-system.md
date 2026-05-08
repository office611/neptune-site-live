# Neptune Filtration — Master Design System

**Status:** Documentation only. No live changes.
**Purpose:** Single source of truth for all visual, typographic, and messaging standards.
**Applies to:** Website, ads, email, SMS, print, brochures, landing pages.

---

## 1. Brand Identity Summary

Neptune Filtration is a premium, single-product Melbourne water filtration specialist.
The brand aesthetic should feel: calm authority, premium clarity, honest professionalism.

Reference aesthetic: European appliance brands (Miele, Zip HydroTap) — not tradie brands,
not clinical medical brands, not generic home services.

**The aesthetic test:** Would this look at home in a high-end Melbourne kitchen showroom?
If yes — proceed. If it looks like a plumber's flyer — redesign it.

### Confirmed from Asset Audit (May 2026)

The existing Facebook ads reveal several deviations from the intended premium brand:
- Bright electric blue backgrounds (not the brand colour — do not replicate)
- Heavy condensed all-caps typography (not the brand typeface — do not replicate)
- Yellow as a price callout colour (not a Neptune brand colour — retire this)
- Missing Neptune logo on all 5 ads (all future ads must carry the logo)
- Fear-based creative (Ad 4 — "Stop Drinking Toxic Water") — retired, never replicate
- Price as primary visual message — retired, never replicate

The website's visual system (deep navy, clean white, blue accent, premium photography)
is the correct reference. Ads must align to the website, not the other way around.

**Copper as a subtle brand accent:** The Neptune system's copper pipe fittings appear
consistently across installation imagery. This distinctive detail is worth echoing
subtly in design elements (rule lines, icon strokes, small accents). One touch is enough.

---

## 2. Colour System

### Primary Tokens

| Token Name | Approximate Value | Usage |
|-----------|-------------------|-------|
| `neptune-deep` | Dark navy — confirm exact from CSS (approx #0B1E3D) | Hero backgrounds, dark sections, footer |
| `neptune-blue` | Brand blue — confirm exact from CSS (approx #1A6FB0) | CTA buttons, links, accents |
| `neptune-blue-light` | Lighter blue — confirm from CSS (approx #2B89CC) | Hover states, secondary accents |
| `surface-white` | #FFFFFF | Content section backgrounds |
| `surface-off-white` | #F7F9FC | Alternate section backgrounds, cards |
| `surface-card` | #EEF3F9 | Stat boxes, info cards |
| `text-primary` | #0B1E3D (same as neptune-deep) | Primary body text |
| `text-secondary` | #4A5C70 | Secondary body text, captions |
| `text-muted` | #8196A8 | Fine print, labels, timestamps |
| `text-on-dark` | #FFFFFF | All text on dark/navy backgrounds |
| `border-subtle` | #DCE6EF | Card borders, dividers |
| `success-green` | #2D8A4E | Checkmarks, confirmation states |
| `warning-amber` | #D97706 | Caution callouts (use sparingly) |

**Important:** Confirm all hex values against Neptune's actual CSS/Figma files.
The above are approximations based on observed site screenshots. Do not use in production
without confirming against the actual brand files.

### Colours That Are NOT Part of the Neptune Brand

These colours appear in existing ad assets and must be retired:

| Colour | Appears In | Why to Retire |
|--------|-----------|---------------|
| Bright electric blue (~#1A7FD4) | Ads 1 & 2 backgrounds | Generic, cheap, mismatches website |
| Yellow (~#FFD700) | Price callouts across all ads | Retail/discount signal, not premium |
| Black with danger/warning red | Ad 4 contaminant badges | Fear-based, off-brand |

Future creative uses `neptune-deep` (dark navy) as the primary dark,
`neptune-blue` (the measured brand blue) as the accent, and white for text.
Yellow is not used. Bright electric blue is not used.

### Colour Usage Rules

**Backgrounds:**
- Dark hero sections → `neptune-deep`
- Content sections (default) → `surface-white`
- Alternating sections → `surface-off-white`
- Stat/callout cards → `surface-card`

**Text:**
- Headings on white → `text-primary`
- Body on white → `text-primary` or `text-secondary`
- All text on dark backgrounds → `text-on-dark`
- Never place `text-secondary` or `text-muted` on dark backgrounds — low contrast

**Buttons:**
- Primary CTA → `neptune-blue` background, `text-on-dark` text
- Primary CTA hover → `neptune-blue-light`
- Secondary/ghost → transparent, `neptune-blue` border and text
- Disabled → `border-subtle` background, `text-muted` text

**Trust/Certification elements:**
- WaterMark badge → dark text on `surface-card` or white on `neptune-deep`
- Checkmark icons → `success-green`

### Accessible Contrast Minimums (WCAG AA)
- `text-primary` on `surface-white` → passes ✓
- `text-on-dark` on `neptune-deep` → passes ✓
- `neptune-blue` on `surface-white` for large text → verify ratio (target ≥ 4.5:1)
- Never use `text-muted` on coloured backgrounds

---

## 3. Typography System

### Logo Typeface — What It Tells Us

The NEPTUNE wordmark uses a **bold geometric sans-serif with rounded stroke terminals.**
It is heavy weight (Black or ExtraBold), all caps, with tight letter-spacing.
Closest commercial matches: Nunito Black, Poppins ExtraBold, or a custom variant of
a geometric rounded face.

**This has two important implications for the body typeface:**

1. The website/ad body typeface should be from the **same geometric sans-serif family** if possible,
   used at lighter weights (Regular, Medium, SemiBold) — this creates typographic coherence
   between the logo and the content.

2. The body typeface must **not compete** with the logo. If headlines are set in the
   same heavy weight as the wordmark, they will visually fight the brand mark. Use
   the logo weight only for the logo itself.

**Recommended approach:** Confirm the exact logo font with the designer. If it is Poppins ExtraBold
(or similar), use Poppins Regular/Medium/SemiBold for body text, and Poppins Bold for
headlines — creating a unified single-family system at different weights.

**Descriptor type:** The `Whole Home Filtration` descriptor uses a lighter, wider-tracked
sans-serif. This could be the same family at Regular weight with increased letter-spacing,
or a paired secondary typeface for elegance.

### Font Stack

**Confirm actual fonts from Neptune's CSS and logo source file.**
Based on the logo aesthetic and site observation, the most likely candidate is:
- **Poppins** — geometric rounded sans-serif, available in ExtraBold (matches logo feel),
  excellent at all weights, widely available in web/Google Fonts, good Latin coverage

Secondary candidates:
- **Nunito** — rounder terminals, very friendly but slightly less authoritative
- **Plus Jakarta Sans** — modern premium, slightly more editorial feel

**Fallback stack (in CSS):** `[PrimaryFont], -apple-system, BlinkMacSystemFont, 'Segoe UI', sans-serif`

**Action:** Extract the font name from Neptune's website CSS or ask the designer/developer.
Once confirmed, update this document and all channel standards with the exact font name.

### Type Scale

| Token | Size (desktop) | Size (mobile) | Weight | Line Height | Usage |
|-------|---------------|---------------|--------|-------------|-------|
| `display` | 56–64px | 36–40px | 700 | 1.1 | Hero H1 only |
| `h1` | 44–52px | 32–36px | 700 | 1.15 | Page headlines |
| `h2` | 32–38px | 26–30px | 600–700 | 1.2 | Section headlines |
| `h3` | 24–28px | 20–24px | 600 | 1.25 | Sub-section heads, card titles |
| `h4` | 18–20px | 16–18px | 600 | 1.3 | Labels, small headings |
| `body-lg` | 18px | 16px | 400 | 1.65 | Key body paragraphs |
| `body` | 16px | 15px | 400 | 1.65 | Standard body text |
| `body-sm` | 14px | 13px | 400 | 1.6 | Secondary copy, captions |
| `label` | 12–13px | 12px | 500–600 | 1.4 | Badges, tags, fine print |
| `cta` | 16–18px | 15–16px | 600 | 1.2 | Button text |

### Typography Rules

**Headlines:**
- Never more than 12 words in a headline
- Use sentence case (not Title Case Everywhere)
- Headlines on dark backgrounds: always `text-on-dark`, never blue
- Headlines should be the largest visible element above the fold

**Body text:**
- Minimum `body` (16px) for main content
- Never below 14px on mobile for any readable content
- Max line length: 65–70 characters for comfortable reading (roughly 620–680px container)
- Left-aligned always (never centred for body paragraphs)

**CTA buttons:**
- `cta` weight — visually prominent, never light or thin
- All caps ONLY if the brand font is too short for normal case — otherwise sentence case
- Never italic

**Stat callouts (e.g., "6×", "10 min"):**
- Large figure: `display` or `h1` weight 700
- Descriptor: `body-sm` or `label`
- Used only when the stat is genuinely striking and verified

---

## 4. Spacing System

### Base Grid: 4pt

All spacing values are multiples of 4px. This creates visual rhythm and makes
components composable without arbitrary measurements.

### Spacing Scale

| Token | Value | Usage |
|-------|-------|-------|
| `space-1` | 4px | Icon gaps, tight inline spacing |
| `space-2` | 8px | Between labels and content |
| `space-3` | 12px | Small internal padding |
| `space-4` | 16px | Default internal padding, mobile section gaps |
| `space-5` | 20px | Form field gaps |
| `space-6` | 24px | Card padding, mobile spacing |
| `space-8` | 32px | Component internal spacing |
| `space-10` | 40px | Between sections (mobile) |
| `space-12` | 48px | Component groups |
| `space-16` | 64px | Section padding (mobile) |
| `space-20` | 80px | Section padding (desktop) |
| `space-24` | 96px | Large section gaps |
| `space-32` | 128px | Hero padding, major section breaks |

### Section Padding Standards

| Context | Desktop | Mobile |
|---------|---------|--------|
| Hero section | 96–128px vertical | 64–80px vertical |
| Standard content section | 80px vertical | 56–64px vertical |
| Compact section (stats, trust bar) | 48–64px vertical | 40–48px vertical |
| Card internal padding | 32–40px | 24–32px |
| Button padding | 14–16px vertical / 28–32px horizontal | 12–14px vertical / 24px horizontal |
| Form input padding | 14–16px vertical / 16–20px horizontal | 12–14px vertical / 16px horizontal |

### Container Widths

| Context | Max Width |
|---------|-----------|
| Content body (text) | 680px |
| Standard content container | 1100px |
| Full-width hero | 100% with internal max 1200px |
| Card grids | 1100px with internal 3-col (→ 1-col mobile) |

### Mobile Breakpoints

| Breakpoint | Width | Behaviour |
|-----------|-------|-----------|
| Mobile | <640px | Single column, full-width elements |
| Tablet | 640–1024px | 2-column grids, adjusted type scale |
| Desktop | >1024px | Full layout |

**Mobile-first rule:** Design for 375px width first. Scale up, not down.

---

## 5. Component Standards

### 5.1 Primary CTA Button

```
Background:    neptune-blue
Text:          text-on-dark (white)
Font:          cta weight (600), 16–17px
Padding:       14px top/bottom, 28–32px left/right
Border-radius: 6–8px (confirm from current site)
Min-width:     200px (desktop), full-width on mobile
Hover:         neptune-blue-light background, slight shadow lift
Active:        slightly darker blue
Shadow:        0 2px 8px rgba(0,0,0,0.15) — subtle depth

Mobile:        Full width (100%), 14px vertical padding
```

**Never:**
- Use more than one primary CTA button per section
- Use competing colours for primary buttons
- Truncate CTA text

### 5.2 Secondary / Ghost Button

```
Background:    transparent
Border:        1.5px solid neptune-blue
Text:          neptune-blue
Font:          cta weight (600), 16px
Padding:       same as primary
Border-radius: same as primary
Hover:         light neptune-blue tint background

Used for:      secondary actions only — never competing with primary CTA
```

### 5.3 Trust Badge / Credential Bar

Single-row horizontal strip of credentials. Appears in hero sections and near CTAs.

**Standard trust bar format (confirmed real credentials only):**
```
| WaterMark Certified AS 3497 | VIC Licensed & Insured | 7-Year Workmanship Warranty |
```

**Styling:**
```
Background:    surface-card or transparent on dark
Font:          label (12–13px, 500 weight)
Icons:         Simple line icons — shield, certificate, tick
Icon colour:   neptune-blue (on light) or text-on-dark (on dark)
Layout:        Horizontal flex, centred, wrap to 2-cols on mobile
Divider:       light border-subtle between items (desktop only)
```

**Rule:** These three credentials appear in this exact format on every page, every channel.
Do not use different wording, different order, or different combinations across pages.

### 5.4 Stat Callout

Used for high-impact verified statistics (e.g., the 6× chlorine shower stat).

```
Layout:        3-column grid (→ single column mobile, stacked)
Figure:        display weight (700), neptune-blue or text-on-dark
Descriptor:    body-sm, text-secondary or text-on-dark
Container:     surface-card background (on white sections)
Padding:       space-8 internal
Max 3 stats per row — never more
```

**Rule:** Only use stats that are verified and citable. Never invent statistics.

### 5.5 Testimonial Card

```
Background:    surface-white or surface-off-white
Border:        1px border-subtle
Border-radius: 8–10px
Padding:       space-8 (32px)
Star rating:   display as ★★★★★ — gold/amber colour
Name:          h4 weight, text-primary
Location:      label weight, text-secondary
Quote:         body (16px), text-secondary, italic preferred
Layout:        2–3 col grid (desktop), single col (mobile)
```

**Rule:** Only use genuine, real testimonials from actual customers.
Name + Melbourne suburb required. Never fabricate. Use sparingly until volume builds.
While review volume is low, lead with certifications and process transparency instead.

### 5.6 Process Step

Used for "How it works" and appointment walk-throughs.

```
Step number:   h2 or h1 weight, neptune-blue
Step title:    h3 weight, text-primary
Step body:     body, text-secondary
Layout:        3-col grid (desktop), vertical stack (mobile)
Connector:     subtle line or arrow between steps (desktop)
```

### 5.7 Form — Booking Form

```
Input fields:
  Background:    surface-white
  Border:        1.5px border-subtle
  Border-radius: 6px
  Padding:       14px vertical, 16px horizontal
  Font:          body (16px)
  Focus state:   neptune-blue border, light blue shadow
  Error state:   warning-amber border, error message below field
  Label:         label (13px, 500), above field, text-primary

Submit button: primary CTA button (full-width on mobile)
Form width:    max 480px (desktop), full-width (mobile)
Field gap:     space-5 (20px) between fields
```

**Required fields for booking form:**
- Name (first name minimum)
- Phone
- Email
- Postcode
- Submit: "Book My Free Water Test"

**Post-submit:** Inline confirmation message — no full page redirect.
Copy: "You're booked. We'll call within [X] hours to confirm your appointment."
(More specific than current "We'll contact you shortly")

### 5.8 Section Header

Reusable headline + subheadline component for section openers.

```
Label (optional): label size, neptune-blue, uppercase, 1–3 words (e.g., "WHY IT MATTERS")
Headline:         h2, text-primary (or text-on-dark on dark backgrounds)
Subheadline:      body-lg, text-secondary (or text-on-dark at 80% opacity)
Max width:        680px, centred for intro sections
Alignment:        Centre for intro/hero sections; left for content sections
Gap below:        space-12 (48px) before section content
```

### 5.9 Footer

Current footer is critically sparse. Standard footer should contain:

```
Left column:
  - Neptune Filtration logo
  - "Melbourne's Water Specialists."
  - ABN (if published)

Middle column:
  - Navigation: Home, Replacement Filters, [future pages]

Right column:
  - Phone: 03 9122 5243
  - Email: office@neptunefiltration.com.au
  - [Social links if applicable]

Bottom bar:
  - © 2025 Neptune Filtration. Melbourne, VIC.
  - [Privacy Policy link] · [Terms link] (when pages exist)

Trust bar (above footer, full-width):
  WaterMark Certified AS 3497 | VIC Licensed & Insured | 7-Year Workmanship Warranty
```

**Mobile:** Stack all columns vertically, phone and email as tappable links.

### 5.10 Header / Navigation

```
Background:    transparent (over hero) or neptune-deep
Logo:          left-aligned, white version on dark
Phone number:  03 9122 5243 — visible in desktop header, tap-to-call on mobile
CTA button:    "Book Free Test" — ghost/white version on dark header
Mobile:        hamburger menu, phone number as prominent tap-to-call link
```

**Rule:** The phone number must be in the header on all pages. It's the fastest trust signal
for a business that enters people's homes.

---

## 6. Messaging Hierarchy

### Universal Page Structure

Every page follows this priority order for content:

```
1. PAIN or CONTEXT  — What problem exists or what situation they're in
2. MECHANISM        — How Neptune addresses it (the system, the process)
3. PROOF            — Why to trust Neptune (certifications, warranty, process)
4. OFFER            — What they get and how to get it (free test / filter purchase)
5. CTA              — The single action to take
```

This applies whether it's a homepage, a landing page, an email, or an ad.
The ratio of each element changes by page purpose — but the order never reverses.

### Pain-First Rule

The problem must be introduced before the solution.
Never open a page with product features. Open with context or relevance.

**Example:**
- Wrong: "Neptune's 5-1-1 Micron System — 3 stage filtration for your home"
- Right: "Melbourne's water meets the standard. It doesn't meet yours."

### One CTA Per Page Section

Each section has at most one primary CTA.
A page may have the same CTA repeated at multiple scroll depths — but it is the same CTA.
Never present two competing CTAs at the same visual level on a page.

---

## 7. CTA Framework

### Canonical CTAs by Funnel Stage

These are the exact, approved CTA strings. Use them verbatim. Do not vary wording
across channels without an explicit decision to test a variation.

| Funnel Stage | Primary CTA | Secondary CTA |
|-------------|-------------|---------------|
| Awareness (ads, social) | "Book Your Free Water Test" | "See How It Works" |
| Homepage | "Book Your Free Water Test" | "See What We Remove" |
| Landing pages | "Book My Free Water Test" | (none — single CTA) |
| Pre-appointment page | (no primary purchase CTA — this is a nurture page) | "See What to Expect ↑" |
| Filter reorder | "Buy Replacement Filters" | (none) |
| Email (nurture) | "Book Your Free Water Test" | "Read More" |
| SMS | "Book: [link]" | (none) |
| Print/brochure | "Book at neptunefiltration.com.au" | "Call 03 9122 5243" |

### CTA Rules

1. **"Book Your" on all brand-voice copy** (ads, organic, homepage)
2. **"Book My" on landing pages only** (first-person increases conversion on direct-response pages)
3. **Never:** "Submit", "Click Here", "Learn More" as a primary CTA
4. **Always include "Free"** — it is the primary objection removal word
5. **Near every primary CTA:** one trust signal minimum (e.g., "No obligation")
6. **Mobile CTAs:** full width, minimum 48px tap height, never truncated

### Supporting Micro-Copy Near CTAs

Choose one of these for each CTA placement:

- "No obligation. No pressure."
- "WaterMark Certified. VIC Licensed & Insured."
- "Approximately 30 minutes. At your home."
- "7-year workmanship warranty."
- "Free. At your home. No commitment."
- "03 9122 5243 — or book online."

---

## 8. Trust Framework (Early-Stage Business)

Since Neptune is early-stage with limited review volume, trust is built through
the following mechanisms in priority order:

### Tier 1 — Institutional Credentials (Always lead with these)

1. **WaterMark Certified (AS 3497)** — Australian regulatory standard. Non-negotiable.
2. **VIC Licensed & Insured** — Professional accountability. Customers invite us into their homes.
3. **7-Year Workmanship Warranty** — Financial commitment from Neptune. Signals confidence.

**Usage:** These three credentials appear together in every header trust bar,
every email footer, every ad description line, every brochure.

### Tier 2 — Process Transparency

People trust what they can predict. Show the process:
- Step-by-step appointment walk-through
- Exact timing ("first 5 minutes... next 10 minutes... final 15 minutes")
- "No obligation to decide on the day" — stated explicitly
- "You are always in control"

**Usage:** Pre-appointment page, homepage "how it works" section, email sequences.

### Tier 3 — Educational Authority

Teaching = trust. Neptune explains water quality factually.
- Melbourne water quality context (what's in it, why it's treated)
- The 6× chlorine shower stat (cite source when possible)
- Filter stage explanations (what each stage removes and why)
- Annual replacement importance and why (warranty, performance)

**Usage:** Homepage, blog posts, email nurture sequence, pre-appointment page.

### Tier 4 — Genuine Social Proof (Use What's Real)

- Real testimonials: name + suburb + specific outcome (use only if genuine)
- Real before/after imagery from actual installations
- Real suburb service coverage (name suburbs served)

**Do NOT:**
- Fabricate testimonial names or locations
- Show a high Google review count that doesn't exist
- Use generic stock testimonial photos

### Tier 5 — Brand Presence Signals

- Professional photography (system, installs, team)
- Consistent premium visual design
- Detailed, accurate product specifications
- Responsive, fast website
- Phone number and email on every page (removes doubt about legitimacy)
- Australian business, local Melbourne team

### Trust Signal Placement Rules

| Location | Trust Signals to Include |
|----------|--------------------------|
| Page header | Phone number (03 9122 5243) |
| Hero section trust bar | WaterMark · VIC Licensed & Insured · 7-Year Warranty |
| Near booking form | All 3 Tier 1 credentials + "No obligation" |
| Footer | Phone · Email · WaterMark · © + location |
| Email footer | WaterMark · VIC Licensed & Insured · 7-Year Warranty · Phone |
| Ad copy | 1–2 credentials maximum (character limits) |
| SMS | None (too brief) — lead with action |

---

## 9. Mobile UX Standards

### Mobile-First Priority Rules

1. **Hero CTA must be visible without scrolling** on all phones ≥ 375px wide
2. **Phone number must be a tap-to-call link** on mobile: `<a href="tel:0391225243">`
3. **Buttons:** minimum 48px tap height, full width in most contexts
4. **Text:** minimum 15px on mobile — never smaller for primary content
5. **Forms:** single-column only on mobile, large input fields, no side-by-side
6. **Images:** lazy-loaded, appropriately sized for mobile (not desktop crops)
7. **Navigation:** hamburger on mobile with phone number prominent in menu
8. **No horizontal scroll** — test all pages at 375px

### Mobile Loading Standards

- Target LCP (Largest Contentful Paint): < 2.5 seconds on 4G
- Hero image: compressed, WebP preferred, max 200KB
- No heavy JavaScript in the critical path
- Google PageSpeed Insights mobile score target: 80+

---

## 10. Photography & Imagery Standards

### Style Direction

- **Premium Australian home interiors** — not generic stock homes
- **Real water filtration systems** — the actual Neptune unit, not stock hardware
- **Water in motion** — flowing, dripping, poured — not stagnant
- **People:** real team members, real customers (with permission) — not stock photo models
- **Before/after installs** — show the pipe connection, the mounted unit, the finished job

### Image Don'ts

- No smiling stock families with perfect teeth
- No watermarks or licensed stock imagery visible
- No blurry or low-resolution product shots
- No dark/muddy images in content sections (dark is for hero backgrounds only)

### Alt Text Standard

Every image must have descriptive alt text for accessibility and SEO:
- Format: `[what is shown] + [context]`
- Example: `Neptune 20" whole-home water filter installed on mains pipe in Melbourne home`
- Never: `image1.jpg` or `water filter`

---

## 11. Animation & Interaction Standards

Keep interactions minimal. Premium brands don't rely on gimmicks.

**Acceptable:**
- Subtle fade-in on scroll (0.3–0.4s, opacity 0 → 1)
- Button hover: colour shift + subtle shadow (0.15s)
- Form field focus: border colour change (0.2s)

**Not acceptable:**
- Parallax that jitters on mobile
- Autoplay video with sound
- Popups that trigger immediately on page load
- Countdown timers (unless genuinely time-limited)
- Rotating/spinning badge animations

---

## 12. Design System Governance

**Before creating any new page or asset:**
1. Open this file first
2. Confirm the funnel stage and page purpose
3. Use the messaging hierarchy for that funnel stage
4. Apply the canonical CTA for that stage
5. Use only approved trust signals
6. Apply the colour tokens, type scale, and spacing system
7. Test on mobile at 375px before finalising

**Version note:** This is v1.0, created May 2026. Review quarterly or when new products
or services are added.
