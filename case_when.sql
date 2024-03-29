/**
* Database: Store
* Table: products
* Create a case statement that's named "price class" where if a product is over 20 dollars you show 'expensive'
* if it's between 10 and 20 you show 'average' 
* and of is lower than or equal to 10 you show 'cheap'.
*/

SELECT *, case when price > 20 then 'expensive'
          WHEN price < 10 then 'cheap'
          else 'average' end AS "price class"
FROM "public"."products";
