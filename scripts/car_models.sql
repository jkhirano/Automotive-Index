-- db indexed_cars

CREATE TABLE
IF NOT EXISTS car_models
(
 id serial,
 make_code character varying
(125) NOT NULL,
 make_title character varying
(125) NOT NULL,
 model_code character varying
(125) NOT NULL,
 model_title character varying
(125) NOT NULL,
 year integer NOT NULL,
 PRIMARY KEY
(id)
);

CREATE INDEX idx_make_code
ON car_models(make_code);

CREATE INDEX idx_make_title
ON car_models(make_title);

CREATE INDEX idx_year
ON car_models (year);

