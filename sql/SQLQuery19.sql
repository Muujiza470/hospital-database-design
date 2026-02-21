SELECT 
    p.PatientID, 
    p.FirstName AS PatientFirstName, 
    p.LastName AS PatientLastName, 
    ad.AdmitDate, 
    ad.DischargeDate, 
    admitDoc.DoctorID AS AdmittingDoctorID, 
    admitDoc.FirstName AS AdmittingDoctorFirstName, 
    admitDoc.LastName AS AdmittingDoctorLastName, 
    dischargeDoc.DoctorID AS DischargingDoctorID, 
    dischargeDoc.FirstName AS DischargingDoctorFirstName, 
    dischargeDoc.LastName AS DischargingDoctorLastName
FROM 
    Patient p
INNER JOIN 
    AdmitDischarge ad 
ON 
    p.PatientID = ad.PatientID
INNER JOIN 
    Doctor admitDoc 
ON 
    ad.AdmitDoc = admitDoc.DoctorID
INNER JOIN 
    Doctor dischargeDoc 
ON 
    ad.DischargeDoc = dischargeDoc.DoctorID

