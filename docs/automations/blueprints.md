# Automation Blueprints — CRM & Marketing Flows

## Platform Notes
These flows are platform-agnostic. Adapt triggers/actions to your CRM:
GoHighLevel, HubSpot, ActiveCampaign, Klaviyo, or similar.

---

## Blueprint 1: Lead → Appointment Flow

```
TRIGGER: Form submitted (free water test)
  │
  ├─► Tag contact: "new-lead"
  ├─► Send Email 1 (confirmation) — immediately
  ├─► Send SMS 1 (confirmation) — within 5 minutes
  ├─► Assign to sales/booking team — notification
  ├─► Create task: Call within 2 hours
  │
  ├─ IF appointment booked within 24h:
  │     ├─► Tag: "appointment-booked"
  │     ├─► Send reminder email (24h before)
  │     ├─► Send reminder SMS (24h before)
  │     └─► Send reminder SMS (2h before)
  │
  └─ IF no appointment booked after 48h:
        ├─► Send follow-up email
        ├─► Send follow-up SMS
        └─► Create task: Call again
```

---

## Blueprint 2: Appointment → Sale Flow

```
TRIGGER: Appointment status updated in CRM
  │
  ├─ IF "completed - no sale":
  │     ├─► Tag: "appointment-no-sale"
  │     ├─► Enter welcome nurture sequence (Email 3–5)
  │     ├─► Send SMS Day 1 (check-in)
  │     └─► Send SMS Day 3 (offer)
  │
  ├─ IF "completed - sale":
  │     ├─► Tag: "customer"
  │     ├─► Remove from nurture sequence
  │     ├─► Trigger post-install flow (after install date)
  │     └─► Schedule review request (Day 7 post-install)
  │
  └─ IF "no-show":
        ├─► Tag: "no-show"
        ├─► Send SMS (30 min after missed time)
        └─► Create task: Reschedule outreach
```

---

## Blueprint 3: Post-Install Flow

```
TRIGGER: Deal status = "installed" in CRM
  │
  ├─► Tag: "active-customer"
  ├─► Send post-install email (Day 1)
  ├─► Send check-in SMS (Day 2)
  ├─► Send satisfaction email (Day 30)
  ├─► Send review request SMS (Day 7, if no review tagged)
  ├─► Send upsell email (Day 60)
  └─► Send annual maintenance email (Day 330)
```

---

## Blueprint 4: Re-Engagement (Cold Leads)

```
TRIGGER: Tag "new-lead" AND no activity for 30 days
  │
  ├─► Send re-engagement email ("Still thinking about clean water?")
  ├─► Wait 3 days
  │
  ├─ IF email opened:
  │     └─► Send follow-up with current offer
  │
  └─ IF no open after 7 days:
        ├─► Send SMS re-engagement
        └─► Tag: "cold-lead" (move to low-frequency list)
```

---

## Blueprint 5: Referral Program

```
TRIGGER: Tag "active-customer" AND Day 30 post-install
  │
  ├─► Send referral program email
  ├─► Send referral SMS
  │
  ├─ IF referral link clicked:
  │     └─► Track referral source in CRM
  │
  └─ IF referral converts to lead:
        ├─► Tag original customer: "referrer"
        └─► Trigger reward (credit, thank you, gift card)
```

---

## Lead Scoring Model

Use this to prioritise which leads to call first.

| Signal | Points |
|--------|--------|
| Opened 2+ emails | +10 |
| Clicked any link | +15 |
| Visited pricing page | +20 |
| Visited booking page (didn't book) | +25 |
| Replied to email or SMS | +30 |
| Multiple form submissions | +20 |
| Booked appointment | +50 |

**Thresholds:**
- 0–30: Low priority (nurture only)
- 31–60: Medium (standard follow-up)
- 61+: High (call within 1 hour)

---

## CRM Field Requirements

Ensure these fields exist and are populated for each contact:

- First name
- Phone (mobile preferred)
- Email
- Suburb / postcode
- Water test result (if completed)
- System installed (product name)
- Install date
- Source (Google/Meta/Referral/etc.)
- Appointment date
- Lead status tag
- Opt-in status (SMS and email separately)

---

## Integration Checklist

- [ ] Website form → CRM (test submission to ensure data maps correctly)
- [ ] CRM → Email platform (if separate)
- [ ] CRM → SMS platform
- [ ] Booking calendar → CRM (appointment confirmation triggers flow)
- [ ] Payment system → CRM (sale triggers post-install flow)
- [ ] Review link → CRM (track who has reviewed)
- [ ] Google Ads → CRM (lead source tagging for attribution)
- [ ] Meta Ads → CRM (lead source tagging)
