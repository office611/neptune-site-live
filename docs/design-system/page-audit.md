# Neptune Filtration — Live Page Audit & Recommendations

**Status:** Documentation only. No live changes.
**Date:** May 2026
**Pages audited:**
- https://neptunefiltration.com.au/ (Homepage)
- https://neptunefiltration.com.au/preappointment (Pre-Appointment)
- https://neptunefiltration.com.au/replacement-filters (Replacement Filters)

**Method:** Full page content extraction, structured audit against design system standards.

---

## Audit Summary — Issues by Priority

| # | Issue | Pages | Priority | Type |
|---|-------|-------|----------|------|
| 1 | No phone number on any page | All | Critical | Trust |
| 2 | No email address on any page | All | Critical | Trust |
| 3 | Appointment time inconsistency (25–30 min vs 30–60 min) | Pre-appt | Critical | Accuracy |
| 4 | Trust signals differ in wording across all 3 pages | All | High | Consistency |
| 5 | CTA copy inconsistency (Book Your vs Book My — same page) | Homepage | High | Consistency |
| 6 | Footer critically sparse — no contact, no nav, no trust | All | High | Trust/UX |
| 7 | Review count missing from homepage | Homepage | Medium | Trust |
| 8 | "20% off" framing misaligned with no-pressure messaging | Pre-appt | Medium | Messaging |
| 9 | Form confirmation message too vague | Homepage | Medium | UX |
| 10 | No explicit contact method for support/questions | All | Medium | Trust/UX |
| 11 | No navigation links in header (beyond logo) | All | Low | UX |
| 12 | Pre-appt: no social proof visible above fold | Pre-appt | Low | Trust |

---

## Page 1: Homepage (neptunefiltration.com.au/)

### Purpose (Confirmed)
Educate → Build trust → Drive booking for free water test

### What's Working Well

- Hero headline "Your water is safe. But it's not optimised." — excellent reframe, keep exactly
- Pain section headline "Melbourne's water meets standards. It doesn't meet yours." — specific, compelling
- 6× chlorine shower stat — verified, specific, stops scrolling
- Four "What Changes" benefit categories — well-structured, benefit-led
- Three real testimonials with name + suburb — credible format
- "No obligation" messaging near form — reduces friction correctly
- WaterMark Certified + VIC Licensed & Insured in trust bar — right credentials, right placement
- Inline form confirmation message — good UX, keep

---

### Issues & Recommendations

---

#### ISSUE 1 — No Phone Number Displayed
**Impact:** Critical — customers who are considering inviting a stranger into their home
need to know they can call you. No phone = the site feels anonymous.

**Current state:** Phone number 03 9122 5243 does not appear anywhere on the page.

**Recommendation:**
Add `03 9122 5243` to:
1. Page header (right side, desktop) — as a tap-to-call link on mobile
2. Footer (contact column)
3. Near the booking form (as a secondary option: "Prefer to call? 03 9122 5243")

**Suggested copy near form:**
> "Prefer to call us directly? 03 9122 5243"

---

#### ISSUE 2 — No Email Address Displayed
**Impact:** High — some customers prefer email for initial contact.
Also, a visible email adds legitimacy (real business with real contact details).

**Current state:** Email not visible on any page.

**Recommendation:**
Add `office@neptunefiltration.com.au` to the footer. Does not need to be in the header.

---

#### ISSUE 3 — CTA Copy Inconsistency on Same Page
**Impact:** High — small inconsistencies erode subconscious trust.

**Current state:**
- Hero button: "Book Your Free Water Test"
- Form submit button: "Book My Free Water Test"

**Recommendation:**
These serve slightly different psychological roles:
- "Book Your" — works for buttons that link away from the form (ads, hero CTAs pointing to a form elsewhere)
- "Book My" — works best on the submit button of the form itself (first-person increases conversion)

**Standardise:**
- Hero CTA → "Book Your Free Water Test" (keep as-is)
- Form submit → "Book My Free Water Test" (keep as-is)
- These two ARE intentionally different by design system rules — this is acceptable.
- However, if there are additional CTA instances mid-page, they should all read "Book Your Free Water Test"

---

#### ISSUE 4 — Trust Bar Wording Inconsistency
**Impact:** Medium — the same credentials should read identically across the entire site.

**Current state (homepage):**
- "VIC Licensed & Insured"
- "WaterMark Certified"
- "No obligation statement" [not a credential — a reassurance]
- "★★★★★ 5.0 Google Rating" [no count]

**Recommended standard trust bar:**
```
WaterMark Certified AS 3497 · VIC Licensed & Insured · 7-Year Workmanship Warranty
```

**Notes:**
- "No obligation" is a reassurance, not a credential — move it to below the CTA button as micro-copy, not in the trust bar
- Since the business is early-stage, avoid leading with a star rating without a count — it raises the question "how many?"
- Until review volume is meaningful, replace the star rating in the trust bar with the workmanship warranty
- The star rating can return to the trust bar when the review count is strong enough to display

---

#### ISSUE 5 — Form Confirmation Message Too Vague
**Impact:** Medium — "We'll contact you shortly" creates uncertainty (shortly = when? how?)

**Current state:** "You're booked. We'll contact you shortly to confirm your water test."

**Recommendation:**
> "You're booked. We'll call you at [phone they entered] within 2 business hours to confirm your appointment time."

Or if same-day callback is the norm:
> "Done. Expect a call from 03 9122 5243 within a few hours."

Adding the specific callback phone number reassures them the call isn't spam.

---

#### ISSUE 6 — Footer Too Sparse
**Impact:** High — minimal footer signals a site that isn't fully developed.
It also removes the last trust signal before a visitor leaves.

**Current state:** Logo + "© 2025 Neptune Filtration. Melbourne, VIC." + Replacement Filters link only.

**Recommended footer structure:**
```
[Neptune Filtration Logo]
"Melbourne's Water Specialists."

Navigation:          Contact:                    Credentials:
Home                 03 9122 5243                WaterMark Certified AS 3497
Replacement Filters  office@neptunefiltration     VIC Licensed & Insured
[Future pages]       .com.au                     7-Year Workmanship Warranty

─────────────────────────────────────────────────
© 2025 Neptune Filtration. Melbourne, VIC. · Privacy Policy · Terms
```

---

#### ISSUE 7 — Review Count Not Shown
**Impact:** Medium — homepage says "★★★★★ 5.0 Google Rating" without a count.
A rating without a count is less convincing than a rating with one.

**Recommendation — two options:**

Option A: Add the real count (e.g., "★★★★★ 5.0 · 12 Google reviews")
Even a small but real number is more credible than a count-free rating.

Option B (recommended for early stage): Remove the star rating from the hero trust bar entirely.
Replace with: `7-Year Workmanship Warranty` which is a stronger differentiator at low review volume.
Keep testimonial cards in the social proof section — these are real and named.
As review volume grows, reintroduce the Google rating count in the trust bar.

---

### Homepage — Section-by-Section Verdict

| Section | Status | Action |
|---------|--------|--------|
| Header | ⚠️ Missing phone | Add 03 9122 5243 |
| Hero | ✅ Strong | Standardise trust bar (remove star rating from bar) |
| "What's in Your Water" | ✅ Keep | No changes |
| Stats (6×, 10 min, 100s) | ✅ Keep | Verify sources are citable |
| Product section | ✅ Keep | No changes |
| "The Neptune System" | ✅ Keep | Minor: add "Under 2 hours" to install messaging |
| "What Changes" | ✅ Keep | No changes |
| Testimonials | ✅ Keep | Consider adding a 4th over time |
| Booking form | ⚠️ Improve | Add phone call option + improve confirmation copy |
| Footer | ❌ Needs rebuild | Add contact details, nav, trust bar |

---

## Page 2: Pre-Appointment (neptunefiltration.com.au/preappointment)

### Purpose (Confirmed)
Pre-frame the appointment → Build trust before arrival → Educate on water quality →
Reduce objections → Increase close rate at in-home visit

### What's Working Well

- "Appointment Confirmed" headline — clear and reassuring
- 3-step appointment process (5 min → 10 min → 15 min) — excellent transparency
- "No surprises, no hard sells, and no pressure" — right tone for this page
- Melbourne water quality profile section — educational, builds credibility
- Comparison table (tap filters vs inline vs whole-home) — good decision support
- "You are never obligated to decide on the day" — important objection removal
- 10 suburb-specific testimonials — strong local relevance
- "Why Neptune" section — good competitive positioning
- Flexible payment / 0% interest mention — reduces cost objection pre-visit

---

### Issues & Recommendations

---

#### ISSUE 1 — Critical: Appointment Time Inconsistency
**Impact:** Critical — creates confusion and can damage trust if the actual appointment
runs at a different length than expected.

**Current state:**
- Hero/top of page: "Takes around 25–30 minutes"
- "Before We Arrive" section: "Total time: 30–60 minutes"
- These two statements contradict each other on the same page.

**Confirmed correct answer (per business owner):** Approximately 30 minutes

**Recommendation:**
Standardise to "approximately 30 minutes" everywhere:
- Top of page: "Approximately 30 minutes — at your home."
- "Before We Arrive" section: "Total time: approximately 30 minutes"
- Step breakdown: First 5 minutes / Next 10 minutes / Final 15 minutes = 30 total ✓

**Cross-channel:** Update all ads, emails, and SMS to say "approximately 30 minutes" too.

---

#### ISSUE 2 — "20% Off" Framing Misaligned with No-Pressure Messaging
**Impact:** Medium — the statement "Your appointment qualifies for 20% off — please ensure
all decision-makers are present" appears once and feels like a pressure tactic.

It directly contradicts the repeated "no obligation / no hard sell / no pressure" messaging
that runs throughout the rest of the page.

**Current state:** One mention of 20% off, tied to having all decision-makers present.

**Recommendation — Option A (preferred):**
Remove the "20% off" trigger entirely from this page.
If discounting is used in the sales process, deliver it verbally at the appointment.
This page's job is to reduce anxiety — not introduce sales conditions.

**Recommendation — Option B:**
If the discount is important to maintain, reframe it to remove the conditional pressure:
> "As a thank-you for taking the time to learn about your water quality, we're happy
> to include a discount on the day. We just find these conversations go best when
> the household can make decisions together."

This softens the demand while preserving the intent.

---

#### ISSUE 3 — No Phone Number or Contact Option
**Impact:** High — a customer who has just booked and is reading this page might have
a question or concern. There's no visible contact method.

**Recommendation:**
Add a contact section near the bottom of the page:
> "Questions before your appointment?
> Call us: 03 9122 5243
> Email: office@neptunefiltration.com.au"

Or embed it in the closing section as a reassurance:
> "If anything comes up before we arrive, we're always happy to chat.
> 03 9122 5243 | office@neptunefiltration.com.au"

---

#### ISSUE 4 — Footer Too Sparse
Same as homepage. See Footer recommendation above.

---

#### ISSUE 5 — No Trust Credentials Visible Above Fold
**Impact:** Low-Medium — the trust badge row appears lower on the page, not at the very top.

**Recommendation:**
Consider a minimal trust bar immediately below the "Appointment Confirmed" hero
that shows the 3 credentials. This reassures them immediately after booking:
```
WaterMark Certified AS 3497 · VIC Licensed & Insured · 7-Year Workmanship Warranty
```

---

### Pre-Appointment Page — Section Verdict

| Section | Status | Action |
|---------|--------|--------|
| Hero | ⚠️ Time inconsistency | Fix to "approximately 30 minutes" |
| Trust badge row | ✅ Keep | Standardise wording (see design system) |
| Appointment steps | ✅ Keep | Confirm "30 min total" in this section |
| Melbourne water profile | ✅ Keep | No changes |
| Filtration comparison table | ✅ Keep | No changes |
| Chlorine stat | ✅ Keep | No changes |
| Social proof (10 testimonials) | ✅ Keep | Keep suburb-specific format |
| "Why Neptune" | ✅ Keep | No changes |
| Payment / finance | ✅ Keep | Minor: add phone number near this section |
| "Before We Arrive" | ⚠️ Time + pressure | Fix time, consider removing 20% off condition |
| Footer | ❌ Needs rebuild | Same as homepage |
| Contact info | ❌ Missing | Add phone + email |

---

## Page 3: Replacement Filters (neptunefiltration.com.au/replacement-filters)

### Purpose (Confirmed)
Frictionless reorder flow for existing customers — annual filter replacement.

### What's Working Well

- Clear product headline and subtitle
- $299.95 price displayed upfront — no pricing hesitation
- Free delivery — reduces friction
- Star rating (5.0 · 214 reviews) — appropriate here (product-specific reviews)
- 3 filter descriptions — specific, benefit-led (not just "filter 1, filter 2")
- Specs table — clear, scannable
- DIY installation steps — reduces anxiety, reduces plumber dependency
- "No plumber required" messaging — strong friction-reducer
- Annual reminder system (9, 11, 12 months) — excellent retention mechanism
- "Why It Matters" cards — good reinforcement of annual importance
- Payment options including AfterPay — reduces price friction
- Warranty tie-in — smart: "required to maintain 7-year warranty" = urgency without pressure

---

### Issues & Recommendations

---

#### ISSUE 1 — No Phone Number
**Impact:** High — even on a reorder page, existing customers may have questions.
A phone number also signals "we're here, we're real."

**Recommendation:** Add to header and footer. Same standard as other pages.

---

#### ISSUE 2 — Warranty Coverage Statement Too Vague
**Impact:** Low-Medium — "Covered under 7-yr workmanship" is ambiguous.

**Current:** "Covered under 7-yr workmanship"

**Recommendation:** Change to: "Maintaining your 7-year workmanship warranty requires annual filter replacement."

This reframes the requirement as a benefit (protecting their warranty) not a liability.

---

#### ISSUE 3 — No Subscription/Auto-Delivery Option
**Impact:** Medium — if customers need filters annually and Neptune sends reminders,
the natural evolution is a subscription (set and forget, slight discount).

**This is a future recommendation, not a bug** — noting it here for product roadmap.

---

#### ISSUE 4 — Trust Bar Wording Inconsistency
**Current:** "WaterMark · AS 3497" (abbreviated)

**Standard format:** "WaterMark Certified AS 3497"

Apply the unified trust bar standard from the design system.

---

#### ISSUE 5 — Headline Redundancy
**Current:** Main H1 = "Neptune 20" System Filters" / Subtitle = "Replacement Filter Set"

These two lines say essentially the same thing in sequence. The subtitle adds no new information.

**Recommendation:**
- H1: "Neptune Replacement Filter Set"
- Subtitle / context line: "Designed for the Neptune 20" whole-home system. Annual replacement maintains performance and your 7-year warranty."

This combines both current lines into one clear pair, removing redundancy.

---

#### ISSUE 6 — Footer Too Sparse
Same as other pages. See footer recommendation.

---

### Replacement Filters — Section Verdict

| Section | Status | Action |
|---------|--------|--------|
| Header | ⚠️ Missing phone | Add phone number |
| Hero/product title | ⚠️ Redundant H1/subtitle | Simplify as above |
| Price + delivery | ✅ Keep | No changes |
| Ratings | ✅ Keep (product reviews) | Standardise badge wording |
| Filter descriptions | ✅ Keep | No changes |
| Specs table | ✅ Keep | Minor: standardise warranty language |
| Installation steps | ✅ Keep | No changes |
| Reminder system | ✅ Keep | No changes |
| "Why It Matters" cards | ✅ Keep | No changes |
| Payment methods | ✅ Keep | No changes |
| Footer | ❌ Needs rebuild | Same as other pages |

---

## Cross-Page Consistency Issues

### Trust Signal Standardisation

The same three credentials must appear in identical wording on every page:

| Current (varies) | Standard (confirmed) |
|------------------|---------------------|
| "WaterMark Certified" | "WaterMark Certified AS 3497" |
| "VIC Licensed & Insured" | "VIC Licensed & Insured" ✓ |
| "Licensed Plumbers" | ❌ Replace with "VIC Licensed & Insured" |
| "7-Year Warranty" | "7-Year Workmanship Warranty" |
| "Covered under 7-yr workmanship" | "7-Year Workmanship Warranty" |
| "WaterMark · AS 3497" | "WaterMark Certified AS 3497" |

### Phone Number — All Pages
03 9122 5243 must appear in the same position on every page:
- Header: right side (desktop), hamburger menu + prominent tap-to-call (mobile)
- Footer: contact column
- Near CTAs: as secondary option ("Prefer to call? 03 9122 5243")

### Email — All Pages
office@neptunefiltration.com.au appears in:
- Footer: contact column
- Pre-appointment page: contact section

### Appointment Duration — All Channels
"Approximately 30 minutes" — no exceptions, no ranges, no "25–30", no "30–60".

---

## Priority Implementation Order

If making improvements, implement in this order (highest conversion impact first):

**Phase 1 — Critical (do immediately)**
1. Add 03 9122 5243 to header on all pages (tap-to-call on mobile)
2. Fix appointment time inconsistency on pre-appointment page → "approximately 30 minutes"
3. Add email + phone to footer on all pages

**Phase 2 — High (do within 2 weeks)**
4. Standardise trust bar wording across all pages (use the design system standard)
5. Improve form confirmation message (add specific callback expectation)
6. Rebuild footer across all pages (full structure from design system)
7. Review and revise "20% off if decision-makers present" language on pre-appointment page

**Phase 3 — Medium (next sprint)**
8. Remove star rating from homepage hero trust bar (replace with 7-year warranty) — revisit when review count is strong
9. Improve replacement filter page H1/subtitle (remove redundancy)
10. Standardise warranty language across all pages

**Phase 4 — Low (backlog)**
11. Consider subscription/auto-delivery option for filters
12. Add installation photography to homepage and pre-appointment page
13. Add team/founder transparency section to homepage
