CREATE DATABASE IF NOT EXISTS practice_db;

USE practice_db;

DROP TABLE IF EXISTS products;
DROP TABLE IF EXISTS player_match_details;
DROP TABLE IF EXISTS movies;


-- =====================================================
-- TABLE 1: PRODUCTS
-- =====================================================

CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    brand VARCHAR(50),
    price DECIMAL(10,2),
    size VARCHAR(10),
    stock INT,
    rating DECIMAL(2,1)
);

INSERT INTO products
(product_id, product_name, category, brand, price, size, stock, rating)
VALUES
(1, 'Cotton T-Shirt', 'T-Shirt', 'Nike', 1299, 'M', 50, 4.3),
(2, 'Slim Fit Jeans', 'Jeans', 'Levis', 2999, '32', 35, 4.5),
(3, 'Casual Shirt', 'Shirt', 'Peter England', 1999, 'L', 40, 4.2),
(4, 'Hoodie', 'Winter Wear', 'Puma', 2499, 'XL', 25, 4.4),
(5, 'Formal Trousers', 'Trousers', 'Van Heusen', 2799, '34', 30, 4.1),
(6, 'Printed T-Shirt', 'T-Shirt', 'Adidas', 1499, 'L', 45, 4.6),
(7, 'Denim Jacket', 'Jacket', 'Levis', 3999, 'M', 15, 4.7),
(8, 'Polo T-Shirt', 'T-Shirt', 'Puma', 1799, 'S', 38, 4.3),
(9, 'Kurta', 'Ethnic Wear', 'Manyavar', 2299, 'L', 20, 4.5),
(10, 'Chinos', 'Trousers', 'Allen Solly', 2199, '32', 28, 4.0),
(11, 'Track Pants', 'Sportswear', 'Nike', 1899, 'M', 42, 4.2),
(12, 'Sweatshirt', 'Winter Wear', 'Adidas', 2699, 'XL', 18, 4.4),
(13, 'Cargo Pants', 'Trousers', 'Roadster', 2399, '34', 32, 4.1),
(14, 'Floral Dress', 'Dress', 'H&M', 2999, 'M', 22, 4.6),
(15, 'Leather Jacket', 'Jacket', 'Roadster', 4999, 'L', 10, 4.8),
(16, 'Cotton T-Shirt', 'T-Shirt', 'Adidas', 1399, 'L', 35, 4.4),
(17, 'Straight Fit Jeans', 'Jeans', 'Wrangler', 3299, '30', 24, 4.4),
(18, 'Linen Shirt', 'Shirt', 'Allen Solly', 2399, 'M', 27, 4.5),
(19, 'Bomber Jacket', 'Jacket', 'Puma', 4499, 'L', 12, 4.2),
(20, 'Formal Shirt', 'Shirt', 'Van Heusen', 2199, 'XL', 33, 4.6),
(21, 'Joggers', 'Sportswear', 'Adidas', 1999, 'L', 41, 4.1),
(22, 'Denim Shorts', 'Shorts', 'Levis', 1799, '32', 26, 4.0),
(23, 'Maxi Dress', 'Dress', 'H&M', 3499, 'M', 16, 4.7),
(24, 'Silk Kurta', 'Ethnic Wear', 'Manyavar', 3299, 'XL', 14, 4.6),
(25, 'Woolen Sweater', 'Winter Wear', 'Roadster', 2999, 'L', 21, 4.3),
(26, 'Skinny Jeans', 'Jeans', 'Wrangler', 2899, '28', 31, 4.2),
(27, 'Running Shorts', 'Sportswear', 'Nike', 1399, 'M', 48, 4.4),
(28, 'Casual Blazer', 'Blazer', 'Peter England', 5999, 'L', 9, 4.5),
(29, 'Graphic T-Shirt', 'T-Shirt', 'Adidas', 1199, 'S', 60, 4.1),
(30, 'Party Wear Dress', 'Dress', 'H&M', 4299, 'L', 11, 4.8),
(31, 'Cotton T-Shirt', 'T-Shirt', 'Puma', 1299, 'XL', 44, 4.2),
(32, 'Slim Fit Jeans', 'Jeans', 'Levis', 3199, '34', 29, 4.6),
(33, 'Casual Shirt', 'Shirt', 'Roadster', 1899, 'M', 37, 4.3),
(34, 'Hoodie', 'Winter Wear', 'Nike', 2999, 'L', 17, 4.5),
(35, 'Formal Trousers', 'Trousers', 'Allen Solly', 2599, '32', 26, 4.2),
(36, 'Polo T-Shirt', 'T-Shirt', 'Nike', 1699, 'M', 39, 4.4),
(37, 'Denim Jacket', 'Jacket', 'Wrangler', 4199, 'XL', 13, 4.6),
(38, 'Kurta', 'Ethnic Wear', 'Manyavar', 2499, 'M', 23, 4.4),
(39, 'Track Pants', 'Sportswear', 'Puma', 1799, 'L', 34, 4.3),
(40, 'Floral Dress', 'Dress', 'H&M', 3199, 'S', 19, 4.7);


-- =====================================================
-- TABLE 2: PLAYER MATCH DETAILS
-- =====================================================

CREATE TABLE player_match_details (
    name VARCHAR(250),
    match_id VARCHAR(10),
    score INTEGER,
    fours INTEGER,
    sixes INTEGER,
    year INTEGER
);

INSERT INTO player_match_details
(name, match_id, score, fours, sixes, year)
VALUES
('Virat Kohli', 'M001', 85, 8, 2, 2022),
('Rohit Sharma', 'M002', 102, 10, 5, 2022),
('KL Rahul', 'M003', 65, 6, 2, 2022),
('Hardik Pandya', 'M004', 45, 3, 3, 2022),
('Rishabh Pant', 'M005', 72, 7, 2, 2022),
('Shubman Gill', 'M006', 58, 5, 1, 2022),
('Suryakumar Yadav', 'M007', 91, 7, 4, 2022),
('Ravindra Jadeja', 'M008', 38, 3, 1, 2022),
('Shreyas Iyer', 'M009', 67, 6, 2, 2022),
('Sanju Samson', 'M010', 54, 5, 2, 2022),

('Virat Kohli', 'M011', 112, 11, 3, 2023),
('Rohit Sharma', 'M012', 78, 7, 4, 2023),
('KL Rahul', 'M013', 95, 8, 3, 2023),
('Hardik Pandya', 'M014', 52, 4, 3, 2023),
('Rishabh Pant', 'M015', 64, 6, 2, 2023),
('Shubman Gill', 'M016', 105, 9, 4, 2023),
('Suryakumar Yadav', 'M017', 76, 6, 4, 2023),
('Ravindra Jadeja', 'M018', 48, 4, 1, 2023),
('Shreyas Iyer', 'M019', 82, 8, 2, 2023),
('Sanju Samson', 'M020', 61, 5, 3, 2023),

('Virat Kohli', 'M021', 73, 6, 1, 2024),
('Rohit Sharma', 'M022', 118, 12, 5, 2024),
('KL Rahul', 'M023', 88, 7, 3, 2024),
('Hardik Pandya', 'M024', 35, 2, 2, 2024),
('Rishabh Pant', 'M025', 97, 9, 4, 2024),
('Shubman Gill', 'M026', 69, 7, 1, 2024),
('Suryakumar Yadav', 'M027', 101, 9, 6, 2024),
('Ravindra Jadeja', 'M028', 55, 5, 2, 2024),
('Shreyas Iyer', 'M029', 44, 4, 1, 2024),
('Sanju Samson', 'M030', 79, 6, 4, 2024),

('Virat Kohli', 'M031', 96, 9, 2, 2025),
('Rohit Sharma', 'M032', 65, 6, 3, 2025),
('KL Rahul', 'M033', 110, 10, 4, 2025),
('Hardik Pandya', 'M034', 62, 5, 3, 2025),
('Rishabh Pant', 'M035', 83, 7, 3, 2025),
('Shubman Gill', 'M036', 92, 8, 3, 2025),
('Suryakumar Yadav', 'M037', 115, 10, 7, 2025),
('Ravindra Jadeja', 'M038', 41, 3, 2, 2025),
('Shreyas Iyer', 'M039', 73, 7, 2, 2025),
('Sanju Samson', 'M040', 86, 8, 4, 2025),

('Virat Kohli', 'M041', 55, 5, 1, 2026),
('Rohit Sharma', 'M042', 89, 8, 4, 2026),
('KL Rahul', 'M043', 71, 6, 2, 2026),
('Hardik Pandya', 'M044', 48, 4, 2, 2026),
('Rishabh Pant', 'M045', 108, 10, 5, 2026),
('Shubman Gill', 'M046', 77, 7, 2, 2026),
('Suryakumar Yadav', 'M047', 93, 8, 5, 2026),
('Ravindra Jadeja', 'M048', 63, 5, 2, 2026),
('Shreyas Iyer', 'M049', 58, 5, 1, 2026),
('Sanju Samson', 'M050', 99, 9, 5, 2026),

('Virat Kohli', 'M051', 67, 6, 2, 2026),
('Rohit Sharma', 'M052', 125, 13, 5, 2026),
('KL Rahul', 'M053', 82, 8, 2, 2026),
('Hardik Pandya', 'M054', 57, 4, 3, 2026),
('Rishabh Pant', 'M055', 74, 6, 2, 2026),
('Shubman Gill', 'M056', 111, 10, 4, 2026),
('Suryakumar Yadav', 'M057', 68, 5, 4, 2026),
('Ravindra Jadeja', 'M058', 47, 4, 1, 2026),
('Shreyas Iyer', 'M059', 91, 9, 2, 2026),
('Sanju Samson', 'M060', 76, 7, 3, 2026);


-- =====================================================
-- TABLE 3: MOVIES
-- =====================================================

CREATE TABLE movies (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    genre VARCHAR(50),
    budget_in_cr DECIMAL(10,2),
    collection_in_cr DECIMAL(10,2),
    rating DECIMAL(3,1),
    release_date DATE
);

INSERT INTO movies
(id, name, genre, budget_in_cr, collection_in_cr, rating, release_date)
VALUES
(1, 'RRR', 'Action', 550.00, 1200.00, 8.0, '2022-03-25'),
(2, 'Baahubali 2', 'Action', 250.00, 1810.00, 8.2, '2017-04-28'),
(3, 'Pushpa', 'Action', 200.00, 360.00, 7.6, '2021-12-17'),
(4, 'Arjun Reddy', 'Romance', 5.00, 51.00, 8.1, '2017-08-25'),
(5, 'Jersey', 'Drama', 25.00, 51.00, 8.0, '2019-04-19'),
(6, 'Eega', 'Fantasy', 26.00, 130.00, 7.7, '2012-07-06'),
(7, 'Ala Vaikunthapurramuloo', 'Comedy', 100.00, 262.00, 7.3, '2020-01-12'),
(8, 'Salaar', 'Action', 270.00, 700.00, 6.5, '2023-12-22'),
(9, 'Hi Nanna', 'Drama', 60.00, 75.00, 8.0, '2023-12-07'),
(10, 'Mahanati', 'Biography', 25.00, 83.00, 8.4, '2018-05-09'),

(11, 'Vikram', 'Action', 110.00, 500.00, 8.3, '2022-06-03'),
(12, 'Leo', 'Action', 250.00, 600.00, 7.2, '2023-10-19'),
(13, 'Jailer', 'Action', 200.00, 650.00, 7.1, '2023-08-10'),
(14, 'Kaithi', 'Thriller', 25.00, 105.00, 8.4, '2019-10-25'),
(15, 'Master', 'Action', 135.00, 300.00, 7.3, '2021-01-13'),
(16, '96', 'Romance', 18.00, 50.00, 8.5, '2018-10-04'),
(17, 'Soorarai Pottru', 'Drama', 20.00, 25.00, 8.7, '2020-11-12'),
(18, 'Ponniyin Selvan 1', 'Historical', 250.00, 500.00, 7.6, '2022-09-30'),
(19, 'Asuran', 'Drama', 35.00, 100.00, 8.5, '2019-10-04'),
(20, 'Enthiran', 'Sci-Fi', 132.00, 290.00, 7.1, '2010-10-01'),

(21, 'Dangal', 'Sports', 70.00, 2024.00, 8.3, '2016-12-23'),
(22, '3 Idiots', 'Comedy', 55.00, 460.00, 8.4, '2009-12-25'),
(23, 'PK', 'Comedy', 85.00, 854.00, 8.1, '2014-12-19'),
(24, 'Pathaan', 'Action', 250.00, 1050.00, 5.9, '2023-01-25'),
(25, 'Jawan', 'Action', 300.00, 1150.00, 7.0, '2023-09-07'),
(26, 'Shershaah', 'Biography', 50.00, 80.00, 8.3, '2021-08-12'),
(27, 'Queen', 'Comedy', 25.00, 97.00, 8.1, '2014-03-07'),
(28, 'Andhadhun', 'Thriller', 32.00, 456.00, 8.2, '2018-10-05'),
(29, 'Gully Boy', 'Drama', 40.00, 238.00, 7.9, '2019-02-14'),
(30, 'Drishyam', 'Thriller', 38.00, 110.00, 8.2, '2015-07-31'),

(31, 'Avengers: Endgame', 'Action', 3560.00, 20000.00, 8.4, '2019-04-26'),
(32, 'Avengers: Infinity War', 'Action', 3200.00, 17000.00, 8.4, '2018-04-27'),
(33, 'Titanic', 'Romance', 1600.00, 19000.00, 7.9, '1997-12-19'),
(34, 'Avatar', 'Sci-Fi', 1900.00, 25000.00, 7.9, '2009-12-18'),
(35, 'The Dark Knight', 'Action', 1000.00, 8500.00, 9.0, '2008-07-18'),
(36, 'Inception', 'Sci-Fi', 1100.00, 7000.00, 8.8, '2010-07-16'),
(37, 'Interstellar', 'Sci-Fi', 1200.00, 7500.00, 8.7, '2014-11-07'),
(38, 'Joker', 'Crime', 550.00, 7900.00, 8.3, '2019-10-04'),
(39, 'Oppenheimer', 'Biography', 900.00, 8000.00, 8.6, '2023-07-21'),
(40, 'Barbie', 'Comedy', 1000.00, 11000.00, 6.8, '2023-07-21'),

(41, 'The Lion King', 'Animation', 1900.00, 16000.00, 6.8, '2019-07-19'),
(42, 'Frozen', 'Animation', 1100.00, 12800.00, 7.4, '2013-11-27'),
(43, 'Toy Story 4', 'Animation', 1000.00, 8000.00, 7.7, '2019-06-21'),
(44, 'Spider-Man: No Way Home', 'Action', 1500.00, 16000.00, 8.2, '2021-12-17'),
(45, 'Black Panther', 'Action', 1300.00, 10500.00, 7.3, '2018-02-16'),
(46, 'Doctor Strange', 'Fantasy', 1200.00, 6800.00, 7.5, '2016-11-04'),
(47, 'Jurassic World', 'Adventure', 1200.00, 13000.00, 6.9, '2015-06-12'),
(48, 'Top Gun: Maverick', 'Action', 1300.00, 12000.00, 8.2, '2022-05-27'),
(49, 'The Batman', 'Crime', 1500.00, 7700.00, 7.8, '2022-03-04'),
(50, 'Mission: Impossible - Fallout', 'Action', 1300.00, 7900.00, 7.7, '2018-07-27');


-- =====================================================
-- CHECK ALL 3 TABLES
-- =====================================================

SELECT * FROM products;

SELECT * FROM player_match_details;

SELECT * FROM movies;

USE practice_db;


-- =========================================================
-- 1. STRING OPERATIONS
-- =========================================================

-- Q1. Product name starts with 'C'
SELECT *
FROM products
WHERE product_name LIKE 'C%';

-- Q2. Product name ends with 's'
SELECT *
FROM products
WHERE product_name LIKE '%s';

-- Q3. Product name contains 'T-Shirt'
SELECT *
FROM products
WHERE product_name LIKE '%T-Shirt%';

-- Q4. Brand contains the letter 'a'
SELECT *
FROM products
WHERE brand LIKE '%a%';

-- Q5. Product name has more than 10 characters
SELECT *
FROM products
WHERE LENGTH(product_name) > 10;


-- =========================================================
-- 2. LOGICAL OPERATIONS
-- =========================================================

-- Q6. T-Shirt category AND price > 1500
SELECT *
FROM products
WHERE category = 'T-Shirt'
AND price > 1500;

-- Q7. Products from Nike OR Adidas
SELECT *
FROM products
WHERE brand = 'Nike'
OR brand = 'Adidas';

-- Q8. Price > 2000 AND stock > 20
SELECT *
FROM products
WHERE price > 2000
AND stock > 20;

-- Q9. Jeans OR Jacket category AND rating > 4.3
SELECT *
FROM products
WHERE (category = 'Jeans' OR category = 'Jacket')
AND rating > 4.3;

-- Q10. Price > 3000 OR rating > 4.7
SELECT *
FROM products
WHERE price > 3000
OR rating > 4.7;


-- =========================================================
-- 3. IN OPERATOR
-- =========================================================

-- Q11. Brand is Nike, Adidas, or Puma
SELECT *
FROM products
WHERE brand IN ('Nike', 'Adidas', 'Puma');

-- Q12. Category is T-Shirt, Jeans, or Shirt
SELECT *
FROM products
WHERE category IN ('T-Shirt', 'Jeans', 'Shirt');

-- Q13. Size is M or L
SELECT *
FROM products
WHERE size IN ('M', 'L');

-- Q14. Brand is Levis, H&M, or Manyavar
SELECT *
FROM products
WHERE brand IN ('Levis', 'H&M', 'Manyavar');

-- Q15. Category is NOT T-Shirt, Jeans, or Dress
SELECT *
FROM products
WHERE category NOT IN ('T-Shirt', 'Jeans', 'Dress');


-- =========================================================
-- 4. BETWEEN OPERATOR
-- =========================================================

-- Q16. Price between 1000 and 2000
SELECT *
FROM products
WHERE price BETWEEN 1000 AND 2000;

-- Q17. Price between 2000 and 4000
SELECT *
FROM products
WHERE price BETWEEN 2000 AND 4000;

-- Q18. Stock between 20 and 40
SELECT *
FROM products
WHERE stock BETWEEN 20 AND 40;

-- Q19. Rating between 4.2 and 4.6
SELECT *
FROM products
WHERE rating BETWEEN 4.2 AND 4.6;

-- Q20. Price between 1500 and 3500 AND stock between 20 and 40
SELECT *
FROM products
WHERE price BETWEEN 1500 AND 3500
AND stock BETWEEN 20 AND 40;


-- =========================================================
-- 5. ORDER BY
-- =========================================================

-- Q21. Ascending order of price
SELECT *
FROM products
ORDER BY price ASC;

-- Q22. Descending order of price
SELECT *
FROM products
ORDER BY price DESC;

-- Q23. Descending order of rating
SELECT *
FROM products
ORDER BY rating DESC;

-- Q24. Ascending order of stock
SELECT *
FROM products
ORDER BY stock ASC;

-- Q25. Price DESC, then rating DESC
SELECT *
FROM products
ORDER BY price DESC, rating DESC;


-- =========================================================
-- 6. PAGINATION - LIMIT AND OFFSET
-- =========================================================

-- Q26. First 5 products
SELECT *
FROM products
ORDER BY product_id
LIMIT 5;

-- Q27. Next 5 products after first 5
SELECT *
FROM products
ORDER BY product_id
LIMIT 5 OFFSET 5;

-- Q28. 11th to 15th products
SELECT *
FROM products
ORDER BY product_id
LIMIT 5 OFFSET 10;

-- Q29. Page 3 with 5 products per page
SELECT *
FROM products
ORDER BY product_id
LIMIT 5 OFFSET 10;

-- Q30. Top 5 most expensive products
SELECT *
FROM products
ORDER BY price DESC
LIMIT 5;


-- =========================================================
-- AGGREGATE FUNCTIONS
-- =========================================================

-- Q1. Highest score
SELECT MAX(score) AS highest_score
FROM player_match_details;

-- Q2. Total number of sixes
SELECT SUM(sixes) AS total_sixes
FROM player_match_details;

-- Q3. Average score in 2026
SELECT AVG(score) AS average_score_2026
FROM player_match_details
WHERE year = 2026;

-- Q4. Number of matches where score > 50
SELECT COUNT(*) AS matches_above_50
FROM player_match_details
WHERE score > 50;

-- Q5. Total runs scored by Virat Kohli
SELECT SUM(score) AS virat_total_runs
FROM player_match_details
WHERE name = 'Virat Kohli';

-- Q6. Lowest score
SELECT MIN(score) AS lowest_score
FROM player_match_details;

-- Q7. Highest score where player hit at least 5 fours
SELECT MAX(score) AS highest_score
FROM player_match_details
WHERE fours >= 5;

-- Q8. Total runs scored in 2026
SELECT SUM(score) AS total_runs_2026
FROM player_match_details
WHERE year = 2026;

-- Q9. Average score between 50 and 100
SELECT AVG(score) AS average_score
FROM player_match_details
WHERE score BETWEEN 50 AND 100;

-- Q10. Total number of fours and sixes
SELECT
    SUM(fours) AS total_fours,
    SUM(sixes) AS total_sixes
FROM player_match_details;

-- Q11. Average score of Virat Kohli
SELECT AVG(score) AS virat_average_score
FROM player_match_details
WHERE name = 'Virat Kohli';

-- Q12. Total runs in 2025 and 2026 combined
SELECT SUM(score) AS total_runs_2025_2026
FROM player_match_details
WHERE year IN (2025, 2026);

-- Q13. Highest score in 2025
SELECT MAX(score) AS highest_score_2025
FROM player_match_details
WHERE year = 2025;

-- Q14. Total sixes by players who scored more than 80
SELECT SUM(sixes) AS total_sixes
FROM player_match_details
WHERE score > 80;

-- Q15. Average score in 2026 where at least 2 sixes and at least 5 fours
SELECT AVG(score) AS average_score_2026
FROM player_match_details
WHERE year = 2026
AND sixes >= 2
AND fours >= 5;


-- =========================================================
-- GROUP BY
-- =========================================================

-- Q1. Total runs scored by each player
SELECT
    name,
    SUM(score) AS total_runs
FROM player_match_details
GROUP BY name;

-- Q2. Number of matches played by each player
SELECT
    name,
    COUNT(*) AS matches_played
FROM player_match_details
GROUP BY name;

-- Q3. Total runs by each player in every year
SELECT
    name,
    year,
    SUM(score) AS total_runs
FROM player_match_details
GROUP BY name, year
ORDER BY name, year;

-- Q4. Average score of each player
SELECT
    name,
    AVG(score) AS average_score
FROM player_match_details
GROUP BY name;

-- Q5. Total fours and sixes by each player in every year
SELECT
    name,
    year,
    SUM(fours) AS total_fours,
    SUM(sixes) AS total_sixes
FROM player_match_details
GROUP BY name, year
ORDER BY name, year;

-- Q6. Total runs and matches by each player in every year
SELECT
    name,
    year,
    SUM(score) AS total_runs,
    COUNT(*) AS total_matches
FROM player_match_details
GROUP BY name, year
ORDER BY name, year;

-- Q7. Average score for each year
SELECT
    year,
    AVG(score) AS average_score
FROM player_match_details
GROUP BY year
ORDER BY year;


-- =========================================================
-- GROUP BY WITH HAVING
-- =========================================================

-- Q1. Players with more than 500 total runs
SELECT
    name,
    SUM(score) AS total_runs
FROM player_match_details
GROUP BY name
HAVING SUM(score) > 500;

-- Q2. Players who played more than 10 matches
SELECT
    name,
    COUNT(*) AS matches_played
FROM player_match_details
GROUP BY name
HAVING COUNT(*) > 10;

-- Q3. Players who hit more than 30 sixes
SELECT
    name,
    SUM(sixes) AS total_sixes
FROM player_match_details
GROUP BY name
HAVING SUM(sixes) > 30;

-- Q4. Players whose average score is greater than 40
SELECT
    name,
    AVG(score) AS average_score
FROM player_match_details
GROUP BY name
HAVING AVG(score) > 40;

-- Q5. Players who scored more than 200 runs in a particular year
SELECT
    name,
    year,
    SUM(score) AS total_runs
FROM player_match_details
GROUP BY name, year
HAVING SUM(score) > 200
ORDER BY name, year;

-- Q6. Players with more than 20 fours AND more than 10 sixes
SELECT
    name,
    SUM(fours) AS total_fours,
    SUM(sixes) AS total_sixes
FROM player_match_details
GROUP BY name
HAVING SUM(fours) > 20
AND SUM(sixes) > 10;

-- Q7. Years where total runs were greater than 1000
SELECT
    year,
    SUM(score) AS total_runs
FROM player_match_details
GROUP BY year
HAVING SUM(score) > 1000
ORDER BY year;