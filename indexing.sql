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