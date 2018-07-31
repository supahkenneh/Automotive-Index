DROP database IF EXISTS indexed_cars;
DROP USER IF EXISTS indexed_cars_user;

--create user and database
CREATE USER indexed_cars_user;
CREATE database indexed_cars
  OWNER = indexed_cars_user;

\c indexed_cars;

\i scripts/car_models.sql;

\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;

--time: ~330ms each

SELECT COUNT(*)
FROM car_models;

SELECT DISTINCT make_title
FROM car_models
WHERE make_code = 'LAM';
--time: 19.5ms

SELECT DISTINCT model_title
FROM car_models
WHERE make_code = 'NISSAN' 
AND model_code = 'GT-R';
--time: 22ms

SELECT make_code, model_code, model_title, year
FROM car_models
WHERE make_code = 'LAM';
--time: 19ms

SELECT *
FROM car_models
WHERE year BETWEEN 2010 AND 2015;
--time: 65ms

SELECT *
FROM car_models
WHERE year = 2010;
--time: 28ms