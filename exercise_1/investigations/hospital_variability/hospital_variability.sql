-- Query 1: Analysis of variability in procedure_effective_care
SELECT A.measure_id, A.measure_name, incomplete_measures, round((incomplete_measures/4451),3) as avg_completeness FROM
(SELECT m.measure_id, m.measure_name, count(*) as incomplete_measures
  FROM hospital h, procedure_effective_care p, measure_dates m
  WHERE h.provider_id = p.provider_id
    AND h.emergency_services = 'Yes'
    AND p.measure_id = m.measure_id
    AND p.score not in ('Not Available')
    AND (p.footnote not like ('%1 - %') and p.footnote not like ('%5 - %') and p.footnote not like ('%7 - %') and p.footnote not like ('%11 - %'))
  GROUP BY m.measure_id, m.measure_name) A
ORDER BY avg_completeness DESC;

-- Query 2: Analysis of variability in procedure_readmissions_deaths  
SELECT A.measure_id, A.measure_name, incomplete_measures, round((incomplete_measures/4451),3) as avg_completeness FROM
(SELECT m.measure_id, m.measure_name, count(*) as incomplete_measures
  FROM hospital h, procedure_readmissions_deaths p, measure_dates m
  WHERE h.provider_id = p.provider_id
    AND h.emergency_services = 'Yes'
    AND p.measure_id = m.measure_id
    AND p.score not in ('Not Available')
    AND (p.footnote not like ('%1 - %') and p.footnote not like ('%5 - %') and p.footnote not like ('%7 - %') and p.footnote not like ('%11 - %'))
  GROUP BY m.measure_id, m.measure_name) A
ORDER BY avg_completeness DESC;
