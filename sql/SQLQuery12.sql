SELECT TOP (1000) [PatientID]
      ,[FirstName]
      ,[LastName]
      ,[Gender]
      ,[DOB]
      ,[Street]
      ,[City]
      ,[State]
      ,[Zip]
      ,[PhoneNumber]
      ,[AltPhone]
      ,[Email]
      ,[Age]
      ,[BedID]
  FROM [HospitaIDictionary].[dbo].[Patient]
  insert into Patient
  (FirstName, LastName, Gender, DOB, Street, City, State, Zip, PhoneNumber, Email, BedID)
  Values 
  ('Pietro', 'Izzo', 'M', '2002-03-03', 'Mayp', 'Milan', 'WA', '34555', '900456789', 'pipi@izzo.as',1)