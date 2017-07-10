-- Queries for best state analysis
-- Builds on (and is dependent on) best_hospitals.sql)
-- Ranks by state (excluding territories and islands) - DC was purposefully left in since there were several hospitals in DC

SELECT h.state, sum(rank) as ttl_rank FROM
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
  AND h.state not in ('MP','GU','VI')
GROUP BY h.state
ORDER BY ttl_rank
LIMIT 10;

