SELECT prod_id, title, price, NULLIF(special, 0) as special
FROM "public"."products";
