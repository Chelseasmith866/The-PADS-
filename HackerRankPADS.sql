SELECT CONCAT (name, '(', LEFT(occupation, 1), ')')
FROM occupations
ORDER BY name;

SELECT CONCAT ('There are a total of', ' ' , occupation_count, ' ', LOWER(occupation), 's', '.')
FROM (SELECT DISTINCT(COUNT(occupation)) AS occupation_count, occupation
FROM occupations
     GROUP BY occupation
     ORDER BY occupation_count) sub
