tail -n +2 "/data/W205/exercise_1/orig_data_files/Hospital General Information.csv" > "/data/W205/exercise_1/data_files/Hospital_General_Information.csv"
tail -n +2 "/data/W205/exercise_1/orig_data_files/Timely and Effective Care - Hospital.csv" > "/data/W205/exercise_1/data_files/Timely_and_Effective_Care-Hospital.csv"
tail -n +2 "/data/W205/exercise_1/orig_data_files/Readmissions and Deaths - Hospital.csv" > "/data/W205/exercise_1/data_files/Readmissions_and_Deaths-Hospital.csv"
tail -n +2 "/data/W205/exercise_1/orig_data_files/Measure Dates.csv" > "/data/W205/exercise_1/data_files/Measure_Dates.csv"
tail -n +2 "/data/W205/exercise_1/orig_data_files/hvbp_hcahps_05_28_2015.csv" > "/data/W205/exercise_1/data_files/hvbp_hcahps_05_28_2015.csv"
hdfs dfs -mkdir /user/w205/hospital_compare
hdfs dfs -mkdir /user/w205/hospital_compare/hospital
hdfs dfs -mkdir /user/w205/hospital_compare/effective_care
hdfs dfs -mkdir /user/w205/hospital_compare/readmissions
hdfs dfs -mkdir /user/w205/hospital_compare/measurei
hdfs dfs -mkdir /user/w205/hospital_compare/surveys
hdfs dfs -put "/data/W205/exercise_1/data_files/Hospital_General_Information.csv" /user/w205/hospital_compare/hospital/Hospital_General_Information.csv
hdfs dfs -put "/data/W205/exercise_1/data_files/Timely_and_Effective_Care-Hospital.csv" /user/w205/hospital_compare/effective_care/Timely_and_Effective_Care-Hospital.csv
hdfs dfs -put "/data/W205/exercise_1/data_files/Readmissions_and_Deaths-Hospital.csv" /user/w205/hospital_compare/readmissions/Readmissions_and_Deaths-Hospital.csv
hdfs dfs -put "/data/W205/exercise_1/data_files/Measure_Dates.csv" /user/w205/hospital_compare/measure/Measure_Dates.csv
hdfs dfs -put "/data/W205/exercise_1/data_files/hvbp_hcahps_05_28_2015.csv" /user/w205/hospital_compare/surveys/hvbp_hcahps_05_28_2015.csv
