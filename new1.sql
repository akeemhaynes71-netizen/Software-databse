CREATE TABLE Therapist (
    TherapistID CHAR(3),
    LastName VARCHAR(50),
    FirstName VARCHAR(50),
    Street VARCHAR2(100),
    City VARCHAR(50),
    States VARCHAR(50),
    ZipCode VARCHAR(10),
    PRIMARY KEY (TherapistID)
    );
	
	
	INSERT INTO Therapist (TherapistID, LastName, FirstName, Address, City, States, ZipCode)
VALUES ('648','Shields','Anthony','5222 Eagle Court','Palm Rivers','TX','72511');

INSERT INTO Therapist (TherapistID, LastName, FirstName, Address, City, States, ZipCode)
VALUES ('273','McClain','Bridgette','385 West Mill St.','Waterville','TX','76658');

INSERT INTO Therapist (TherapistID, LastName, FirstName, Address, City, States, ZipCode)
VALUES ('085','Risk','Jonathan','1010 650 North','Palm Rivers','TX','72511');

INSERT INTO Therapist (TherapistID, LastName, FirstName, Address, City, States, ZipCode)
VALUES ('852','Nair','Saritha','25 North Elm St.','Livewood','TX','72512');

INSERT INTO Therapist (TherapistID, LastName, FirstName, Address, City, States, ZipCode)
VALUES ('124','Wilder','Steven','7354 Rockville Road','San Vista','TX','72510');


G)CREATE TABLE Patient (
    Patientid NUMBER(7),
    LastName VARCHAR(50),
    FirstName VARCHAR(50),
    Address VARCHAR2(100),
    City VARCHAR(50),
    States CHAR(3),
    ZipCode CHAR(6),
    Balance DECIMAL(10,2)
);
THERE WAS NO COLUMN NAME FOR ADDRESS

INSERT INTO Patient (PatientID, LastName, FirstName, Address, City, States, ZipCode, Balance)
VALUES (1016, 'Koehler', 'Robbie', '119 West Bay Dr.', 'San Vista', 'TX', '72510', 1535.15);

INSERT INTO Patient (PatientID, LastName, FirstName, Address, City, States, ZipCode, Balance)
VALUES (1011, 'King', 'Joseph', '941 Treemont', 'Oak Hills', 'TX', '74081', 212.80);

INSERT INTO Patient (PatientID, LastName, FirstName, Address, City, States, ZipCode, Balance)
VALUES (1012, 'Houghland', 'Susan', '7841 Lake Side Dr.', 'Munster', 'TX', '72380', 1955.40);

INSERT INTO Patient (PatientID, LastName, FirstName, Address, City, States, ZipCode, Balance)
VALUES (1013, 'Falls', 'Tierra', '44 Applewood Ave.', 'Palm Rivers', 'TX', '72511', 1000.35);

INSERT INTO Patient (PatientID, LastName, FirstName, Address, City, States, ZipCode, Balance)
VALUES (1014, 'Odepaul', 'Ben', '546 WCR 150 South', 'Munster', 'TX', '74093', 525.00);


CREATE TABLE Therapies(
     TheapyCode VARCHAR(10),
     Description CLOB,
     UnitOfTime INT,
	 PRIMARY KEY (TheapyCode)
	 CONSTRAINT FOREIGN KEY (TherapistId) REFRENCES TherapistId (TherapistId) ON DELETE SET TO NULL
);

THE DESCRIPTION NEEDS TO HOLD MORE CHARACTERS.
INSERT INTO Therapies (TheapyCode, Description, UnitOfTime) VALUES ('90901', 'Biofeedback training by any modality', 20);
INSERT INTO Therapies (TheapyCode, Description, UnitOfTime) VALUES ('92240', 'Shoulder strapping', 10);
INSERT INTO Therapies (TheapyCode, Description, UnitOfTime) VALUES ('92S07', 'Treatment of speech', 15);
INSERT INTO Therapies (TheapyCode, Description, UnitOfTime) VALUES ('92530', 'Knee strapping', 30);
INSERT INTO Therapies (TheapyCode, Description, UnitOfTime) VALUES ('92540', 'Ankle and/or foot strapping', 60);


CREATE TABLE Sessions (
    SessionNum INT,
    SessionDate DATE,
    Patient_id INT,
    LengthOfSession INT,
    Therapist_id INT,
    TherapistCode VARCHAR(10),
    PRIMARY KEY (SessionNum),
    FOREIGN KEY (Patient_id) REFERENCES Patient(Patientid)
);


INSERT INTO Sessions (SessionNum, SessionDate, Patient_id, LengthOfSession, Therapist_id, TherapistCode)
VALUES (27, TO_DATE('10/10/2018', 'MM/DD/YYYY'), 1011, 45, 85, '92507');

INSERT INTO Sessions (SessionNum, SessionDate, Patient_id, LengthOfSession, Therapist_id, TherapistCode)
VALUES (28, TO_DATE('11/10/2018', 'MM/DD/YYYY'), 1016, 30, 648, '90901');

INSERT INTO Sessions (SessionNum, SessionDate, Patient_id, LengthOfSession, Therapist_id, TherapistCode)
VALUES (29, TO_DATE('11/10/2018', 'MM/DD/YYYY'), 1014, 60, 124, '92240');

INSERT INTO Sessions (SessionNum, SessionDate, Patient_id, LengthOfSession, Therapist_id, TherapistCode)
VALUES (30, TO_DATE('12/10/2018', 'MM/DD/YYYY'), 1013, 30, 273, '92530');

INSERT INTO Sessions (SessionNum, SessionDate, Patient_id, LengthOfSession, Therapist_id, TherapistCode)
VALUES (31, TO_DATE('10/15/2018', 'MM/DD/YYYY'), 1016, 90, 852, '92540');
