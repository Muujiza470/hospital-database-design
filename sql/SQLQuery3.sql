SELECT TOP (1000) [TreatmentID]
      ,[Name]
      ,[Description]
      ,[Charge]
  FROM [HospitaIDictionary].[dbo].[Treatment]
 INSERT INTO Treatment (Name, Description, Charge)
VALUES
('Physical Therapy', 'Rehabilitation to improve mobility.', 150.00),
('Chemotherapy', 'Anti-cancer drug therapy.', 1200.00),
('Dialysis', 'Removes waste from the blood.', 300.00),
('Laser Eye Surgery', 'Vision correction using lasers.', 2500.00),
('Tooth Extraction', 'Dental removal of a tooth.', 200.00),
('Appendectomy', 'Removal of the appendix.', 1800.00),
('Vaccination', 'Provides disease immunity.', 50.00),
('Fracture Treatment', 'Care for broken bones.', 500.00),
('Psychotherapy', 'Therapy for mental health.', 100.00),
('Blood Transfusion', 'Transfer of blood.', 250.00);

