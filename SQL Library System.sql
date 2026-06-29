CREATE DATABASE LibraryDB;
USE LibraryDB;

CREATE TABLE Books (
    book_id INT NOT NULL AUTO_INCREMENT,
    title VARCHAR(100) NOT NULL,
    isbn VARCHAR(20) UNIQUE,
    price DECIMAL(8,2),
    published_date DATE,
    in_stock INT DEFAULT 1,
    PRIMARY KEY (book_id)
);
DESC Books;

INSERT INTO Books(title,isbn,price,published_date,in_stock)
VALUES ('Java Programming','ISBN101',450.00,'2022-05-10',5),
('History of India','ISBN102',550.00,'2018-08-20',2),
('Database Systems','ISBN103',650.00,'2021-11-15',3),
('World History','ISBN104',700.00,'2019-06-25',0);

INSERT INTO Books
(title,isbn,price,published_date)
VALUES
('Python','B105',400,'2023-02-25');

ALTER TABLE Books
RENAME COLUMN title TO book_title;

ALTER TABLE Books
MODIFY price FLOAT;

ALTER TABLE Books
ADD author_name VARCHAR(50)
NOT NULL DEFAULT 'Unknown';

UPDATE Books
SET price = price * 0.9
WHERE published_date < '2020-01-01';

SELECT * FROM Books;
DELETE FROM Books
WHERE in_stock = 0;

ALTER TABLE Books
AUTO_INCREMENT = 101;

INSERT INTO Books
(book_title,isbn,price,published_date)
VALUES ('SQL','B106',550,'2024-02-10');

SELECT * FROM Books;
SELECT book_title,price,published_date
FROM Books WHERE book_title LIKE '%History%'
AND price > 300 ORDER BY price DESC;

CREATE TABLE Members(
    member_id INT NOT NULL AUTO_INCREMENT,
    member_name VARCHAR(50) NOT NULL,
    join_date DATE NOT NULL DEFAULT (CURDATE()),
    PRIMARY KEY(member_id)
);
DESC Members;
INSERT INTO Members(member_name,join_date)
VALUES
('Ajay','2024-01-15'),
('Yusuf','2024-03-20'),
('Dega','2023-11-10'),
('Shayaan','2024-07-05'),
('Sam','2025-02-12');

SELECT * FROM Members;
SELECT *
FROM Members
WHERE YEAR(join_date)=2024
ORDER BY member_name;

SHOW TABLES;