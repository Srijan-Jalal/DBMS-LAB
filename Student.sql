--TABLE CREATION:
CREATE TABLE Student(
    Sid INT PRIMARY KEY,
    Sname VARCHAR(20),
    DOB DATE,
    State VARCHAR(20),
    Gender CHAR(1),
    Category VARCHAR(20),
    Course VARCHAR(10)
);
 
--VALUE INSERTION:
INSERT INTO Student
VALUES('1001','Neha','29-Dec-2002','Telangana','F','Gen',
'Comp');

INSERT INTO Student
VALUES('1002','Arun','10-Dec-2002','Telangana','M','OBC','Hons');

INSERT INTO Student
VALUES('1003','Payal','15-Aug-2001','Maharashtra','F','Gen','Appl');

INSERT INTO Student
VALUES('1004','Amrita','20-Apr-2002','Karnataka','F','OBC','Hons');

INSERT INTO Student
VALUES('1005','Pavan','29-May-2003','AndhraPradesh','M',
'ExServicemen','Comp');

INSERT INTO Student
VALUES('1006','Anchal','01-May-2003','Gujarat','F','OBC','Comp');

INSERT INTO Student
VALUES('1007','Ramya','13-Jan-2002','Telangana','F','Gen','Ap');

INSERT INTO Student
VALUES('1008','Rakesh','22-Dec-2001','AndhraPradesh','M','Sports','Comp');

--QUERY-1:
SELECT Sname FROM Student
WHERE State NOT IN ('Telangana', 'Andhra Pradesh');

--QUERY-2:
CREATE VIEW V1 AS
SELECT Sid,Sname FROM Student
WHERE State = 'Telangana';

--QUERY-3:
CREATE INDEX idx_Stud_Name ON Student (Sname);

--QUERY-4:
SELECT Sname FROM Student
WHERE Gender = 'F' AND Course = 'Comp' AND Category='OBC';

--QUERY-5:
SELECT Sid,Sname,FLOOR(MONTHS_BETWEEN(SYSDATE, DOB) / 12) AS Age FROM Student;

--QUERY-6:
SELECT * FROM Student
ORDER BY Course,Sname;

--QUERY-7:
DELETE FROM Student
WHERE Course='Comp' AND DOB >= '01-Jan-03';

--QUERY-8:
ALTER TABLE Student
ADD Contact_No CHAR(10);
ALTER TABLE Student
ADD Email VARCHAR(40);

--QUERY-9:
SELECT 
    CASE WHEN Gender = 'M' THEN 'Mr.' ELSE 'Ms.' END || Sname AS Name
FROM Student;

--QUERY-10:
SELECT Sname
FROM Student
WHERE LENGTH(Sname) = '5';
