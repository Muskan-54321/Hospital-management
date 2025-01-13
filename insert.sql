create database HospitalManagement;
use HospitalManagement;

INSERT INTO Patients (FirstName, LastName, Gender, DateOfBirth, PhoneNumber, Email, Address)
VALUES 
('John', 'Doe', 'Male', '1985-03-15', '1234567890', 'john.doe@example.com', '123 Main Street'),
('Jane', 'Smith', 'Female', '1990-07-25', '0987654321', 'jane.smith@example.com', '456 Elm Street');

select*from patients;

NSERT INTO Doctors (FirstName, LastName, Specialty, PhoneNumber, Email, Address)
VALUES 
('Alice', 'Brown', 'Cardiology', '1231231234', 'alice.brown@example.com', '789 Pine Street'),
('Bob', 'White', 'Neurology', '3213214321', 'bob.white@example.com', '101 Maple Avenue');

select*from doctors;

INSERT INTO Appointments (PatientID, DoctorID, AppointmentDate, Status, Notes)
VALUES 
(1, 1, '2025-01-15 10:00:00', 'Scheduled', 'Follow-up visit'),
(2, 2, '2025-01-16 14:00:00', 'Scheduled', 'Initial consultation');

select*from appointments;

INSERT INTO Billing (PatientID, AppointmentID, TotalAmount, PaymentStatus, PaymentDate)
VALUES 
(1, 1, 200.00, 'Unpaid', NULL),
(2, 2, 150.00, 'Paid', '2025-01-10 09:30:00');

select*from billing;

INSERT INTO Medications (PatientID, DoctorID, MedicationName, Dosage, StartDate, EndDate, Notes)
VALUES 
(1, 1, 'Aspirin', '100mg once daily', '2025-01-01', '2025-01-15', 'For blood pressure'),
(2, 2, 'Ibuprofen', '200mg twice daily', '2025-01-05', '2025-01-20', 'For pain relief');

select*from medications;
