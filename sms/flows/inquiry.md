# SMS Flows — Inquiry & Appointment

## Rules for SMS

- Max 160 characters per message (aim for single-segment)
- Always identify as Neptune Filtration
- Never send more than 2 messages per flow without response
- Always include opt-out: "Reply STOP to unsubscribe"
- Permitted hours: 8am–8pm local time only
- One CTA per message

---

## Flow 1: New Inquiry (Web Form Submitted)

**Trigger:** Lead submits free water test form

**Message 1 (send within 5 minutes):**
```
Hi [First Name]! Neptune Filtration here — your free water test request is in.
We'll call within 2 hours to book a time. Questions? Reply here. Reply STOP to opt out.
```

**If no call answer after 2 hours — Message 2:**
```
Hey [First Name], Neptune here. Tried calling re: your free water test.
When's a good time to reach you? Or book direct: [link] Reply STOP to opt out.
```

---

## Flow 2: Appointment Reminder

**Trigger:** 24 hours before scheduled appointment

**Message 1:**
```
Reminder: Your free Neptune water test is tomorrow at [time].
Our tech [Name] will arrive at [address]. Questions? Call [phone]. Reply STOP to opt out.
```

**Trigger:** 2 hours before appointment

**Message 2:**
```
Neptune Filtration: [Tech name] is on their way for your water test at [time].
Running late? Call [phone]. Reply STOP to opt out.
```

---

## Flow 3: No-Show / Missed Appointment

**Trigger:** Appointment missed, no contact from customer

**Message 1 (send 30 min after scheduled time):**
```
Hi [First Name], Neptune here — looks like we missed you for your water test today.
Want to reschedule? [link] or call [phone]. Reply STOP to opt out.
```

---

## Flow 4: Post-Appointment (No Purchase)

**Trigger:** Appointment completed, no sale recorded in CRM

**Message 1 (Day 1):**
```
Hi [First Name], Neptune here. Thanks for the time today. Any questions about your
water results? Happy to help. [phone] Reply STOP to opt out.
```

**Message 2 (Day 3, if no reply):**
```
Hi [First Name], [Name] from Neptune. Still happy to answer questions about your
water test. Also — we're running [offer] this week if timing works. Reply STOP to opt out.
```

---

## Flow 5: Post-Install Check-In

**Trigger:** 48 hours after installation

**Message 1:**
```
Hi [First Name]! Neptune here — how's the water feeling? Any questions or issues,
reply or call [phone]. We're always here. Reply STOP to opt out.
```

---

## Flow 6: Review Request

**Trigger:** 7 days after installation (if no review submitted)

**Message 1:**
```
Hi [First Name], Neptune here. Glad you're set up! If you're happy with the water,
a quick Google review means the world to us: [link] Thanks! Reply STOP to opt out.
```

---

## Flow 7: Referral Prompt

**Trigger:** 30 days after installation, satisfaction confirmed

**Message 1:**
```
Hi [First Name]! Neptune here. Know anyone else who might want clean water?
Refer them and get $[X] off your next filter change. Share: [referral link] Reply STOP to opt out.
```

---

## One-Off Broadcast Templates

**Seasonal promo:**
```
Neptune Filtration: This month only — free installation on all whole-home systems
(save $[X]). [X] spots left. Book: [link] Reply STOP to opt out.
```

**Low-intent reactivation (old leads, 60+ days):**
```
Hi [First Name], Neptune here. Still thinking about clean water for your home?
Free water test is still available. Book in 60 seconds: [link] Reply STOP to opt out.
```
