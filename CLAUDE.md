# Neptune Filtration — Marketing Operating System

## What This Is

This directory is the permanent marketing OS for Neptune Filtration.
Every asset — ads, email flows, SMS, website copy, SEO content — lives here,
built to a consistent voice, offer architecture, and conversion standard.

## Business Context (Confirmed)

- **Company:** Neptune Filtration
- **Category:** Residential whole-home water filtration — Melbourne, VIC
- **Tagline:** "Melbourne's Water Specialists"
- **Website:** neptunefiltration.com.au
- **Phone:** 03 9122 5243
- **Email:** office@neptunefiltration.com.au
- **Geography:** Melbourne metropolitan area
- **Primary product:** Neptune 5-1-1 Micron Whole-Home System (20" housing, 3 stages)
- **Filter replacement:** $299.95 per set (annual)
- **Lead magnet:** Free in-home water test (~30 minutes)
- **Warranty:** 7-year workmanship guarantee
- **Certifications:** WaterMark Certified (AS 3497), VIC Licensed & Insured
- **Finance:** 0% interest plans available
- **Payment methods:** VISA, Mastercard, AMEX, PayPal, AfterPay
- **Review status:** Early-stage — do not rely on review volume for trust
- **Install time:** Under 2 hours
- **Appointment time:** ~30 minutes (test + walk-through)

## Brand Name Clarification (Confirmed May 2026)

The logo wordmark is **NEPTUNE** — not "Neptune Filtration."
The descriptor beneath the wordmark is "Whole Home Filtration."
In copy: refer to the brand as Neptune or Neptune Whole Home Filtration (long form).
The company domain/trading name may still be Neptune Filtration — but the brand mark is NEPTUNE.

## Core USP

One premium whole-home filtration system — installed by licensed Melbourne plumbers,
backed by a 7-year workmanship warranty, WaterMark certified to Australian standard AS 3497.
Not a jug. Not an under-sink filter. Every tap. Every shower.

## Pricing & Positioning (Critical)

Neptune is a PREMIUM service. Marketing must reflect this.

- DO NOT lead with price in ads, landing pages, or scripts
- DO NOT show pricing as the primary visual element in any creative
- DO NOT use discount framing ("Was $3,995, Now $2,895", "April Offer")
- DO NOT use fear-based or scare-tactic messaging
- DO focus on: quality, professionalism, trust, expertise, health, long-term value
- The goal is to attract quality customers — not price shoppers

## Marketing Status (Current)

- 5 Facebook static ads created — all currently price-led (being rebuilt)
- CRM has automation email flows active
- Leads currently move manually between stages
- Google reviews: limited — early stage business (trust built through credentials + process)

## Ad Creative Rules (Confirmed)

- Every ad must carry the Neptune Filtration logo
- Every ad must include at least one trust credential
- No price as primary visual — ever
- No "TOXIC", "DANGER", or fear imagery
- No bright electric blue backgrounds (use neptune-deep)
- No heavy condensed all-caps typography
- No discount/seasonal offer framing in creative

## Folder Map

```
neptune-site/
  CLAUDE.md                                        # This file — project OS
  netlify.toml                                     # Netlify config (publish = website/)
  assets/                                          # Working assets — source files, not all served
    logos/                                         # All Neptune logo files (PNG, SVG, AI, PDF, base64)
    install-photos/                                # Product/installation photography (source)
    ads/                                           # Ad creative assets
      Cycle1/                                      # Current active cycle finals
        Ad1/                                       # Final selected ad 1
        Ad2/                                       # Final selected ad 2
        Ad3/                                       # Final selected ad 3
        Ad4/                                       # Final selected ad 4
      Archive/                                     # Previous cycles and draft iterations
        Cycle0/                                    # First campaign (price-led, superseded)
        Cycle1-Drafts/                             # Concept iterations before final selection
    Archive/                                       # Deprecated assets kept for reference
      old-brochures/                               # Old PDF brochures (Rev4, April 2026)
  website/                                         # Live production website (Netlify publish dir)
    index.html                                     # Root redirect → /home/
    favicon.ico                                    # Favicon at root (Netlify requirement)
    _redirects                                     # Netlify redirect rules
    shared/styles.css                              # Shared stylesheet
    assets/                                        # Web-served assets (paths start with /assets/)
      favicon/                                     # Favicon set (ico, png, webmanifest)
      logos/                                       # Logo files served to the web
      install-photos/                              # Photos used in live pages
    home/index.html                                # Homepage
    preappointment/index.html                      # Pre-appointment confirmation page
    replacement-filters/index.html                 # Replacement filters page
  docs/                                            # Source of truth — read before creating anything
    brand.md                                       # Voice, tone, values, positioning
    audience.md                                    # ICP, personas, pain points, objections
    offers.md                                      # Offer architecture, pricing, guarantees
    products.md                                    # Product specs, filter details, install info
    business-plan.md                               # Neptune Filtration business plan
    website/                                       # Website copy drafts
      homepage.md
      landing-pages/free-water-test.md
    design-system/                                 # Visual + messaging standards
      design-system.md                             # Master design system (colours, type, spacing)
      page-audit.md                                # Full audit of live pages + recommendations
      page-templates.md                            # Reusable page structures by funnel stage
      channel-standards.md                         # Per-channel consistency rules
      ad-creative-framework.md
    branding/                                      # Brand standards
      visual-guide.md
      logo-standards.md
      voice-guide.md
    ads/                                           # Paid advertising copy
      google/search.md                             # Google Search RSA copy
      meta/campaigns.md                            # Meta ad copy + angles
      meta/may-eofy-campaign.md                    # May 2026 EOFY campaign brief (20% off)
      frameworks.md                                # Reusable ad formulas
    print/                                         # Print materials
      brochure-2026.html                           # Current brochure — web preview
      brochure-2026-print.html                     # Current brochure — print layout
      consultation-brochure.md                     # Consultation brochure content spec
      consultation-brochure.html                   # Consultation brochure rendered
      archive/pureflow/                            # Old Pureflow brand print photos
    automations/                                   # CRM flows
      blueprints.md                                # Automation blueprints + lead scoring
    sales/                                         # Sales system docs
      inbound-conversion-framework.md
      live-call-card.md
      live-call-system.md
      print/                                       # Print sales tools (HTML)
        neptune-framework.html
        neptune-live-call-sheet.html
        neptune-objection-sheet.html
        neptune-tonality-sheet.html
  email/                                           # Email flows
    welcome/sequence.md                            # Lead nurture (5 emails)
    post-install/sequence.md                       # Post-install retention + upsell
    signature/neptune-signature.html               # Email signature (self-contained HTML)
  sms/                                             # SMS flows
    flows/inquiry.md                               # Inquiry, reminder, review, referral flows
  seo/                                             # SEO content
    local-seo.md                                   # GBP, keyword strategy, suburb pages
    blog-templates/water-quality.md                # Article template
  operations/                                      # Admin scripts and operational docs
    NeptuneAdminScript.docx                        # Neptune admin call script
    archive/                                       # Legacy operational docs (Pureflow era)
      Pureflow-AdminScript.docx
      Pureflow-Consultation-Framework.pdf
```

## Trust Strategy (Early Stage)

Neptune is early-stage. Do NOT manufacture reviews, ratings, or testimonials.
Instead, build trust through:

- WaterMark certification (AS 3497) — credible industry standard
- VIC Licensed & Insured — official credential
- 7-year workmanship warranty — financial commitment
- Transparent process (show the test, show the system, show the steps)
- Education positioning (we teach, not sell)
- Installation imagery and before/after visuals
- Suburb familiarity (mention real Melbourne suburbs served)
- Founder/team transparency
- Clear pricing and process (no surprises = trust)
- Professional branding consistency
- WaterMark and licensing body logos

## Core Rules

- All copy: mobile-first, benefit-led, action-oriented
- Every page has ONE primary CTA
- Trust signals appear near every CTA — not just the header
- No jargon — write at Grade 8 reading level
- Pain-first framing: problem → mechanism → proof → offer → CTA
- Appointment time: always "approximately 30 minutes" — never a range
- Phone: 03 9122 5243 — must appear in header and footer on all pages
- Email: office@neptunefiltration.com.au — must appear in footer
- Do not fabricate reviews, stats, or testimonials

## Priority Stack

1. Trust (they're inviting us into their home)
2. Clarity (what we do, what they get, what happens next)
3. Offer (free test — zero friction)
4. Proof (certifications, warranty, process transparency)
5. CTA (one action per page)

## Quick Reference

| Asset | File |
|-------|------|
| Design system | [docs/design-system/design-system.md](docs/design-system/design-system.md) |
| Page audit + fixes | [docs/design-system/page-audit.md](docs/design-system/page-audit.md) |
| Page templates | [docs/design-system/page-templates.md](docs/design-system/page-templates.md) |
| Channel standards | [docs/design-system/channel-standards.md](docs/design-system/channel-standards.md) |
| Ad creative framework | [docs/design-system/ad-creative-framework.md](docs/design-system/ad-creative-framework.md) |
| Brand voice rules | [docs/brand.md](docs/brand.md) |
| Customer personas | [docs/audience.md](docs/audience.md) |
| Offer architecture | [docs/offers.md](docs/offers.md) |
| Product specs | [docs/products.md](docs/products.md) |
| Visual identity system | [docs/branding/visual-guide.md](docs/branding/visual-guide.md) |
| Logo standards | [docs/branding/logo-standards.md](docs/branding/logo-standards.md) |
| Voice guide | [docs/branding/voice-guide.md](docs/branding/voice-guide.md) |
| Google ad copy | [docs/ads/google/search.md](docs/ads/google/search.md) |
| Meta ad copy | [docs/ads/meta/campaigns.md](docs/ads/meta/campaigns.md) |
| May EOFY campaign brief | [docs/ads/meta/may-eofy-campaign.md](docs/ads/meta/may-eofy-campaign.md) |
| Current brochure (web) | [docs/print/brochure-2026.html](docs/print/brochure-2026.html) |
| Current brochure (print) | [docs/print/brochure-2026-print.html](docs/print/brochure-2026-print.html) |
| Welcome email flow | [email/welcome/sequence.md](email/welcome/sequence.md) |
| Email signature | [email/signature/neptune-signature.html](email/signature/neptune-signature.html) |
| SMS flows | [sms/flows/inquiry.md](sms/flows/inquiry.md) |
| SEO strategy | [seo/local-seo.md](seo/local-seo.md) |
| Business plan | [docs/business-plan.md](docs/business-plan.md) |
| Admin call script | [operations/NeptuneAdminScript.docx](operations/NeptuneAdminScript.docx) |
| Cycle 1 ad finals | [assets/ads/Cycle1/](assets/ads/Cycle1/) |
