-- Task: 
-- ● Find the top 5 most recent visits to the Neurology department 
-- ● Where the patient had at least 3 recorded symptoms 
-- ● And the patient is older than 50 years

-- Return the following columns:
-- ● patients.name 
-- ● patients.age 
-- ● visits.visit_date 
-- ● symptom_count 

WITH PatientSymptomCounts AS (
    SELECT
        p.id AS patient_id,
        COUNT(s.id) AS total_symptom_count
    FROM patients p
    JOIN visits v ON p.id = v.patient_id
    JOIN symptoms s ON v.id = s.visit_id
    WHERE p.age > 50 AND v.department = 'Neurologi'
    GROUP BY p.id
    HAVING COUNT(s.id) >= 3
),
RankedVisits AS (
    SELECT
        p.id,
        p.name AS patient_name,
        p.age AS patient_age,
        v.visit_date,
        ROW_NUMBER() OVER (
            PARTITION BY p.id
            ORDER BY v.visit_date DESC
        ) AS rn
    FROM patients p
    JOIN visits v ON p.id = v.patient_id
    JOIN PatientSymptomCounts psc ON p.id = psc.patient_id
    WHERE v.department = 'Neurologi'
)
SELECT
    rv.patient_name,
    rv.patient_age,
    rv.visit_date,
    psc.total_symptom_count
FROM RankedVisits rv
JOIN PatientSymptomCounts psc ON rv.id = psc.patient_id
WHERE rv.rn = 1
ORDER BY rv.visit_date DESC
LIMIT 5;



