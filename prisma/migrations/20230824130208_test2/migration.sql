/*
  Warnings:

  - You are about to drop the `Address` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `Customer` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `LineItem` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `ShippingLine` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the column `admin_graphql_api_id` on the `Order` table. All the data in the column will be lost.
  - You are about to drop the column `apiVersion` on the `Order` table. All the data in the column will be lost.
  - You are about to drop the column `app_id` on the `Order` table. All the data in the column will be lost.
  - You are about to drop the column `billing_address_id` on the `Order` table. All the data in the column will be lost.
  - You are about to drop the column `browser_ip` on the `Order` table. All the data in the column will be lost.
  - You are about to drop the column `buyer_accepts_marketing` on the `Order` table. All the data in the column will be lost.
  - You are about to drop the column `cancel_reason` on the `Order` table. All the data in the column will be lost.
  - You are about to drop the column `cancelled_at` on the `Order` table. All the data in the column will be lost.
  - You are about to drop the column `cart_token` on the `Order` table. All the data in the column will be lost.
  - You are about to drop the column `checkout_id` on the `Order` table. All the data in the column will be lost.
  - You are about to drop the column `checkout_token` on the `Order` table. All the data in the column will be lost.
  - You are about to drop the column `client_details` on the `Order` table. All the data in the column will be lost.
  - You are about to drop the column `closed_at` on the `Order` table. All the data in the column will be lost.
  - You are about to drop the column `confirmation_number` on the `Order` table. All the data in the column will be lost.
  - You are about to drop the column `confirmed` on the `Order` table. All the data in the column will be lost.
  - You are about to drop the column `contact_email` on the `Order` table. All the data in the column will be lost.
  - You are about to drop the column `created_at` on the `Order` table. All the data in the column will be lost.
  - You are about to drop the column `currency` on the `Order` table. All the data in the column will be lost.
  - You are about to drop the column `current_subtotal_price` on the `Order` table. All the data in the column will be lost.
  - You are about to drop the column `current_subtotal_price_set` on the `Order` table. All the data in the column will be lost.
  - You are about to drop the column `current_total_additional_fees_set` on the `Order` table. All the data in the column will be lost.
  - You are about to drop the column `current_total_discounts` on the `Order` table. All the data in the column will be lost.
  - You are about to drop the column `current_total_discounts_set` on the `Order` table. All the data in the column will be lost.
  - You are about to drop the column `current_total_duties_set` on the `Order` table. All the data in the column will be lost.
  - You are about to drop the column `current_total_price` on the `Order` table. All the data in the column will be lost.
  - You are about to drop the column `current_total_price_set` on the `Order` table. All the data in the column will be lost.
  - You are about to drop the column `current_total_tax` on the `Order` table. All the data in the column will be lost.
  - You are about to drop the column `current_total_tax_set` on the `Order` table. All the data in the column will be lost.
  - You are about to drop the column `customer_id` on the `Order` table. All the data in the column will be lost.
  - You are about to drop the column `customer_locale` on the `Order` table. All the data in the column will be lost.
  - You are about to drop the column `device_id` on the `Order` table. All the data in the column will be lost.
  - You are about to drop the column `discount_codes` on the `Order` table. All the data in the column will be lost.
  - You are about to drop the column `email` on the `Order` table. All the data in the column will be lost.
  - You are about to drop the column `estimated_taxes` on the `Order` table. All the data in the column will be lost.
  - You are about to drop the column `financial_status` on the `Order` table. All the data in the column will be lost.
  - You are about to drop the column `fulfillment_status` on the `Order` table. All the data in the column will be lost.
  - You are about to drop the column `landing_site` on the `Order` table. All the data in the column will be lost.
  - You are about to drop the column `landing_site_ref` on the `Order` table. All the data in the column will be lost.
  - You are about to drop the column `location_id` on the `Order` table. All the data in the column will be lost.
  - You are about to drop the column `merchant_of_record_app_id` on the `Order` table. All the data in the column will be lost.
  - You are about to drop the column `name` on the `Order` table. All the data in the column will be lost.
  - You are about to drop the column `note` on the `Order` table. All the data in the column will be lost.
  - You are about to drop the column `note_attributes` on the `Order` table. All the data in the column will be lost.
  - You are about to drop the column `number` on the `Order` table. All the data in the column will be lost.
  - You are about to drop the column `order_number` on the `Order` table. All the data in the column will be lost.
  - You are about to drop the column `order_status_url` on the `Order` table. All the data in the column will be lost.
  - You are about to drop the column `original_total_additional_fees_set` on the `Order` table. All the data in the column will be lost.
  - You are about to drop the column `original_total_duties_set` on the `Order` table. All the data in the column will be lost.
  - You are about to drop the column `payment_gateway_names` on the `Order` table. All the data in the column will be lost.
  - You are about to drop the column `payment_terms` on the `Order` table. All the data in the column will be lost.
  - You are about to drop the column `phone` on the `Order` table. All the data in the column will be lost.
  - You are about to drop the column `po_number` on the `Order` table. All the data in the column will be lost.
  - You are about to drop the column `presentment_currency` on the `Order` table. All the data in the column will be lost.
  - You are about to drop the column `processed_at` on the `Order` table. All the data in the column will be lost.
  - You are about to drop the column `reference` on the `Order` table. All the data in the column will be lost.
  - You are about to drop the column `referring_site` on the `Order` table. All the data in the column will be lost.
  - You are about to drop the column `shipping_address_id` on the `Order` table. All the data in the column will be lost.
  - You are about to drop the column `source_identifier` on the `Order` table. All the data in the column will be lost.
  - You are about to drop the column `source_name` on the `Order` table. All the data in the column will be lost.
  - You are about to drop the column `source_url` on the `Order` table. All the data in the column will be lost.
  - You are about to drop the column `subtotal_price` on the `Order` table. All the data in the column will be lost.
  - You are about to drop the column `subtotal_price_set` on the `Order` table. All the data in the column will be lost.
  - You are about to drop the column `tags` on the `Order` table. All the data in the column will be lost.
  - You are about to drop the column `tax_exempt` on the `Order` table. All the data in the column will be lost.
  - You are about to drop the column `tax_lines` on the `Order` table. All the data in the column will be lost.
  - You are about to drop the column `taxes_included` on the `Order` table. All the data in the column will be lost.
  - You are about to drop the column `test` on the `Order` table. All the data in the column will be lost.
  - You are about to drop the column `token` on the `Order` table. All the data in the column will be lost.
  - You are about to drop the column `total_discounts` on the `Order` table. All the data in the column will be lost.
  - You are about to drop the column `total_discounts_set` on the `Order` table. All the data in the column will be lost.
  - You are about to drop the column `total_line_items_price` on the `Order` table. All the data in the column will be lost.
  - You are about to drop the column `total_line_items_price_set` on the `Order` table. All the data in the column will be lost.
  - You are about to drop the column `total_outstanding` on the `Order` table. All the data in the column will be lost.
  - You are about to drop the column `total_price` on the `Order` table. All the data in the column will be lost.
  - You are about to drop the column `total_price_set` on the `Order` table. All the data in the column will be lost.
  - You are about to drop the column `total_shipping_price_set` on the `Order` table. All the data in the column will be lost.
  - You are about to drop the column `total_tax` on the `Order` table. All the data in the column will be lost.
  - You are about to drop the column `total_tax_set` on the `Order` table. All the data in the column will be lost.
  - You are about to drop the column `total_tip_received` on the `Order` table. All the data in the column will be lost.
  - You are about to drop the column `total_weight` on the `Order` table. All the data in the column will be lost.
  - You are about to drop the column `updated_at` on the `Order` table. All the data in the column will be lost.
  - You are about to drop the column `user_id` on the `Order` table. All the data in the column will be lost.
  - You are about to drop the column `webhookId` on the `Order` table. All the data in the column will be lost.

*/
-- DropTable
PRAGMA foreign_keys=off;
DROP TABLE "Address";
PRAGMA foreign_keys=on;

-- DropTable
PRAGMA foreign_keys=off;
DROP TABLE "Customer";
PRAGMA foreign_keys=on;

-- DropTable
PRAGMA foreign_keys=off;
DROP TABLE "LineItem";
PRAGMA foreign_keys=on;

-- DropTable
PRAGMA foreign_keys=off;
DROP TABLE "ShippingLine";
PRAGMA foreign_keys=on;

-- RedefineTables
PRAGMA foreign_keys=OFF;
CREATE TABLE "new_Order" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT
);
INSERT INTO "new_Order" ("id") SELECT "id" FROM "Order";
DROP TABLE "Order";
ALTER TABLE "new_Order" RENAME TO "Order";
PRAGMA foreign_key_check;
PRAGMA foreign_keys=ON;
