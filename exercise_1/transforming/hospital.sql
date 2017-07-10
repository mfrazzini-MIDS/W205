DROP TABLE IF EXISTS hospital;

CREATE TABLE hospital AS SELECT
Provider_id,
hospital_name,
address,
city,
state,
zip_code,
county_name,
phone_number,
hospital_type,
hospital_ownership,
emergency_services
FROM hospital_schema;
