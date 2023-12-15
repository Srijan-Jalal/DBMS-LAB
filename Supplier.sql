--TABLE CREATION: 
CREATE TABLE SUPPLIER(
	SUP_NO VARCHAR(4) PRIMARY KEY,
    SUP_NAME VARCHAR(20),
    ITEM_SUPPLIED VARCHAR(20),
    ITEM_PRICE INT,
    CITY VARCHAR(20)
);

--VALUE INSERTION:
INSERT INTO SUPPLIER (SUP_NO, SUP_NAME, ITEM_SUPPLIED, ITEM_PRICE, CITY)
VALUES ('S1', 'Suresh', 'Keyboard', 400, 'Hyderabad');

INSERT INTO SUPPLIER (SUP_NO, SUP_NAME, ITEM_SUPPLIED, ITEM_PRICE, CITY)
VALUES ('S2', 'Kiran', 'Processor', 8000, 'Delhi');

INSERT INTO SUPPLIER (SUP_NO, SUP_NAME, ITEM_SUPPLIED, ITEM_PRICE, CITY)
VALUES ('S3', 'Mohan', 'Mouse', 350, 'Delhi');

INSERT INTO SUPPLIER (SUP_NO, SUP_NAME, ITEM_SUPPLIED, ITEM_PRICE, CITY)
VALUES ('S4', 'Ramesh', 'Processor', 9000, 'Banglore');

INSERT INTO SUPPLIER (SUP_NO, SUP_NAME, ITEM_SUPPLIED, ITEM_PRICE, CITY)
VALUES ('S5', 'Mainsh', 'Printer', 6000, 'Mumbai');

INSERT INTO SUPPLIER (SUP_NO, SUP_NAME, ITEM_SUPPLIED, ITEM_PRICE, CITY)
VALUES ('S6', 'Srikanth', 'Processor', 8500, 'Chennai');

--QUERY-1:
SELECT SUP_NO,SUP_NAME 
FROM SUPPLIER
WHERE SUP_NAME LIKE 'R%';

--QUERY-2:
SELECT SUP_NAME 
FROM SUPPLIER
WHERE ITEM_SUPPLIED = 'Processor' AND CITY = 'Delhi';

--QUERY-3:
SELECT SUP_NAME 
FROM SUPPLIER
WHERE ITEM_SUPPLIED = 
    (SELECT ITEM_SUPPLIED 
    FROM SUPPLIER 
    WHERE SUP_NAME = 'Ramesh') ;

--QUERY-4:
UPDATE SUPPLIER
SET ITEM_PRICE = ITEM_PRICE + 200
WHERE ITEM_SUPPLIED = 'Keyboard' ;

--QUERY-5:
SELECT SUP_NO,SUP_NAME,ITEM_PRICE
FROM SUPPLIER
WHERE CITY = 'Delhi'
ORDER BY ITEM_PRICE;

--QUERY-6:
ALTER TABLE SUPPLIER
ADD CONTACT_NO CHAR(10);

--QUERY-7:
DELETE FROM SUPPLIER
WHERE ITEM_PRICE = 
    (SELECT MIN(ITEM_PRICE) 
    FROM SUPPLIER);

--QUERY-8:
CREATE VIEW V1 AS
SELECT SUP_NO,SUP_NAME
FROM SUPPLIER;

--QUERY-9:
SELECT * FROM SUPPLIER
ORDER BY ITEM_SUPPLIED,ITEM_PRICE DESC

--QUERY-10:
SELECT * FROM SUPPLIER
WHERE ITEM_SUPPLIED NOT IN ('Processor', 'Keyboard');