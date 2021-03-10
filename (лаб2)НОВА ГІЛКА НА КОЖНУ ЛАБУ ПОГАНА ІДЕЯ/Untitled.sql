

CREATE TABLE "drivers" (
  "id" INT,
  "first_name" VARCHAR(50),
  "last_name" VARCHAR(50),
  "phone" VARCHAR(50),
  "gender" VARCHAR(50),
  "psychotype" TEXT,
  "vehicle_id" INT,
  "protection_type_id" INT,
  "exceptional_merits" INT
);

CREATE TABLE "vehicles" (
  "id" INT,
  "warehouse_id" INT,
  "averege_speed" INT
);

CREATE TABLE "warehouses" (
  "id" INT,
  "location" VARCHAR(50)
);

CREATE TABLE "warehouse_items" (
  "id" INT,
  "item_id" INT,
  "warehouse_id" INT
);

CREATE TABLE "items" (
  "id" INT,
  "name" INT
);

CREATE TABLE "subscriptions" (
  "id" INT,
  "cost" INT,
  "item_id" INT
);

CREATE TABLE "clients" (
  "id" INT,
  "subscription_id" INT,
  "last_payment" INT
);

ALTER TABLE "drivers" ADD FOREIGN KEY ("vehicle_id") REFERENCES "vehicles" ("id");

ALTER TABLE "vehicles" ADD FOREIGN KEY ("warehouse_id") REFERENCES "warehouses" ("id");

ALTER TABLE "warehouse_items" ADD FOREIGN KEY ("item_id") REFERENCES "items" ("id");

ALTER TABLE "warehouse_items" ADD FOREIGN KEY ("warehouse_id") REFERENCES "warehouses" ("id");

ALTER TABLE "subscriptions" ADD FOREIGN KEY ("item_id") REFERENCES "items" ("id");

ALTER TABLE "clients" ADD FOREIGN KEY ("subscription_id") REFERENCES "subscriptions" ("id");
