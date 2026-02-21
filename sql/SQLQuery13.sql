SELECT TOP (1000) [CareEventID]
      ,[EventType]
      ,[Date]
      ,[Time]
      ,[PatientID]
      ,[NurseID]
  FROM [HospitaIDictionary].[dbo].[CareEvent]

insert into CareEvent
(EventType, Date, Time, PatientID, NurseID)
Values 
('Christmas', '2024-12-25', '05:00', 4, 2)
