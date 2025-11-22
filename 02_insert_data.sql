INSERT INTO Cart VALUES ('crt1011');
INSERT INTO Cart VALUES ('crt1012');
INSERT INTO Cart VALUES ('crt1013');

INSERT INTO Customer VALUES 
('cid100','pass123','Rajat','G-453',632014,9893135876,'crt1011'),
('cid101','pass555','Aman','Sector 62',201301,9876543211,'crt1012'),
('cid102','pass999','Neha','Sector 18',201305,9123456781,'crt1013');

INSERT INTO Seller VALUES
('sid100','12345','Aman','Delhi'),
('sid101','77777','Rohit','Mumbai'),
('sid102','88888','Priya','Chennai');

INSERT INTO Seller_Phone_num VALUES
(9943336206,'sid100'),
(9988776655,'sid101'),
(9090909091,'sid102');

INSERT INTO Product VALUES
('pid1001','jeans','red','32','M',10,1200,20,'sid100'),
('pid1002','shirt','blue','40','M',15,900,10,'sid101'),
('pid1003','top','black','30','F',12,700,15,'sid102'),
('pid1004','jeans','blue','32','F',10,1100,25,'sid100'),
('pid1005','tshirt','white','38','M',8,500,30,'sid101'),
('pid2001','shirt','blue','40','M',10,1500,20,'sid100');

INSERT INTO Cart_item VALUES
(3,'1999-10-10','crt1011','pid1001','YES'),
(1,'2024-06-01','crt1011','pid1002','NO'),
(1,'2024-06-01','crt1012','pid1002','YES'),
(3,'2024-05-10','crt1012','pid1003','YES'),
(1,'2024-05-12','crt1012','pid1004','NO'),
(2,'2024-06-01','crt1012','pid2001','YES'),
(2,'2024-05-15','crt1013','pid1005','YES');

INSERT INTO Payment VALUES
('pmt1001','1999-10-10','online','cid100','crt1011',3600);
