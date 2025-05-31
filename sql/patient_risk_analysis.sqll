-- Flag high-risk patients based on multiple health indicators

WITH visit_summary_23 AS (
    SELECT
        patients.patient_id,
        patients.name,
        COUNT(visits.visit_id) AS visit_count,
        AVG(visits.blood_pressure) AS avg_bp,
        AVG(visits.cholesterol) AS avg_chol,
        COUNT(diagnoses.diagnosis_id) AS diagnosis_ct
    FROM patients
    JOIN visits ON visits.patient_id = patients.patient_id
    JOIN diagnoses ON diagnoses.patient_id = patients.patient_id
    WHERE EXTRACT(YEAR FROM visits.visit_date) = 2023
    GROUP BY patients.patient_id, patients.name
)
SELECT 
    vs23.patient_id,
    vs23.name,
    vs23.visit_count,
    vs23.avg_bp,
    vs23.avg_chol,
    vs23.diagnosis_ct,
    CASE 
        WHEN vs23.visit_count > 5 
          AND vs23.avg_bp > 140 
          AND vs23.avg_chol > 240 
          AND vs23.diagnosis_ct > 2 
        THEN 'Yes'
        ELSE NULL
    END AS high_risk_flag
FROM visit_summary_23 vs23
ORDER BY vs23.name;
