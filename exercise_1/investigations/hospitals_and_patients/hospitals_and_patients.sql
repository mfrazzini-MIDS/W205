SELECT CORR(B.ttl_rank,A.composite_score) FROM
(SELECT h.provider_id, 
  (((s.HCAHPS_base_score + s.HCAHPS_consistency_score) + (overall_rating_of_hospital_achievement_pct*100) + (overall_rating_of_hospital_improvement_pct*100) )/3) as composite_score
FROM hospital h, 20150528_survey_responses s
WHERE h.provider_id = s.provider_number
  AND (s.HCAHPS_base_score is not NULL AND s.HCAHPS_consistency_score is not NULL)) A,
(SELECT Z.provider_id, sum(rank) as ttl_rank FROM
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
)Z
GROUP BY Z.provider_id) B
WHERE A.provider_id = B.provider_id;
