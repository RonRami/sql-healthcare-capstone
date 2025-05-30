-- Schema for patients, visits, and diagnoses tables

CREATE TABLE patients (
    patient_id INT PRIMARY KEY,
    name VARCHAR(100),
    date_of_birth DATE
);

CREATE TABLE visits (
    visit_id INT PRIMARY KEY,
    patient_id INT,
    visit_date DATE,
    blood_pressure INT,
    cholesterol INT,
    FOREIGN KEY (patient_id) REFERENCES patients(patient_id)
);

CREATE TABLE diagnoses (
    diagnosis_id INT PRIMARY KEY,
    patient_id INT,
    diagnosis_code VARCHAR(10),
    diagnosis_date DATE,
    prescription_id INT,
    FOREIGN KEY (patient_id) REFERENCES patients(patient_id)
);
