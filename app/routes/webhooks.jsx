import { authenticate } from "../shopify.server";
import db from "../db.server";
import { json } from "@remix-run/node";

export const action = async ({ request }) => {
  const { topic, shop, session } = await authenticate.webhook(request);
  const { admin } = await authenticate.admin(request);

  switch (topic) {
    case "APP_UNINSTALLED":
      if (session) {
        await db.session.deleteMany({ where: { shop } });
      }
      break;
    case "CUSTOMERS_DATA_REQUEST":
      if (admin) {
        const response = admin.graphql(`mutation {
          webhookSubscriptionCreate(
            topic: ORDERS_CREATE
            webhookSubscription: {
              format: JSON,
              callbackUrl: "https://12345.ngrok.io/"}
          ) {
            userErrors {
              field
              message
            }
            webhookSubscription {
              id
            }
          }
        }`);
        console.log(response);
        return json({ response });
      }

    case "CUSTOMERS_REDACT":
    case "SHOP_REDACT":
    default:
      throw new Response("Unhandled webhook topic", { status: 404 });
  }

  throw new Response();
};
