SELECT 
    p.PatientID, 
    p.FirstName AS PatientFirstName, 
    p.LastName AS PatientLastName, 
    t.Name, 
    d.DoctorID, 
    d.FirstName AS DoctorFirstName, 
    d.LastName AS DoctorLastName
FROM Patient p
INNER JOIN Treatment t 
ON p.PatientID = PatientID
INNER JOIN Doctor d 
ON d.DoctorID = DoctorID