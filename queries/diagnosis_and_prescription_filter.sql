-- Patients with more than 2 diagnoses and more than 2 unique prescriptions in 2023

WITH patient_diagnosis_ct AS (
    SELECT 
        diagnoses.patient_id,
        patients.name,
        COUNT(diagnoses.diagnosis_id) AS diagnosis_ct
    FROM patients
    JOIN diagnoses ON diagnoses.patient_id = patients.patient_id
    WHERE EXTRACT(YEAR FROM diagnoses.diagnosis_date) = 2023
    GROUP BY diagnoses.patient_id, patients.name
), unique_med_ct AS (
    SELECT 
        patient_id,
        COUNT(DISTINCT prescription_id) AS prescript_ct
    FROM diagnoses
    WHERE EXTRACT(YEAR FROM diagnosis_date) = 2023
    GROUP BY patient_id
)
SELECT
    pdc.patient_id,
    pdc.name,
    pdc.diagnosis_ct,
    umc.prescript_ct
FROM patient_diagnosis_ct pdc
JOIN unique_med_ct umc ON umc.patient_id = pdc.patient_id
WHERE pdc.diagnosis_ct > 2 AND umc.prescript_ct > 2
ORDER BY pdc.name ASC;
