DROP TABLE IF EXISTS car_models;

\i ./scripts/car_models.sql;

\i ./scripts/car_model_data.sql;
\i ./scripts/car_model_data.sql;
\i ./scripts/car_model_data.sql;
\i ./scripts/car_model_data.sql;
\i ./scripts/car_model_data.sql;
\i ./scripts/car_model_data.sql;
\i ./scripts/car_model_data.sql;
\i ./scripts/car_model_data.sql;
\i ./scripts/car_model_data.sql;
\i ./scripts/car_model_data.sql;

-- 1: 22.018 ms
SELECT DISTINCT make_title
FROM car_models
WHERE make_code='LAM';

-- 2: 16.753 ms
SELECT DISTINCT model_title
FROM car_models
WHERE make_code='NISSAN'
    AND model_code='GT-R';

-- 3: 23.122 ms
SELECT make_code, model_code, model_title, year
FROM car_models
WHERE make_code='LAM';

-- 4: 250.579 ms
SELECT *
FROM car_models
WHERE year
BETWEEN 2010
AND 2015;

-- 5: 68.370 ms
SELECT *
FROM car_models
WHERE year=2010;

-- INDEXING

CREATE INDEX idx
ON car_models(make_code, make_title, year);

-- CREATE INDEX idx_make_title
-- ON car_models(make_title);

-- CREATE INDEX idx_year
-- ON car_models (year);

-- 1: 4.036 ms
SELECT DISTINCT make_title
FROM car_models
WHERE make_code='LAM';

-- 2: 3.860 ms
SELECT DISTINCT model_title
FROM car_models
WHERE make_code='NISSAN'
    AND model_code='GT-R';

-- 3: 4.215 ms
SELECT make_code, model_code, model_title, year
FROM car_models
WHERE make_code='LAM';

-- 4: 259.500 ms
SELECT *
FROM car_models
WHERE year
BETWEEN 2010
AND 2015;

-- 5: 52.546 ms
SELECT *
FROM car_models
WHERE year=2010;

-- #4 and #5 was slightly faster but I'm not sure if its supposed to be a lot faster.

