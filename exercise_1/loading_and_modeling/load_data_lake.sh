#!/bin/bash
# load_data_lake.sh
# This script retrieves and loads data for MIDS 205 exercise 1
#
# filesystem setup
cd /data
mkdir /exercise_1
cd /exercise_1
mkdir /orig_data_files
# retrieve and unzip data
wget https://data.medicare.gov/views/bg9k-emty/files/Nqcy71p9Ss2RSBWDmP77H1DQXcyacr2khotGbDHHW_s?content_type=application%2Fzip%3B%20charset%3Dbinary&filename=Hospital_Revised_Flatfiles.zip
unzip Nqcy71p9Ss2RSBWDmP77H1DQXcyacr2khotGbDHHW_s\?content_type\=application%2Fzip\;\ charset\=binary
cd ..
mkdir data_files
# copy and rename files, removing header line
tail -n +2 "/data/W205/exercise_1/orig_data_files/Hospital General Information.csv" > "/data/W205/exercise_1/data_files/Hospital_General_Information.csv"
tail -n +2 "/data/W205/exercise_1/orig_data_files/Timely and Effective Care - Hospital.csv" > "/data/W205/exercise_1/data_files/Timely_and_Effective_Care-Hospital.csv"
tail -n +2 "/data/W205/exercise_1/orig_data_files/Readmissions and Deaths - Hospital.csv" > "/data/W205/exercise_1/data_files/Readmissions_and_Deaths-Hospital.csv"
tail -n +2 "/data/W205/exercise_1/orig_data_files/Measure Dates.csv" > "/data/W205/exercise_1/data_files/Measure_Dates.csv"
tail -n +2 "/data/W205/exercise_1/orig_data_files/hvbp_hcahps_05_28_2015.csv" > "/data/W205/exercise_1/data_files/hvbp_hcahps_05_28_2015.csv"
# create and load HDFS directories (make sure Hadoop/HDFS is started)
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
