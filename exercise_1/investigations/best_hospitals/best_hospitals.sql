-- Queries for best hospital analysis
-- Procedure Ranking tables (for each procedure analyzed) generated, followed by score summary

DROP TABLE IF EXISTS hospital_procedure_PN_6;

CREATE TABLE IF NOT EXISTS hospital_procedure_PN_6 AS 
  SELECT h.provider_id, rank() OVER(ORDER BY cast(score as int) DESC) as rank
    FROM hospital h, procedure_effective_care p, measure_dates m
    WHERE h.provider_id = p.provider_id
      AND h.emergency_services = 'Yes'
      AND p.measure_id = m.measure_id
      AND p.measure_id in ('PN_6')
      AND p.score not in ('Not Available')
      AND (p.footnote not like ('%1 - %') and p.footnote not like ('%5 - %') and p.footnote not like ('%7 - %') and p.footnote not like ('%11 - %'));

DROP TABLE IF EXISTS hospital_procedure_HF_2;

CREATE TABLE IF NOT EXISTS hospital_procedure_HF_2 AS 
  SELECT h.provider_id, rank() OVER(ORDER BY cast(score as int) DESC) as rank
    FROM hospital h, procedure_effective_care p, measure_dates m
    WHERE h.provider_id = p.provider_id
      AND h.emergency_services = 'Yes'
      AND p.measure_id = m.measure_id
      AND p.measure_id in ('HF_2')
      AND p.score not in ('Not Available')
      AND (p.footnote not like ('%1 - %') and p.footnote not like ('%5 - %') and p.footnote not like ('%7 - %') and p.footnote not like ('%11 - %'));

DROP TABLE IF EXISTS hospital_procedure_IMM_2;

CREATE TABLE IF NOT EXISTS hospital_procedure_IMM_2 AS 
  SELECT h.provider_id, rank() OVER(ORDER BY cast(score as int) DESC) as rank
    FROM hospital h, procedure_effective_care p, measure_dates m
    WHERE h.provider_id = p.provider_id
      AND h.emergency_services = 'Yes'
      AND p.measure_id = m.measure_id
      AND p.measure_id in ('IMM_2')
      AND p.score not in ('Not Available')
      AND (p.footnote not like ('%1 - %') and p.footnote not like ('%5 - %') and p.footnote not like ('%7 - %') and p.footnote not like ('%11 - %'));

DROP TABLE IF EXISTS hospital_procedure_ED_1b;

CREATE TABLE IF NOT EXISTS hospital_procedure_ED_1b AS 
  SELECT h.provider_id, rank() OVER(ORDER BY cast(score as int) DESC) as rank
    FROM hospital h, procedure_effective_care p, measure_dates m
    WHERE h.provider_id = p.provider_id
      AND h.emergency_services = 'Yes'
      AND p.measure_id = m.measure_id
      AND p.measure_id in ('ED_1b')
      AND p.score not in ('Not Available')
      AND (p.footnote not like ('%1 - %') and p.footnote not like ('%5 - %') and p.footnote not like ('%7 - %') and p.footnote not like ('%11 - %'));

DROP TABLE IF EXISTS hospital_procedure_ED_2b;

CREATE TABLE IF NOT EXISTS hospital_procedure_ED_2b AS 
  SELECT h.provider_id, rank() OVER(ORDER BY cast(score as int) DESC) as rank
    FROM hospital h, procedure_effective_care p, measure_dates m
    WHERE h.provider_id = p.provider_id
      AND h.emergency_services = 'Yes'
      AND p.measure_id = m.measure_id
      AND p.measure_id in ('ED_2b')
      AND p.score not in ('Not Available')
      AND (p.footnote not like ('%1 - %') and p.footnote not like ('%5 - %') and p.footnote not like ('%7 - %') and p.footnote not like ('%11 - %'));

DROP TABLE IF EXISTS hospital_procedure_VTE_1;

CREATE TABLE IF NOT EXISTS hospital_procedure_VTE_1 AS 
  SELECT h.provider_id, rank() OVER(ORDER BY cast(score as int) DESC) as rank
    FROM hospital h, procedure_effective_care p, measure_dates m
    WHERE h.provider_id = p.provider_id
      AND h.emergency_services = 'Yes'
      AND p.measure_id = m.measure_id
      AND p.measure_id in ('VTE_1')
      AND p.score not in ('Not Available')
      AND (p.footnote not like ('%1 - %') and p.footnote not like ('%5 - %') and p.footnote not like ('%7 - %') and p.footnote not like ('%11 - %'));

DROP TABLE IF EXISTS hospital_procedure_READM_30_HOSP_WIDE;

CREATE TABLE IF NOT EXISTS hospital_procedure_READM_30_HOSP_WIDE AS 
  SELECT h.provider_id, rank() OVER(ORDER BY (score/denominator)) as rank
    FROM hospital h, procedure_readmissions_deaths p, measure_dates m
    WHERE h.provider_id = p.provider_id
      AND h.emergency_services = 'Yes'
      AND p.measure_id = m.measure_id
      AND p.measure_id in ('READM_30_HOSP_WIDE')
      AND p.score not in ('Not Available')
      AND (p.footnote not like ('%1 - %') and p.footnote not like ('%5 - %') and p.footnote not like ('%7 - %') and p.footnote not like ('%11 - %'));

DROP TABLE IF EXISTS hospital_procedure_READM_30_PN;

CREATE TABLE IF NOT EXISTS hospital_procedure_READM_30_PN AS 
  SELECT h.provider_id, rank() OVER(ORDER BY (score/denominator)) as rank
    FROM hospital h, procedure_readmissions_deaths p, measure_dates m
    WHERE h.provider_id = p.provider_id
      AND h.emergency_services = 'Yes'
      AND p.measure_id = m.measure_id
      AND p.measure_id in ('READM_30_PN')
      AND p.score not in ('Not Available')
      AND (p.footnote not like ('%1 - %') and p.footnote not like ('%5 - %') and p.footnote not like ('%7 - %') and p.footnote not like ('%11 - %'));

DROP TABLE IF EXISTS hospital_procedure_MORT_30_PN;

CREATE TABLE IF NOT EXISTS hospital_procedure_MORT_30_PN AS 
  SELECT h.provider_id, rank() OVER(ORDER BY (score/denominator)) as rank
    FROM hospital h, procedure_readmissions_deaths p, measure_dates m
    WHERE h.provider_id = p.provider_id
      AND h.emergency_services = 'Yes'
      AND p.measure_id = m.measure_id
      AND p.measure_id in ('MORT_30_PN')
      AND p.score not in ('Not Available')
      AND (p.footnote not like ('%1 - %') and p.footnote not like ('%5 - %') and p.footnote not like ('%7 - %') and p.footnote not like ('%11 - %'));

DROP TABLE IF EXISTS hospital_procedure_READM_30_HF;

CREATE TABLE IF NOT EXISTS hospital_procedure_READM_30_HF AS 
  SELECT h.provider_id, rank() OVER(ORDER BY (score/denominator)) as rank
    FROM hospital h, procedure_readmissions_deaths p, measure_dates m
    WHERE h.provider_id = p.provider_id
      AND h.emergency_services = 'Yes'
      AND p.measure_id = m.measure_id
      AND p.measure_id in ('READM_30_HF')
      AND p.score not in ('Not Available')
      AND (p.footnote not like ('%1 - %') and p.footnote not like ('%5 - %') and p.footnote not like ('%7 - %') and p.footnote not like ('%11 - %'));

DROP TABLE IF EXISTS hospital_procedure_READM_30_COPD;

CREATE TABLE IF NOT EXISTS hospital_procedure_READM_30_COPD AS 
  SELECT h.provider_id, rank() OVER(ORDER BY (score/denominator)) as rank
    FROM hospital h, procedure_readmissions_deaths p, measure_dates m
    WHERE h.provider_id = p.provider_id
      AND h.emergency_services = 'Yes'
      AND p.measure_id = m.measure_id
      AND p.measure_id in ('READM_30_COPD')
      AND p.score not in ('Not Available')
      AND (p.footnote not like ('%1 - %') and p.footnote not like ('%5 - %') and p.footnote not like ('%7 - %') and p.footnote not like ('%11 - %'));

DROP TABLE IF EXISTS hospital_procedure_MORT_30_HF;

CREATE TABLE IF NOT EXISTS hospital_procedure_MORT_30_HF AS 
  SELECT h.provider_id, rank() OVER(ORDER BY (score/denominator)) as rank
    FROM hospital h, procedure_readmissions_deaths p, measure_dates m
    WHERE h.provider_id = p.provider_id
      AND h.emergency_services = 'Yes'
      AND p.measure_id = m.measure_id
      AND p.measure_id in ('MORT_30_HF')
      AND p.score not in ('Not Available')
      AND (p.footnote not like ('%1 - %') and p.footnote not like ('%5 - %') and p.footnote not like ('%7 - %') and p.footnote not like ('%11 - %'));

DROP TABLE IF EXISTS hospital_procedure_MORT_30_COPD;

CREATE TABLE IF NOT EXISTS hospital_procedure_MORT_30_COPD AS 
  SELECT h.provider_id, rank() OVER(ORDER BY (score/denominator)) as rank
    FROM hospital h, procedure_readmissions_deaths p, measure_dates m
    WHERE h.provider_id = p.provider_id
      AND h.emergency_services = 'Yes'
      AND p.measure_id = m.measure_id
      AND p.measure_id in ('MORT_30_COPD')
      AND p.score not in ('Not Available')
      AND (p.footnote not like ('%1 - %') and p.footnote not like ('%5 - %') and p.footnote not like ('%7 - %') and p.footnote not like ('%11 - %'));

SELECT A.provider_id, h.hospital_name, h.city, h.state, sum(rank) as ttl_rank FROM
(
SELECT provider_id, rank FROM hospital_procedure_PN_6
UNION ALL
SELECT provider_id, rank FROM hospital_procedure_HF_2
UNION ALL
SELECT provider_id, rank FROM hospital_procedure_IMM_2
UNION ALL
SELECT provider_id, rank FROM hospital_procedure_ED_1b
UNION ALL
SELECT provider_id, rank FROM hospital_procedure_ED_2b
UNION ALL
SELECT provider_id, rank FROM hospital_procedure_VTE_1
UNION ALL
SELECT provider_id, rank FROM hospital_procedure_READM_30_HOSP_WIDE
UNION ALL
SELECT provider_id, rank FROM hospital_procedure_READM_30_PN
UNION ALL
SELECT provider_id, rank FROM hospital_procedure_MORT_30_PN
UNION ALL
SELECT provider_id, rank FROM hospital_procedure_READM_30_HF
UNION ALL
SELECT provider_id, rank FROM hospital_procedure_READM_30_COPD
UNION ALL
SELECT provider_id, rank FROM hospital_procedure_MORT_30_HF
UNION ALL
SELECT provider_id, rank FROM hospital_procedure_MORT_30_COPD
) A, hospital h
WHERE A.provider_id = h.provider_id
GROUP BY A.provider_id, h.hospital_name, h.city, h.state
ORDER BY ttl_rank
LIMIT 10;


