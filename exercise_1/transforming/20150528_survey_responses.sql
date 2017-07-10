DROP TABLE IF EXISTS 20150528_survey_responses;

CREATE TABLE 20150528_survey_responses AS SELECT
provider_number,
round(regexp_extract(communication_with_nurses_achievement_points,'^([\\d]+) out of [\\d]+')/regexp_extract(communication_with_nurses_achievement_points,'^[\\d]+ out of ([\\d]+)'),3) as communication_with_nurses_achievement_pct,
round(regexp_extract(communication_with_nurses_improvement_points,'^([\\d]+) out of [\\d]+')/regexp_extract(communication_with_nurses_improvement_points,'^[\\d]+ out of ([\\d]+)'),3) as communication_with_nurses_improvement_pct,
round(regexp_extract(communication_with_nurses_dimension_score,'^([\\d]+) out of [\\d]+')/regexp_extract(communication_with_nurses_dimension_score,'^[\\d]+ out of ([\\d]+)'),3) as communication_with_nurses_dimension_pct,
round(regexp_extract(communication_with_doctors_achievement_points,'^([\\d]+) out of [\\d]+')/regexp_extract(communication_with_doctors_achievement_points,'^[\\d]+ out of ([\\d]+)'),3) as communication_with_doctors_achievement_pct,
round(regexp_extract(communication_with_doctors_improvement_points,'^([\\d]+) out of [\\d]+')/regexp_extract(communication_with_doctors_improvement_points,'^[\\d]+ out of ([\\d]+)'),3) as communication_with_doctors__improvement_pct,
round(regexp_extract(communication_with_doctors_dimension_score,'^([\\d]+) out of [\\d]+')/regexp_extract(communication_with_doctors_dimension_score,'^[\\d]+ out of ([\\d]+)'),3) as communication_with_doctors_dimension_pct,
round(regexp_extract(responsiveness_of_hospital_staff_achievement_points,'^([\\d]+) out of [\\d]+')/regexp_extract(responsiveness_of_hospital_staff_achievement_points,'^[\\d]+ out of ([\\d]+)'),3) as responsiveness_of_hospital_staff_achievement_pct,
round(regexp_extract(responsiveness_of_hospital_staff_improvement_points,'^([\\d]+) out of [\\d]+')/regexp_extract(responsiveness_of_hospital_staff_improvement_points,'^[\\d]+ out of ([\\d]+)'),3) as responsiveness_of_hospital_staff_improvement_pct,
round(regexp_extract(responsiveness_of_hospital_staff_dimension_score,'^([\\d]+) out of [\\d]+')/regexp_extract(responsiveness_of_hospital_staff_dimension_score,'^[\\d]+ out of ([\\d]+)'),3) as responsiveness_of_hospital_staff_dimension_pct,
round(regexp_extract(pain_management_achievement_points,'^([\\d]+) out of [\\d]+')/regexp_extract(pain_management_achievement_points,'^[\\d]+ out of ([\\d]+)'),3) as pain_management_achievement_pct,
round(regexp_extract(pain_management_improvement_points,'^([\\d]+) out of [\\d]+')/regexp_extract(pain_management_improvement_points,'^[\\d]+ out of ([\\d]+)'),3) as pain_management_improvement_pct,
round(regexp_extract(pain_management_dimension_score,'^([\\d]+) out of [\\d]+')/regexp_extract(pain_management_dimension_score,'^[\\d]+ out of ([\\d]+)'),3) as pain_management_dimension_pct,
round(regexp_extract(communication_about_medicines_achievement_points,'^([\\d]+) out of [\\d]+')/regexp_extract(communication_about_medicines_achievement_points,'^[\\d]+ out of ([\\d]+)'),3) as communication_about_medicines_achievement_pct,
round(regexp_extract(communication_about_medicines_improvement_points,'^([\\d]+) out of [\\d]+')/regexp_extract(communication_about_medicines_improvement_points,'^[\\d]+ out of ([\\d]+)'),3) as communication_about_medicines_improvement_pct,
round(regexp_extract(communication_about_medicines_dimension_score,'^([\\d]+) out of [\\d]+')/regexp_extract(communication_about_medicines_dimension_score,'^[\\d]+ out of ([\\d]+)'),3) as communication_about_medicines_dimension_pct,
round(regexp_extract(cleanliness_and_quietness_of_hospital_environment_achievement_points,'^([\\d]+) out of [\\d]+')/regexp_extract(cleanliness_and_quietness_of_hospital_environment_achievement_points,'^[\\d]+ out of ([\\d]+)'),3) as cleanliness_and_quietness_of_hospital_environment_achievement_pct,
round(regexp_extract(cleanliness_and_quietness_of_hospital_environment_improvement_points,'^([\\d]+) out of [\\d]+')/regexp_extract(cleanliness_and_quietness_of_hospital_environment_improvement_points,'^[\\d]+ out of ([\\d]+)'),3) as cleanliness_and_quietness_of_hospital_environment_improvement_pct,
round(regexp_extract(cleanliness_and_quietness_of_hospital_environment_dimension_score,'^([\\d]+) out of [\\d]+')/regexp_extract(cleanliness_and_quietness_of_hospital_environment_dimension_score,'^[\\d]+ out of ([\\d]+)'),3) as cleanliness_and_quietness_of_hospital_environment_dimension_pct,
round(regexp_extract(discharge_information_achievement_points,'^([\\d]+) out of [\\d]+')/regexp_extract(discharge_information_achievement_points,'^[\\d]+ out of ([\\d]+)'),3) as discharge_information_achievement_pct,
round(regexp_extract(discharge_information_improvement_points,'^([\\d]+) out of [\\d]+')/regexp_extract(discharge_information_improvement_points,'^[\\d]+ out of ([\\d]+)'),3) as discharge_information_improvement_pct,
round(regexp_extract(discharge_information_dimension_score,'^([\\d]+) out of [\\d]+')/regexp_extract(discharge_information_dimension_score,'^[\\d]+ out of ([\\d]+)'),3) as discharge_information_dimension_pct,
round(regexp_extract(overall_rating_of_hospital_achievement_points,'^([\\d]+) out of [\\d]+')/regexp_extract(overall_rating_of_hospital_achievement_points,'^[\\d]+ out of ([\\d]+)'),3) as overall_rating_of_hospital_achievement_pct,
round(regexp_extract(overall_rating_of_hospital_improvement_points,'^([\\d]+) out of [\\d]+')/regexp_extract(overall_rating_of_hospital_improvement_points,'^[\\d]+ out of ([\\d]+)'),3) as overall_rating_of_hospital_improvement_pct,
round(regexp_extract(overall_rating_of_hospital_dimension_score,'^([\\d]+) out of [\\d]+')/regexp_extract(overall_rating_of_hospital_dimension_score,'^[\\d]+ out of ([\\d]+)'),3) as overall_rating_of_hospital_dimension_pct,
cast(HCAHPS_base_score as int) as HCAHPS_base_score,
cast(HCAHPS_consistency_score as int) as HCAHPS_consistency_score
FROM 20150528_survey_responses_schema;

