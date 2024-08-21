create database MM_Hospital
use MM_Hospital
CREATE TABLE Patient(
PatientId INT PRIMARY KEY,
PName VARCHAR(45),
Age INT,
Gender VARCHAR(10),
Problem VARCHAR(50)
);
SELECT * FROM Patient;
INSERT INTO Patient(PatientId,PName,Age,Gender,Problem)
VALUES(20241,'Subash',20,'Male','Head Pain'),
(20242,'Thilak',21,'Male','Dysentery'),
(20243,'Chandru',20,'Male','Cold'),
(20244,'Arish',22,'Male','Fever');

SELECT * FROM Patient;

DELETE FROM Patient
WHERE PatientId=20242;

ALTER TABLE Patient
ADD Diagnosis VARCHAR(50);

SELECT * FROM Patient
ORDER BY PatientId ASC;

SELECT PName,COUNT(*) AS num_patient
FROM Patient
GROUP BY Diagnosis;