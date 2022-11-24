IF (SELECT * FROM sys.databases WHERE Name LIKE 'Example5')
     DROP DATABASE Example5
GO
CREATE DATABASE Example5
GO
USE Example5
GO

-- TAO BANG LOP HOC
CREATE TABLE LopHoc(
	MalopHoc  INT PRIMARY KEY IDENTITY,
	TenLopHoc VARCHAR(10)
)
GO
SELECT * FROM LopHoc
GO
INSERT INTO LopHoc(TenLopHoc) VALUES ('T2205E')
SELECT * FROM LopHoc
UPDATE LopHoc SET TenLopHoc = 'T2209A1' WHERE MalopHoc = 1
DELETE FROM LopHoc WHERE MalopHoc = 1
GO
--SANPHAM (MASP, TENSP,GIA,LOAI)

--TAO BANG SINH VIEN CO KHOA NGOAI LA COT MALOPHOC, NOI VOI BANG LOPHOC

CREATE TABLE SinhVien(
  MaSV int PRIMARY KEY,
  TenSV VARCHAR(40),
  MaLopHoc INT,
  CONSTRAINT fk FOREIGN KEY(MaLopHoc) REFERENCES LopHoc(MaLopHoc)
  )
  GO
  INSERT INTO SinhVien(MaSV, TenSV, MaLopHoc) VALUES (5,'Minh',1);
  INSERT INTO SinhVien(MaSV, TenSV, MaLopHoc) VALUES (3,'Hoa',2);
  INSERT INTO SinhVien(MaSV, TenSV, MaLopHoc) VALUES (14,'Minh',8),(16,'Linh',3);
  
  SELECT * FROM SinhVien
  SELECT * FROM LopHoc
  GO

  -- CATEGORY(ID,NAME) ID LA PK
  -- PRODUCT(ID,NAME,PRICE,CAT_ID) ID LA PK, CAT_ID LA PK

  create table category (id int primary key, name varchar(20))
  create table Produce (id int, name varchar(40), cat_id int,
  constraint fk2 foreign key (cat_id) references category(id))
  insert into category(id, name) values (1, 'Ha noi')
  insert into category(id, name) values (2, 'Cty')
  insert into Produce(id, name, cat_id) values (2,'May rua bat',1)
  insert into Produce(id, name, cat_id) values (2,'May lau nha',2)
  insert into Produce(id, name, cat_id) values (25,'May ru ngu',1)
  select * from category
  select * from Produce

  -- tạo bảng sanpham với một cột null,một cột not null
  DROP TABLE SanPham
  GO
  CREATE TABLE SanPham(
  MaSP int NOT NULL,
  TenSP varchar (40) NULL,
  )
  GO
  INSERT INTO SanPham(MaSP, TenSP) VALUES (1, 'LapTop')
  GO
  INSERT INTO SanPham(TenSP) VALUES ('LapTop2')
  GO
  INSERT INTO SanPham(MaSP) VALUES (2)
  GO
  SELECT * FROM SanPham

  -- tạo bảng với thuộc tính default cho cột Price
  CREATE TABLE StoreProduct(
  ProductID int NOT NULL,
  Name varchar (40) NOT NULL,
  Price money NOT NULL DEFAULT (100)
  )
  GO

  --Thử kiểm tra xem giá trị default có đc sử dụng hay không
  INSERT INTO StoreProduct(ProductID,Name) Values (111, 'Rivets')
  GO
  INSERT INTO StoreProduct VALUES (1,'Mac', 101)
  GO
  SELECT * FROM StoreProduct
  GO
  
  --Tạo bảng ContactPhone với thuộc tính IDENTITY

  CREATE TABLE ContactPhone (
    Person_ID int IDENTITY (500,10) NOT NULL,
	MobileNumber BIGINT NOT NULL
	)
	GO
	INSERT INTO ContactPhone VALUES (984123123);
	INSERT INTO ContactPhone VALUES (984123124);
	GO 
	SELECT * FROM ContactPhone
	GO

	--TAO COT NHAN DANG DUY NHAT TONG THE
	DROP TABLE CellularPhone
	GO
	CREATE TABLE CellularPhone(
	Person_ID uniqueidentifier DEFAULT NEWID() NOT NULL,
	PersonName varchar (60) NOT NULL
	)
	-- chen mot record vao

	INSERT INTO CellularPhone(PersonName) VALUES ('William Smith')
	GO
	SELECT * FROM CellularPhone
	GO

	--KIEM TRA GIA TRI CUA COT PERSON_id TU DONG SINH
	SELECT * FROM CellularPhone
	GO

	-- TAO BANG CONTACTPHONE VOI MOT COT MOBILENUMER CO THUOC TINH UNIQUE
	CREATE TABLE ContactPhone2 (
	Person_ID int PRIMARY KEY,
	MobileNumber bigint UNIQUE,
	ServiceProvider varchar(30),
	LandlineNumber bigint UNIQUE
	)

	--Chen anh ban gh co gia tri giong nhau o cot MObi va land de quan sat loi
INSERT INTO ContactPhone2 VALUES (101, 983345674, 'Hutch', NULL)
INSERT INTO ContactPhone2 VALUES (102, 983345674, 'Alex', 98332211)
INSERT INTO ContactPhone2 VALUES (102, 993345674, 'Hutch', 98332211)
GO
SELECT * FROM ContactPhone2
GO
-- tạo bảng phoneExpenses có một check ở cột amount
DROP TABLE PhoneExpenses
GO
CREATE TABLE PhoneExpenses (
	Expense_ID int PRIMARY KEY,
	MobileNumber bigint FOREIGN KEY REFERENCES Contactphone2 (MobileNumber),
	Amount bigint CHECK (Amount > 0)
	)
	GO
	--test
INSERT INTO PhoneExpenses(Expense_ID,MobileNumber,Amount)
VALUES (1,983345674, 10)
GO
-- TEST PRIMARY KEY ..
INSERT INTO PhoneExpenses(Expense_ID,MobileNumber,Amount)
VALUES (1,983345674, 10)
GO
-- TEST FOREIGN KEY ..
INSERT INTO PhoneExpenses(Expense_ID,MobileNumber,Amount)
VALUES (2,9999, 10)
GO
-- TEST CHECK ...
INSERT INTO PhoneExpenses(Expense_ID,MobileNumber,Amount)
VALUES (2,983345674, -2)
GO
SELECT * FROM PhoneExpenses
GO
-- CHINH SUA COT TRONG BANG
ALTER TABLE ContactPhone2
 Alter COLUMN ServiciProvider varchar(45)
 GO
 SELECT * FROM ContactPhone2
 GO

 -- THEM MOT RANG BUOC VAO BANG
 ALTER TABLE ContactPhone2
    DROP COLUMN ServiceProvider
GO
-- them mot rang buoc vao bang 
ALTER TABLE StoreProduct
ADD CONSTRAINT CHECK_PICE CHECK (Price >= 10)
GO
SELECT * FROM StoreProduct
GO
-- Xoa mot rang buoc 
ALTER TABLE StoreProduct
DROP CONSTRAINT CHECK_PICE

CREATE TABLE Student 
(rollNumber INT,
name VARCHAR (30),
class VARCHAR(30),
section VARCHAR(1),
mobile VARCHAR(10),
PRIMARY  KEY (rollNumber, mobile));

INSERT INTO Student (rollNumber, name, class,section,mobile)
VALUES (1,'AMAN','FOURTH','B','9988774455');
INSERT INTO student (rollNumber, name, class,section,mobile)
VALUES (2,'JOHN','FIRST','A','9988112233');
INSERT INTO student (rollNumber, name, class,section,mobile)
VALUES (3,'THI','DANG','B','9988777755');
INSERT INTO student (rollNumber, name, class,section,mobile)
VALUES (4,'THI','KIM','C','9955663322');

SELECT * FROM Student










