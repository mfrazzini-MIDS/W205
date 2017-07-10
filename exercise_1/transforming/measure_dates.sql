DROP TABLE IF EXISTS measure_dates;

CREATE TABLE measure_dates AS SELECT
measure_name,
measure_id,
measure_start_quarter,
cast(to_date(from_unixtime(unix_timestamp(regexp_extract(Measure_Start_Date,'(.*) '),'yyyy-MM-dd'))) as date) as measure_start_date,
measure_end_quarter,
cast(to_date(from_unixtime(unix_timestamp(regexp_extract(Measure_End_Date,'(.*) '),'yyyy-MM-dd'))) as date) as measure_end_date
from measure_dates_schema;

