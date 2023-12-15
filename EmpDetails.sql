--TABLE CREATION: 
CREATE TABLE EmpDetails(
    Eid VARCHAR(6) PRIMARY KEY,
    Ename VARCHAR(20),
    DOB DATE,
    Designation VARCHAR(20),
    Salary INT,
    DOJ DATE
);

--VALUE INSERTION:
INSERT INTO EmpDetails (Eid, Ename, DOB, Designation, Salary, DOJ)
VALUES ('E101', 'Suma', '29-Dec-1989', 'Designer', 20000, '01-Apr-2010');

INSERT INTO EmpDetails (Eid, Ename, DOB, Designation, Salary, DOJ)
VALUES ('E102', 'Amit', '10-Jan-1995', 'Programmer', 25000, '18-Feb-2018');

INSERT INTO EmpDetails (Eid, Ename, DOB, Designation, Salary, DOJ)
VALUES ('E103', 'Payal', '15-Aug-1985', 'Tester', 35000, '13-Jun-2011');

INSERT INTO EmpDetails (Eid, Ename, DOB, Designation, Salary, DOJ)
VALUES ('E104', 'Kiran', '20-Apr-1990', 'Programmer', 40000, '07-Mar-2014');

INSERT INTO EmpDetails (Eid, Ename, DOB, Designation, Salary, DOJ)
VALUES ('E105', 'Meenal', '29-May-1983', 'DBA', 50000, '09-Dec-2011');

INSERT INTO EmpDetails (Eid, Ename, DOB, Designation, Salary, DOJ)
VALUES ('E106', 'Sheila', '01-May-1970', 'Analyst', 60000, '25-Sep-2018');

INSERT INTO EmpDetails (Eid, Ename, DOB, Designation, Salary, DOJ)
VALUES ('E107', 'Swamy', '13-Jan-1985', 'Programmer', 45000, '14-Feb-2016');

INSERT INTO EmpDetails (Eid, Ename, DOB, Designation, Salary, DOJ)
VALUES ('E108', 'Sushma', '22-Dec-1976', 'DBA', 45000, '31-Jan-2012');

--QUERY-1:
SELECT Ename 
FROM EmpDetails 
WHERE Designation = 'Programmer';

--QUERY-2:
SELECT Ename
FROM EmpDetails
WHERE DOJ >= '01-Jan-15';

--QUERY-3:
SELECT Ename
FROM EmpDetails
WHERE Ename LIKE '%a';

--QUERY-4:
SELECT SUM(Salary) AS TotalSalary
FROM EmpDetails
WHERE Designation = 'Programmer';

--QUERY-5:
SELECT UPPER(Ename) AS NAME
FROM EmpDetails;

--QUERY-6:
SELECT * FROM EmpDetails
WHERE DOJ = (SELECT MIN(DOJ) FROM EmpDetails);

--QUERY-7:
SELECT * FROM EmpDetails
WHERE Ename LIKE '%ee%';

--QUERY-8:
UPDATE EmpDetails
SET Salary = Salary + 5000
WHERE Designation = 'DBA';

--QUERY-9:
SELECT * FROM EmpDetails
WHERE Salary > (SELECT AVG(Salary) FROM EmpDetails);

--QUERY-10:
SELECT Ename || ' is working as ' || Designation || ' with a Salary of Rs ' || Salary AS RecordFormat
FROM EmpDetails;