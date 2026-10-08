USE practice_db;


-- =========================================================
-- STRING OPERATIONS - LIKE OPERATOR
-- =========================================================

-- Q1. Exact Match
-- Product name exactly "Cotton T-Shirt"
SELECT *
FROM products
WHERE product_name LIKE 'Cotton T-Shirt';


-- Q2. Starts With
-- Product names starting with "Cotton"
SELECT *
FROM products
WHERE product_name LIKE 'Cotton%';


-- Q3. Ends With
-- Product names ending with "Shirt"
SELECT *
FROM products
WHERE product_name LIKE '%Shirt';


-- Q4. Contains
-- Product names containing "T-Shirt"
SELECT *
FROM products
WHERE product_name LIKE '%T-Shirt%';


-- Q5. Starts with "C"
-- Product names starting with letter C
SELECT *
FROM products
WHERE product_name LIKE 'C%';


-- Q6. Ends with "s"
-- Product names ending with letter s
SELECT *
FROM products
WHERE product_name LIKE '%s';


-- Q7. Brand contains letter "a"
SELECT *
FROM products
WHERE brand LIKE '%a%';


-- Q8. Product names containing "Jeans"
SELECT *
FROM products
WHERE product_name LIKE '%Jeans%';


-- Q9. Product names starting with "P"
SELECT *
FROM products
WHERE product_name LIKE 'P%';


-- Q10. Product names containing the word "Dress"
SELECT *
FROM products
WHERE product_name LIKE '%Dress%';


-- =========================================================
-- LOGICAL OPERATORS - AND, OR, NOT
-- =========================================================

-- Q11. Category is T-Shirt AND price greater than 1500
SELECT *
FROM products
WHERE category = 'T-Shirt'
AND price > 1500;


-- Q12. Brand is Nike AND rating greater than 4.0
SELECT *
FROM products
WHERE brand = 'Nike'
AND rating > 4.0;


-- Q13. Brand is Puma AND price less than 3000
SELECT *
FROM products
WHERE brand = 'Puma'
AND price < 3000;


-- Q14. Category is Jeans OR Jacket
SELECT *
FROM products
WHERE category = 'Jeans'
OR category = 'Jacket';


-- Q15. Brand is Nike OR Adidas
SELECT *
FROM products
WHERE brand = 'Nike'
OR brand = 'Adidas';


-- Q16. Price greater than 2000 OR rating greater than 4.7
SELECT *
FROM products
WHERE price > 2000
OR rating > 4.7;


-- Q17. Products NOT belonging to T-Shirt category
SELECT *
FROM products
WHERE NOT category = 'T-Shirt';


-- Q18. Products NOT from Nike brand
SELECT *
FROM products
WHERE NOT brand = 'Nike';


-- Q19. T-Shirt AND price <= 2000
SELECT *
FROM products
WHERE category = 'T-Shirt'
AND price <= 2000;


-- Q20. Puma AND rating > 4.0 AND price < 5000
SELECT *
FROM products
WHERE brand = 'Puma'
AND rating > 4.0
AND price < 5000;


-- Q21. Jeans OR Jacket AND rating > 4.3
SELECT *
FROM products
WHERE (category = 'Jeans' OR category = 'Jacket')
AND rating > 4.3;


-- Q22. Products that are NOT Nike AND price greater than 2000
SELECT *
FROM products
WHERE NOT brand = 'Nike'
AND price > 2000;


-- Q23. Products from Adidas OR Puma with rating greater than 4.3
SELECT *
FROM products
WHERE (brand = 'Adidas' OR brand = 'Puma')
AND rating > 4.3;


-- Q24. Products that are T-Shirt OR Shirt
-- AND price less than 2500
SELECT *
FROM products
WHERE (category = 'T-Shirt' OR category = 'Shirt')
AND price < 2500;


-- Q25. Products NOT in Jeans OR Jacket category
SELECT *
FROM products
WHERE NOT (category = 'Jeans' OR category = 'Jacket');