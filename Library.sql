--TABLE CREATION:
CREATE TABLE Library(
    BookId VARCHAR(6),
    BookName VARCHAR(50) NOT NULL,
    Author VARCHAR(30),
    DatePurchased DATE,
    Publisher VARCHAR(20),
    Price INT
);
 
--VALUE INSERTION:
INSERT INTO Library
VALUES('B101','Cost Accounting','Jain Narang','11-Feb-2013','Kalyani',800);

INSERT INTO Library
VALUES('B102','Business Statistics','OP Aggarwal','22-Dec-2011','Himalaya',750);

INSERT INTO Library
VALUES('B103','Rdbms','CJ Date','02-Mar-2015','TMH',900);

INSERT INTO Library
VALUES('B104','Mgmt Accounting','RK Sharma','19-Apr-2016','Kalyani',450);

INSERT INTO Library
VALUES('B105','Operating System','Galvin','25-Nov-2013','PHI',750);

INSERT INTO Library
VALUES('B106','Advanced Accounting','SC Gupta','16-Apr-2018','Himalaya',600);

--QUERY-1:
SELECT Author
FROM Library
WHERE Publisher = 'Himalaya';

--QUERY-2:
SELECT Publisher, SUM(Price) AS Price
FROM Library
GROUP BY Publisher;

--QUERY-3:
SELECT COUNT(BookName) As Total_Books
FROM Library
WHERE Publisher = 'Kalyani';

--QUERY-4:
ALTER TABLE Library
RENAME COLUMN Publisher TO Publication;

--QUERY-5:
SELECT * FROM Library
ORDER BY DatePurchased;

--QUERY-6:
CREATE INDEX idx_BN ON Library (BookName);
CREATE INDEX idx_Auth ON Library (Author);

--QUERY-7:
SELECT * FROM Library
WHERE PRICE BETWEEN 500 AND 700;

--QUERY-8:
UPDATE Library
SET Price = Price + 200
WHERE Publication NOT IN ('Himalaya','Kalyani');

--QUERY-9:
SELECT Author FROM Library
WHERE Author LIKE '%Sharma';

--QUERY-10:
SELECT BookId,BookName
FROM Library
WHERE Publication = 'Himalaya';