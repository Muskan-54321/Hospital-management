HOSPITAL MANAGEMENT SYSTEM:-IMPLEMENTATION AND EXPLANATION

This README file explains the implementation of a recommendation system using SQL , which employs both collaborative filtering and content-based recommendation techniques. The system uses a MySQL database to store patients information and doctors appointments.

DATABASE SCHEMA

TABLES

storing patients information

CREATE TABLE Patients (
    PatientID INT AUTO_INCREMENT PRIMARY KEY,
    
    FirstName VARCHAR(50),
    
    LastName VARCHAR(50),
    
    Gender ENUM('Male', 'Female', 'Other'),
    
    DateOfBirth DATE,
    
    PhoneNumber VARCHAR(15),
    
    Email VARCHAR(100),
    
    Address TEXT,
    
    RegistrationDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP   
);



storing doctors information

CREATE TABLE Doctors (
    DoctorID INT AUTO_INCREMENT PRIMARY KEY,
    
    FirstName VARCHAR(50),
    
    LastName VARCHAR(50),
    
    Specialty VARCHAR(100),
    
    PhoneNumber VARCHAR(15),
    
    Email VARCHAR(100),
    
    Address TEXT,
    
    JoiningDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP    
);


for appointments

CREATE TABLE Appointments (
    AppointmentID INT AUTO_INCREMENT PRIMARY KEY,
    
    PatientID INT,
    
    DoctorID INT,
    
    AppointmentDate DATETIME,
    
    Status ENUM('Scheduled', 'Completed', 'Cancelled'),
    
    Notes TEXT,
    
    FOREIGN KEY (PatientID) REFERENCES Patients(PatientID),
    
    FOREIGN KEY (DoctorID) REFERENCES Doctors(DoctorID)    
);

for billing information

CREATE TABLE Billing (
    BillID INT AUTO_INCREMENT PRIMARY KEY,
    
    PatientID INT,
    
    AppointmentID INT,
    
    TotalAmount DECIMAL(10, 2),
    
    PaymentStatus ENUM('Paid', 'Unpaid'),
    
    PaymentDate DATETIME,
    
    FOREIGN KEY (PatientID) REFERENCES Patients(PatientID),
    
    FOREIGN KEY (AppointmentID) REFERENCES Appointments(AppointmentID)  
);


for medications

CREATE TABLE Medications (
    MedicationID INT AUTO_INCREMENT PRIMARY KEY,
    
    PatientID INT,
    
    DoctorID INT,
    
    MedicationName VARCHAR(100),
    
    Dosage VARCHAR(50),
    
    StartDate DATE,
    
    EndDate DATE,
    
    Notes TEXT,
    
    FOREIGN KEY (PatientID) REFERENCES Patients(PatientID),
    
    FOREIGN KEY (DoctorID) REFERENCES Doctors(DoctorID)  
);






