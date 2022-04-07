-- Who between the ages of 30 and 50 has an income less than 50 000?
-- (include 30 and 50 in the results)

SELECT *
FROM "public"."customers"
WHERE (age BETWEEN 30 AND 50) AND (income < 50000)


-- Who between the ages of 30 and 50 has an income less than 50 000?
-- (include 30 and 50 in the results)

SELECT AVG(income)
FROM "public"."customers"
WHERE (age BETWEEN 20 AND 50)
