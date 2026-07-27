const crypto = require('crypto');

const WEBHOOK = 'https://services.leadconnectorhq.com/hooks/SPQwdXLPrMES6TqvwFLr/webhook-trigger/84d752aa-a597-4faa-a48b-be2763def373';
const META_PIXEL_ID = process.env.META_PIXEL_ID || '2043292147071202';
const META_CAPI_TOKEN = process.env.META_CAPI_TOKEN;

function sha256(value) {
  return crypto.createHash('sha256').update(value.trim().toLowerCase()).digest('hex');
}

async function sendMetaCapiLead(body, event) {
  if (!META_CAPI_TOKEN) return; // not configured yet — no-op until token is added

  const forwardedFor = event.headers['x-forwarded-for'] || event.headers['X-Forwarded-For'] || '';
  const clientIp = forwardedFor.split(',')[0].trim();
  const userAgent = event.headers['user-agent'] || event.headers['User-Agent'] || '';

  const userData = {};
  if (body.email) userData.em = [sha256(body.email)];
  if (body.phone) userData.ph = [sha256(body.phone.replace(/\D/g, ''))];
  if (body.fbc) userData.fbc = body.fbc;
  if (body.fbp) userData.fbp = body.fbp;
  if (clientIp) userData.client_ip_address = clientIp;
  if (userAgent) userData.client_user_agent = userAgent;

  const eventPayload = {
    data: [{
      event_name: 'Lead',
      event_time: Math.floor(Date.now() / 1000),
      event_id: body.event_id,
      action_source: 'website',
      event_source_url: 'https://neptunefiltration.com.au/experts/',
      user_data: userData
    }]
  };

  try {
    await fetch(`https://graph.facebook.com/v19.0/${META_PIXEL_ID}/events?access_token=${META_CAPI_TOKEN}`, {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify(eventPayload)
    });
  } catch (err) {
    // best-effort — never block the GHL webhook on this
  }
}

exports.handler = async function (event) {
  if (event.httpMethod !== 'POST') {
    return { statusCode: 405, body: 'Method Not Allowed' };
  }

  try {
    const body = JSON.parse(event.body);
    await Promise.all([
      fetch(WEBHOOK, {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify(body)
      }),
      sendMetaCapiLead(body, event)
    ]);
    return {
      statusCode: 200,
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({ ok: true })
    };
  } catch (err) {
    return {
      statusCode: 500,
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({ ok: false })
    };
  }
};
