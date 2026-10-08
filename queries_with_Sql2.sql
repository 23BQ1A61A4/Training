USE practice_db;


-- =========================================================
-- 1. IN OPERATOR
-- =========================================================

-- Q1. Products from Nike, Adidas or Puma
SELECT *
FROM products
WHERE brand IN ('Nike', 'Adidas', 'Puma');


-- Q2. Products from Levis, H&M or Manyavar
SELECT *
FROM products
WHERE brand IN ('Levis', 'H&M', 'Manyavar');


-- Q3. Products belonging to T-Shirt, Jeans or Shirt category
SELECT *
FROM products
WHERE category IN ('T-Shirt', 'Jeans', 'Shirt');


-- Q4. Products available in M, L or XL sizes
SELECT *
FROM products
WHERE size IN ('M', 'L', 'XL');


-- Q5. Products from Nike, Puma or Adidas with rating above 4.3
SELECT *
FROM products
WHERE brand IN ('Nike', 'Puma', 'Adidas')
AND rating > 4.3;


-- Q6. Products whose category is Jeans, Jacket or Dress
SELECT *
FROM products
WHERE category IN ('Jeans', 'Jacket', 'Dress');


-- =========================================================
-- 2. BETWEEN OPERATOR
-- =========================================================

-- Q7. Products with price between 1000 and 5000
SELECT *
FROM products
WHERE price BETWEEN 1000 AND 5000;


-- Q8. Products with price between 1500 and 3000
SELECT *
FROM products
WHERE price BETWEEN 1500 AND 3000;


-- Q9. Products with stock between 20 and 40
SELECT *
FROM products
WHERE stock BETWEEN 20 AND 40;


-- Q10. Products with rating between 4.2 and 4.6
SELECT *
FROM products
WHERE rating BETWEEN 4.2 AND 4.6;


-- Q11. Products with price between 2000 and 4000
-- and stock between 20 and 40
SELECT *
FROM products
WHERE price BETWEEN 2000 AND 4000
AND stock BETWEEN 20 AND 40;


-- Q12. Products with rating between 4.3 and 4.8
SELECT *
FROM products
WHERE rating BETWEEN 4.3 AND 4.8;


-- =========================================================
-- 3. ORDER BY
-- =========================================================

-- Q13. All products in ascending order of price
SELECT *
FROM products
ORDER BY price ASC;


-- Q14. All products in descending order of price
SELECT *
FROM products
ORDER BY price DESC;


-- Q15. All products in ascending order of rating
SELECT *
FROM products
ORDER BY rating ASC;


-- Q16. All products in descending order of rating
SELECT *
FROM products
ORDER BY rating DESC;


-- Q17. Products from Puma ordered by lowest price first
SELECT
    product_name,
    price,
    rating
FROM products
WHERE brand = 'Puma'
ORDER BY price ASC;


-- Q18. Products from Nike ordered by highest price first
SELECT
    product_name,
    price,
    rating
FROM products
WHERE brand = 'Nike'
ORDER BY price DESC;


-- Q19. Products ordered by highest stock first
SELECT *
FROM products
ORDER BY stock DESC;


-- Q20. Products ordered by lowest stock first
SELECT *
FROM products
ORDER BY stock ASC;


-- =========================================================
-- 4. ORDER BY WITH MULTIPLE COLUMNS
-- =========================================================

-- Q21. First sort by price DESC,
-- then rating DESC for same price
SELECT *
FROM products
ORDER BY price DESC, rating DESC;


-- Q22. First sort by rating DESC,
-- then price ASC for same rating
SELECT
    product_name,
    price,
    rating
FROM products
ORDER BY rating DESC, price ASC;


-- Q23. First sort by category ASC,
-- then price ASC
SELECT *
FROM products
ORDER BY category ASC, price ASC;


-- Q24. First sort by brand ASC,
-- then rating DESC
SELECT *
FROM products
ORDER BY brand ASC, rating DESC;


-- =========================================================
-- 5. DISTINCT
-- =========================================================

-- Q25. Get all unique brands
SELECT DISTINCT brand
FROM products
ORDER BY brand;


-- Q26. Get all unique categories
SELECT DISTINCT category
FROM products
ORDER BY category;


-- Q27. Get all unique sizes
SELECT DISTINCT size
FROM products
ORDER BY size;


-- Q28. Get all unique ratings
SELECT DISTINCT rating
FROM products
ORDER BY rating;


-- Q29. Get unique combinations of brand and category
SELECT DISTINCT
    brand,
    category
FROM products
ORDER BY brand, category;


-- Q30. Get unique brands where category is T-Shirt
SELECT DISTINCT brand
FROM products
WHERE category = 'T-Shirt'
ORDER BY brand;