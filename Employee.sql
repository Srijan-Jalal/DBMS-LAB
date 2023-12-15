--TABLE CREATION-1: 
CREATE TABLE Department(
    DeptId VARCHAR(2) PRIMARY KEY,
    Dname VARCHAR(20)
);

--TABLE CREATION-2:
CREATE TABLE Employee(
    Eid VARCHAR(6) PRIMARY KEY,
    Ename VARCHAR(20),
    DeptId VARCHAR(2),
    Designation VARCHAR(20),
    Salary INT CHECK (Salary > 10000),
    DOJ DATE,
    FOREIGN KEY (DeptId) REFERENCES Department(DeptId) 
);

--VALUE INSERTION-1:
INSERT INTO Department (DeptId, Dname) 
VALUES ('D1', 'Sales');

INSERT INTO Department (DeptId, Dname) 
VALUES ('D2', 'Marketing');

INSERT INTO Department (DeptId, Dname) 
VALUES ('D3', 'Finance');

--VAULE INSERTION-2:
INSERT INTO Employee (Eid, Ename, DeptId, Designation, Salary, DOJ)
VALUES ('101', 'Sudha', 'D2', 'Clerk', 20000, '01-Apr-10');

INSERT INTO Employee (Eid, Ename, DeptId, Designation, Salary, DOJ)
VALUES ('102', 'David', 'D1', 'Manager', 50000, '18-Feb-18');

INSERT INTO Employee (Eid, Ename, DeptId, Designation, Salary, DOJ)
VALUES ('103', 'Preethi', 'D3', 'Clerk', 35000, '13-Jun-11');

INSERT INTO Employee (Eid, Ename, DeptId, Designation, Salary, DOJ)
VALUES ('104', 'Kiran', 'D1', 'Salesman', 20000, '7-Mar-14');

INSERT INTO Employee (Eid, Ename, DeptId, Designation, Salary, DOJ)
VALUES ('105', 'Meenal', 'D2', 'Clerk', 50000, '9-Dec-11');

INSERT INTO Employee (Eid, Ename, DeptId, Designation, Salary, DOJ)
VALUES ('106', 'Sunitha', 'D3', 'Manager', 60000, '25-Sep-18');

INSERT INTO Employee (Eid, Ename, DeptId, Designation, Salary, DOJ)
VALUES ('107', 'Akhil', 'D3', 'Clerk', 25000, '14-Feb-16');

INSERT INTO Employee (Eid, Ename, DeptId, Designation, Salary, DOJ)
VALUES ('108', 'Sushma', 'D2', 'Manager', 45000, '31-Jan-12');

--QUERY-1:
SELECT * FROM Employee
WHERE Salary > (SELECT AVG(Salary) FROM Employee);

--QUERY-2:
SELECT e.Eid, e.Ename, d.Dname
FROM Employee e
JOIN Department d ON e.DeptId = d.DeptId;

--QUERY-3:
SELECT * FROM Employee
ORDER BY Salary DESC;

--QUERY-4:
SELECT DISTINCT(Designation) As Post
FROM Employee;

--QUERY-5:
SELECT * FROM Employee
ORDER BY DeptId,Salary;

--QUERY-6:
SELECT Ename
FROM Employee
WHERE Designation = 'Clerk' AND DeptId = 'D2';

--QUERY-7:
SELECT * FROM Employee
WHERE DOJ >= '01-Jan-11' AND DOJ <= '31-Dec-11';

--QUERY-8:
SELECT * FROM Employee
WHERE EXTRACT(MONTH FROM DOJ) = 2;

--QUERY-9:
SELECT * FROM Employee
WHERE Salary >= 30000 AND Salary <= 45000;
            --OR
SELECT * FROM Employee
WHERE Salary BETWEEN 30000 AND 45000;

--QUERY-10:
SELECT Eid, Ename, DeptId, Designation, Salary, DOJ, FLOOR(MONTHS_BETWEEN(SYSDATE, DOJ) / 12) AS Work_Experience
FROM Employee;