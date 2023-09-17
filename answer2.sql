DROP TABLE IF EXISTS dataTable;

CREATE TABLE IF NOT EXISTS AIRBNB (id int, name string, host_id int, host_name string, neighbourhood_group string, neighbourhood string, latitude DOUBLE, longitude DOUBLE, room_type string, price DOUBLE, minimum_nights int, number_of_reviews int, last_review string, reviews_per_month FLOAT, calculated_host_listings_count int, availability_365 int) row format delimited fields terminated by ',' 
LOAD DATA LOCAL INPATH 'AB_NYC_2019.csv' OVERWRITE INTO TABLE airbnb;
SELECT room_type, count(*) FROM AIRBNB GROUP BY room_type;
