import { authenticate } from "../shopify.server";
import db from "../db.server";
import { type _Order } from "shopify-typed-node-api/dist/clients/rest/dataTypes";

export type CreateOrderWebhookPayload = {
  id: number;
};

export const action = async ({ request }) => {
  const { topic, shop, session, payload } = await authenticate.webhook(request);

  switch (topic) {
    case "APP_UNINSTALLED":
      if (session) {
        await db.session.deleteMany({ where: { shop } });
      }
      break;
    case "ORDERS_CREATE":
      console.log(payload);
      if (payload) {
        const data = payload as _Order;
        await db.order.create({ data: { id: data.id! } });
      }
      break;
    case "CUSTOMERS_DATA_REQUEST":
    case "CUSTOMERS_REDACT":
    case "SHOP_REDACT":
    default:
      throw new Response("Unhandled webhook topic", { status: 404 });
  }

  throw new Response();
};

//  http://localhost:61417/webhooks
