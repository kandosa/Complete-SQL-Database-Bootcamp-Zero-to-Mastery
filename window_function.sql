/*
*  Show the population per continent
*  Database: World
*  Table: Country
*/

SELECT distinct(continent), sum(population) over (PARTITION by continent)
FROM country;

/*
*  To the previous query add on the ability to calculate the percentage of the world population
*  What that means is that you will divide the population of that continent by the total population and multiply by 100 to get a percentage.
*  Make sure you convert the population numbers to float using `population::float` otherwise you may see zero pop up
*  Try to use CONCAT AND ROUND to make the data look pretty
*
*  Database: World
*  Table: Country
*/

SELECT distinct(continent), 
sum(population) over (PARTITION by continent) as continent_pop,
    CONCAT(
        round(
            (
            sum(population::float4) over (PARTITION by continent) / sum(population::float4) OVER ()
            ) *100
        ), '%') as percentage_of_pop
FROM country

/*
*  Count the number of towns per region
*
*  Database: France
*  Table: Regions (Join + Window function)
*/

SELECT distinct r.id, r.name, count(t.id) over (partition by r.id order by r.name) as number_of_towns
FROM regions AS r
join departments as d on r.code = d.region
join towns as t on d.code = t.department
order by r.id
