SELECT 
    p.PatientID,  
    p.LastName AS PatientLastName, 
    i.Name, 
    i.Charge, 
    ic.Date
FROM 
    Patient p
INNER JOIN 
    ItemCharge ic 
ON 
    p.PatientID = ic.PatientID
INNER JOIN 
    Item i 
ON 
    ic.ItemID = i.ItemID