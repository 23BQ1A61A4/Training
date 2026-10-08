USE practice_db;

-- =====================================================
-- EXPRESSIONS IN QUERYING
-- =====================================================

-- 1. Addition (+)
SELECT
    (budget_in_cr + 10) AS new_budget
FROM movies;


-- 2. Subtraction (-)
SELECT
    (budget_in_cr - 2) AS new_budget
FROM movies;


-- 3. Multiplication (*)
SELECT
    (budget_in_cr * 100) AS budget_as_lakhs
FROM movies;


-- 4. Division (/)
SELECT
    (collection_in_cr / budget_in_cr) AS collection_rate
FROM movies;


-- 5. Modulo (%)
-- Example using movie id
SELECT
    id % 2 AS id_remainder_for_2
FROM movies;


-- =====================================================
-- EXPRESSIONS IN WHERE CLAUSE
-- =====================================================

-- 6. Movies with profit of at least 50 crores
SELECT *
FROM movies
WHERE (collection_in_cr - budget_in_cr) >= 50;


-- =====================================================
-- EXPRESSIONS IN UPDATE CLAUSE
-- =====================================================

-- 7. Scale down ratings from 10 to 5
-- WARNING: This permanently changes the ratings.
-- Execute only if required.
-- UPDATE movies
-- SET rating = rating / 2;


-- =====================================================
-- EXPRESSIONS IN HAVING CLAUSE
-- =====================================================

-- 8. Genres with average profit of at least 100 crores
SELECT
    genre
FROM movies
GROUP BY genre
HAVING AVG(collection_in_cr - budget_in_cr) >= 100;


-- =====================================================
-- TRY YOURSELF - QUESTION 1
-- =====================================================

-- 9. Profit of every movie with rating greater than 8.0
SELECT
    id,
    name,
    genre,
    budget_in_cr,
    collection_in_cr,
    rating,
    release_date,
    (collection_in_cr - budget_in_cr) AS profit
FROM movies
WHERE rating > 8.0;


-- =====================================================
-- TRY YOURSELF - QUESTION 2
-- =====================================================

-- 10. Movies with profit at least 30 crores
-- and genre Action, Animation or Drama
SELECT *
FROM movies
WHERE (collection_in_cr - budget_in_cr) >= 30
  AND genre IN ('Action', 'Animation', 'Drama');


-- =====================================================
-- DATE FUNCTIONS / EXPRESSIONS
-- =====================================================

-- Q1. Movie name, release year, budget and collection
SELECT
    name,
    YEAR(release_date) AS release_year,
    budget_in_cr,
    collection_in_cr
FROM movies;


-- Q2. Movie name, release date and profit
SELECT
    name,
    release_date,
    (collection_in_cr - budget_in_cr) AS profit
FROM movies;


-- Q3. Movie name, release month and profit percentage
SELECT
    name,
    MONTH(release_date) AS release_month,
    ((collection_in_cr - budget_in_cr) / budget_in_cr) * 100
        AS profit_percentage
FROM movies;


-- Q4. Movie name, budget and collection
-- Cast budget and collection as integers
SELECT
    name,
    CAST(budget_in_cr AS SIGNED) AS budget,
    CAST(collection_in_cr AS SIGNED) AS collection
FROM movies;


-- Q5. Movie name, release date in DD-MM-YYYY format and rating
SELECT
    name,
    DATE_FORMAT(release_date, '%d-%m-%Y') AS release_date,
    rating
FROM movies;


-- Q6. Movie name, release year and collection
-- after increasing collection by 10%
SELECT
    name,
    YEAR(release_date) AS release_year,
    collection_in_cr * 1.10 AS increased_collection
FROM movies;


-- Q7. Movie name, budget, collection and profit
-- Profit cast as integer
SELECT
    name,
    budget_in_cr AS budget,
    collection_in_cr AS collection,
    CAST((collection_in_cr - budget_in_cr) AS SIGNED) AS profit
FROM movies;


-- =====================================================
-- ADVANCED QUESTIONS
-- =====================================================

-- Q1. Top 5 movies released after 2020-01-01
-- with highest profit
SELECT
    name,
    release_date,
    budget_in_cr AS budget,
    collection_in_cr AS collection,
    (collection_in_cr - budget_in_cr) AS profit
FROM movies
WHERE release_date > '2020-01-01'
ORDER BY profit DESC
LIMIT 5;


-- Q2. Top 5 highest-rated movies released in 2025
SELECT
    name,
    rating,
    release_date
FROM movies
WHERE YEAR(release_date) = 2025
ORDER BY rating DESC
LIMIT 5;


-- Q3. Genres whose average collection is greater than 100 crores
SELECT
    genre,
    AVG(collection_in_cr) AS average_collection
FROM movies
GROUP BY genre
HAVING AVG(collection_in_cr) > 100
ORDER BY average_collection DESC;


-- Q4. Genres having at least 3 movies
-- with rating greater than 7.0
SELECT
    genre,
    COUNT(*) AS number_of_movies
FROM movies
WHERE rating > 7.0
GROUP BY genre
HAVING COUNT(*) >= 3
ORDER BY number_of_movies DESC;


-- Q5. Top 5 movies released after 2022
-- where collection is greater than budget
SELECT
    name,
    YEAR(release_date) AS release_year,
    budget_in_cr AS budget,
    collection_in_cr AS collection,
    CAST((collection_in_cr - budget_in_cr) AS SIGNED) AS profit,
    ROUND(
        ((collection_in_cr - budget_in_cr) / budget_in_cr) * 100,
        2
    ) AS profit_percentage
FROM movies
WHERE release_date > '2022-12-31'
  AND collection_in_cr > budget_in_cr
ORDER BY profit DESC
LIMIT 5;