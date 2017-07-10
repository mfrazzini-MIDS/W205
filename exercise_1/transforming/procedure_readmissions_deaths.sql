DROP TABLE IF EXISTS procedure_readmissions_deaths;

CREATE TABLE procedure_readmissions_deaths AS SELECT
provider_id,
measure_id,
compared_to_national,
denominator,
score,
lower_estimate,
higher_estimate,
footnote,
cast(to_date(from_unixtime(unix_timestamp(Measure_Start_Date, 'dd/MM/yyyy'))) as date) as measure_start_date,
cast(to_date(from_unixtime(unix_timestamp(Measure_End_Date, 'dd/MM/yyyy'))) as date) as measure_end_date
FROM procedure_readmissions_deaths_schema;

