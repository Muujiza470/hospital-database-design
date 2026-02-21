SELECT TOP (1000) [NurseAssignmentID]
      ,[AssignDate]
      ,[StartTime]
      ,[EndTime]
      ,[HourCalc]
      ,[WardID]
      ,[NurseID]
  FROM [HospitaIDictionary].[dbo].[NurseAssignment]
UPDATE NurseAssignment
SET AssignDate = '2024-12-06',
    StartTime = '07:00',
    EndTime = '15:00',
    WardID = 2,
    NurseID = 3
WHERE NurseAssignmentID = 1

