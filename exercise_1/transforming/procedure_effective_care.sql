DROP TABLE IF EXISTS procedure_effective_care;

CREATE TABLE procedure_effective_care AS SELECT
provider_id,
condition,
measure_id,
score,
sample,
footnote,
cast(to_date(from_unixtime(unix_timestamp(Measure_Start_Date, 'dd/MM/yyyy'))) as date) as measure_start_date,
cast(to_date(from_unixtime(unix_timestamp(Measure_End_Date, 'dd/MM/yyyy'))) as date) as measure_end_date
FROM procedure_effective_care_schema;

