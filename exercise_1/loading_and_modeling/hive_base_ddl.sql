DROP TABLE IF EXISTS hospital_schema;

CREATE EXTERNAL TABLE hospital_schema
(Provider_ID string,
Hospital_Name string,
Address string,
City string,
State string,
ZIP_Code string,
County_Name string,
Phone_Number string,
Hospital_Type string,
Hospital_Ownership string,
Emergency_Services string)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES ("separatorChar" = ",", "quoteChar" = '"', "escapeChar" = '\\')
STORED AS TEXTFILE
LOCATION '/user/w205/hospital_compare/hospital';

SELECT count(distinct Provider_ID) from hospital_schema;


DROP TABLE IF EXISTS procedure_effective_care_schema;

CREATE EXTERNAL TABLE procedure_effective_care_schema
(Provider_ID string,
Hospital_Name string,
Address string,
City string,
State string,
ZIP_Code string,
County_Name string,
Phone_Number string,
Condition string,
Measure_ID string,
Measure_Name string,
Score string,
Sample string,
Footnote string,
Measure_Start_Date string,
Measure_End_Date string)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES ("separatorChar" = ",", "quoteChar" = '"', "escapeChar" = '\\')
STORED AS TEXTFILE
LOCATION '/user/w205/hospital_compare/effective_care';

SELECT count(distinct Provider_ID) from procedure_effective_care_schema;


DROP TABLE IF EXISTS procedure_readmissions_deaths_schema;

CREATE EXTERNAL TABLE procedure_readmissions_deaths_schema
(Provider_ID string,
Hospital_Name string,
Address string,
City string,
State string,
ZIP_Code string,
County_Name string,
Phone_Number string,
Measure_Name string,
Measure_ID string,
Compared_to_National string,
Denominator string,
Score string,
Lower_Estimate string,
Higher_Estimate string,
Footnote string,
Measure_Start_Date string,
Measure_End_Date string)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES ("separatorChar" = ",", "quoteChar" = '"', "escapeChar" = '\\')
STORED AS TEXTFILE
LOCATION '/user/w205/hospital_compare/readmissions';

SELECT count(distinct Provider_ID) from procedure_readmissions_deaths_schema;


DROP TABLE IF EXISTS measure_dates_schema;

CREATE EXTERNAL TABLE measure_dates_schema
(Measure_Name string,
Measure_ID string,
Measure_Start_Quarter string,
Measure_Start_Date string,
Measure_End_Quarter string,
Measure_End_Date string)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES ("separatorChar" = ",", "quoteChar" = '"', "escapeChar" = '\\')
STORED AS TEXTFILE
LOCATION '/user/w205/hospital_compare/measure';

SELECT count(distinct Measure_ID) from measure_dates_schema;


DROP TABLE IF EXISTS 20150528_survey_responses_schema;

CREATE EXTERNAL TABLE 20150528_survey_responses_schema
(Provider_Number string,
Hospital_Name string,
Address string,
City string,
State string,
ZIP_Code string,
County_Name string,
Communication_with_Nurses_Achievement_Points string,
Communication_with_Nurses_Improvement_Points string,
Communication_with_Nurses_Dimension_Score string,
Communication_with_Doctors_Achievement_Points string,
Communication_with_Doctors_Improvement_Points string,
Communication_with_Doctors_Dimension_Score string,
Responsiveness_of_Hospital_Staff_Achievement_Points string,
Responsiveness_of_Hospital_Staff_Improvement_Points string,
Responsiveness_of_Hospital_Staff_Dimension_Score string,
Pain_Management_Achievement_Points string,
Pain_Management_Improvement_Points string,
Pain_Management_Dimension_Score string,
Communication_about_Medicines_Achievement_Points string,
Communication_about_Medicines_Improvement_Points string,
Communication_about_Medicines_Dimension_Score string,
Cleanliness_and_Quietness_of_Hospital_Environment_Achievement_Points string,
Cleanliness_and_Quietness_of_Hospital_Environment_Improvement_Points string,
Cleanliness_and_Quietness_of_Hospital_Environment_Dimension_Score string,
Discharge_Information_Achievement_Points string,
Discharge_Information_Improvement_Points string,
Discharge_Information_Dimension_Score string,
Overall_Rating_of_Hospital_Achievement_Points string,
Overall_Rating_of_Hospital_Improvement_Points string,
Overall_Rating_of_Hospital_Dimension_Score string,
HCAHPS_Base_Score string,
HCAHPS_Consistency_Score string)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES ("separatorChar" = ",", "quoteChar" = '"', "escapeChar" = '\\')
STORED AS TEXTFILE
LOCATION '/user/w205/hospital_compare/surveys';

SELECT count(distinct Provider_Number) from 20150528_survey_responses_schema;

