SELECT 
    p.PatientID, 
    p.FirstName AS PatientFirstName, 
    p.LastName AS PatientLastName, 
    DATEDIFF(YEAR, p.DOB, GETDATE()) AS Age, 
    b.BedID, 
    n.NurseID, 
    n.FirstName AS NurseFirstName, 
    n.LastName AS NurseLastName, 
    ce.Date, 
    ce.EventType AS Reason, 
    c.Certification AS NurseCertification, 
    admitDoc.DoctorID AS AdmittingDoctorID, 
    admitDoc.FirstName AS AdmittingDoctorFirstName, 
    admitDoc.LastName AS AdmittingDoctorLastName, 
    ds.SpecialtyID AS DoctorSpecialty, 
    w.WardID, 
    w.Location AS WardLocation, 
    w.NurseCharged AS ChargeNurseID
FROM Patient p
LEFT JOIN Bed b 
ON p.BedID = b.BedID
LEFT JOIN CareEvent ce 
ON p.PatientID = ce.PatientID
LEFT JOIN Nurse n 
ON ce.NurseID = n.NurseID
LEFT JOIN NurseCertification nc 
ON n.NurseID = nc.NurseID
LEFT JOIN Certification c 
ON nc.CertID = c.CertID 
LEFT JOIN AdmitDischarge ad 
ON p.PatientID = ad.PatientID
LEFT JOIN Doctor admitDoc 
ON ad.AdmitDoc = admitDoc.DoctorID
LEFT JOIN DoctorSpecialty ds 
ON admitDoc.DoctorID = ds.DoctorID
LEFT JOIN Ward w 
ON b.WardID = w.WardID;
