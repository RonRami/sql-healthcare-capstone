-- Patients with more than 10 visits in 2023

SELECT 
    patients.patient_id,
    patients.name,
    COUNT(appointments.appointment_id) AS visit_count
FROM patients
JOIN appointments ON appointments.patient_id = patients.patient_id
WHERE EXTRACT(YEAR FROM appointments.appointment_date) = 2023
GROUP BY patients.patient_id, patients.name
HAVING COUNT(appointments.appointment_id) > 10
ORDER BY visit_count DESC;
