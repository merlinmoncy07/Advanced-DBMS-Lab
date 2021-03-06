create database deposit;
use deposit;
create table Branch(bname varchar(20) primary key,city varchar(30) NOT NULL);
alter table Branch modify  city  varchar(30) check(city in ("nagpur","delhi","banglore","bombay"));

create table Customer(cname varchar(15) primary key,city varchar(20) NOT NULL);

 CREATE TABLE DEPOSIT (ACTNO VARCHAR(5) CHECK (ACTNO LIKE 'D%') PRIMARY KEY ,CNAME
VARCHAR(15)	REFERENCES	CUSTOMER(CNAME)	,BNAME 	VARCHAR(20) REFERENCES
BRANCH(BNAME),AMOUNT FLOAT(8) CHECK (AMOUNT>0) NOT NULL, ADATE VARCHAR(30));
drop table DEPOSIT;

INSERT INTO CUSTOMER VALUES('ANIL','CALCUTTA'); 
INSERT INTO CUSTOMER VALUES('SUNIL','DELHI'); 
INSERT INTO CUSTOMER VALUES('MEHUL','BARODA'); 
INSERT INTO CUSTOMER VALUES('MANDAR','PATNA'); 
INSERT INTO CUSTOMER VALUES('MADHURI','NAGPUR'); 
INSERT INTO CUSTOMER VALUES('PRAMOD', 'NAGPUR'); 
INSERT INTO CUSTOMER VALUES('SANDIP','SURAT');
INSERT INTO CUSTOMER VALUES('SHIVANI','BOMBAY'); 
INSERT INTO CUSTOMER VALUES('KRANTI','BOMBAY'); 
iNSERT INTO CUSTOMER VALUES('NAREN','BOMBAY'); 
 
INSERT INTO BRANCH VALUES('VRCE','NAGPUR');
INSERT INTO BRANCH VALUES('AJNI','NAGPUR');
INSERT INTO BRANCH VALUES('KAROLBAGH','DELHI'); 
INSERT INTO BRANCH VALUES('CHANDNI','DELHI'); 
INSERT INTO BRANCH VALUES('DHARAMPETH','NAGPUR'); 
INSERT INTO BRANCH VALUES('MG ROAD','BANGALORE'); 
INSERT INTO BRANCH VALUES('ANDHERI','BOMBAY'); 
INSERT INTO BRANCH VALUES('NEHRU PALACE','DELHI'); 
INSERT INTO BRANCH VALUES('POWAI','BOMBAY');

INSERT INTO DEPOSIT VALUES('D100','ANIL','VRCE',1000.00,'1-MAR-95'); 
INSERT INTO DEPOSIT VALUES('D101','SUNIL','ANJNI',500.00,'4-JAN-96');
INSERT INTO DEPOSIT VALUES('D102','MEHUL','KAROLBAGH',3500.00,'17-NOV- 95');
INSERT INTO DEPOSIT VALUES('D104','MADHURI','CHANDNI',1200.00,'17-DEC-95');
INSERT INTO DEPOSIT VALUES('D105','PRAMOD','MG ROAD',3000.00,'27-MAR-96');
INSERT INTO DEPOSIT VALUES('D106','SANDIP','ANDHERI',2000.00,'31-MAR-96');
INSERT INTO DEPOSIT VALUES('D107','SHIVANI','VIRAR',1000.00,'5-SEP-95');
INSERT INTO DEPOSIT VALUES('D108','KRANTI','NEHRU PLACE',5000.00,'2-JUL- 95');
INSERT INTO DEPOSIT VALUES('D109','MINU','POWAI',7000.00,'10-AUG-95'); 

INSERT INTO BORROW VALUES('L201','ANIL','VRCE',1000.00);
INSERT INTO BORROW VALUES('L206','MEHUL','AJNI',5000.00);
INSERT INTO BORROW VALUES('L311','SUNIL','DHARAMPETH',3000.00); 
INSERT INTO BORROW VALUES('L321','MADHURI','ANDHERI',2000.00); 
INSERT INTO BORROW VALUES('L371','PRAMOD','VIRAR',8000.00); 
INSERT INTO BORROW VALUES('L481','KRANTI','NEHRU PLACE',3000.00);




