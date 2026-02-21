SELECT ad.PatientID, ad.AdmitDoc, ad.AdmitDate, p.BedID, b.WardID
FROM AdmitDischarge ad
JOIN Patient p
ON ad.PatientID = p.PatientID
JOIN Doctor d
on ad.AdmitDoc = d.DoctorID
JOIN Bed b
on p.BedID = b.BedID
ORDER BY 
    ad.AdmitDate ASC