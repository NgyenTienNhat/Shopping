USE master
DROP DATABASE PhoneManagement1

CREATE DATABASE PhoneManagement1
GO


USE PhoneManagement1
GO


CREATE TABLE [Categories] (
	category_id VARCHAR(5) PRIMARY KEY NOT NULL,
	category_name VARCHAR(20) NOT NULL
)

CREATE TABLE [Managers] (
	manager_id INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
	manager_name NVARCHAR(20) NOT NULL,
	phone VARCHAR(10) NOT NULL,
	email VARCHAR(30) NOT NULL,
	[manager_address] VARCHAR(50) CHECK(manager_address LIKE '%-%-%'),
	account VARCHAR(20),
	[password] VARCHAR(20) CHECK([password] LIKE '________%')
 )



 CREATE TABLE [Products] (
	product_id VARCHAR(4) PRIMARY KEY NOT NULL,
	product_name NVARCHAR(50) NOT NULL,
	price NVARCHAR(20),
	quantity NVARCHAR(20),
	category_id VARCHAR(5) FOREIGN KEY REFERENCES dbo.Categories(category_id),
	[image] VARCHAR(100),
	[description] NVARCHAR(1000)
 )
 

 CREATE TABLE Customer_Account(
	customer_id INT IDENTITY(1,1)  NOT NULL ,
	account NVARCHAR(20) NOT NULL,
	[password] NVARCHAR(20) NOT NULL
	PRIMARY KEY(customer_id)
 )

 

 CREATE TABLE Customers(
	customer_id INT FOREIGN KEY REFERENCES dbo.Customer_Account(customer_id),
	contact_name NVARCHAR(50),
	[customer_address]  NVARCHAR(50) CHECK(customer_address LIKE '%-%-%'),
	phone VARCHAR(10) NOT NULL
 )

 --ALTER TABLE dbo.Customers 
 --ADD FOREIGN KEY(customer_id) REFERENCES dbo.Customer_Account(customer_id)
 
 CREATE TABLE [Order_Details](
	order_id INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
	customer_id INT FOREIGN KEY REFERENCES dbo.Customer_Account(customer_id),
	time_order DATE,
	required_date DATE,
	ship_via NVARCHAR(20),
	ship_address NVARCHAR(50) CHECK(ship_address LIKE '%-%-%')
 )
 ALTER TABLE Order_Details ALTER COLUMN ship_address NVARCHAR(60)


 CREATE TABLE [Carts] (
	Product_id VARCHAR(4) NOT NULL FOREIGN KEY REFERENCES dbo.Products(product_id),
	order_id INT NOT NULL FOREIGN KEY REFERENCES Order_Details(order_id),
	quantity NVARCHAR(50),
	discount NVARCHAR(50)
	PRIMARY KEY(Product_id, order_id)
 )


INSERT INTO dbo.Customers (customer_id, contact_name, customer_address, phone) VALUES ('1',N'Sang Pham',N'Thach Hoa - Thach That - Ha Noi','0123456789')
INSERT INTO dbo.Customers (customer_id, contact_name, customer_address, phone) VALUES ('2',N'Tien Nhat',N'My Loc - Hau Loc - Thanh Hoa','0987654321')
INSERT INTO dbo.Customers (customer_id, contact_name, customer_address, phone) VALUES ('3',N'Hoang Phan',N'Vu Doai - Vu Thu - Thai Binh','0134256879')
INSERT INTO dbo.Customers (customer_id, contact_name, customer_address, phone) VALUES ('4',N'Thanh Nguyen',N'Doi Can - My Dinh - Ha Noi','0897654312')
INSERT INTO dbo.Customers (customer_id, contact_name, customer_address, phone) VALUES ('5',N'Thang Vu',N'Hy Cuong - Viet Tri - Phu Tho','0546789221')
INSERT INTO dbo.Customers (customer_id, contact_name, customer_address, phone) VALUES ('6',N'Long Do',N'Thach Hoa - Thach That - Ha Noi','076539124')
INSERT INTO dbo.Customers (customer_id, contact_name, customer_address, phone) VALUES ('7',N'Van Vu',N'Dong Chau - Tien Hai - Thai Binh','0445612876')
INSERT INTO dbo.Customers (customer_id, contact_name, customer_address, phone) VALUES ('8',N'Cat Moi',N'Hoang Cuong - Thanh Ba - Phu Tho','0235612876')

INSERT INTO dbo.Customer_Account (account, [password]) VALUES ('sangpham123','phamngocsang')
INSERT INTO dbo.Customer_Account (account, [password]) VALUES ('tiennhat123','nguyentiennhat')
INSERT INTO dbo.Customer_Account (account, [password]) VALUES ('hoangphan322','123')
INSERT INTO dbo.Customer_Account (account, [password]) VALUES ('nguyethanh222','123123')
INSERT INTO dbo.Customer_Account (account, [password]) VALUES ('thanhvu2112','hhihihihi')
INSERT INTO dbo.Customer_Account (account, [password]) VALUES ('dovanlong','huhuhuhuh')
INSERT INTO dbo.Customer_Account (account, [password]) VALUES ('vuvivu','matkhau1')



INSERT INTO dbo.Categories VALUES ('C001', 'iPhone' )
INSERT INTO dbo.Categories VALUES ('C002', 'Oppo' )
INSERT INTO dbo.Categories VALUES ('C003', 'Samsung' )
INSERT INTO dbo.Categories VALUES ('C004', 'Xiaomi' )

INSERT INTO dbo.Products VALUES
('P001','iPhone 11',16490000, 40,'C001', 'images/ip11.jpg',N'Man hinh 6.1, Chip Apple A13 Bionic RAM 4 GB, ROM 64 GB, Camera sau: 2 camera 12 MP, Camera trước: 12 MP, Pin 3110 mAh, Sạc 18 W')
INSERT INTO dbo.Products VALUES
('P002','iPhone 12',20490000, 50,'C001', 'images/ip12.jpg',N'Man hinh  6.1, Chip Apple A14 Bionic RAM 4 GB, ROM 64 GB, Camera sau: 2 camera 12 MP, Camera trước: 12 MP, Pin 2815 mAh, Sạc 20 W')
INSERT INTO dbo.Products VALUES
('P003','iPhone 12 Pro',28490000, 35,'C001', 'images/ip12pro.jpg',N'Man hinh  6.1, Chip Apple A14 Bionic RAM 6 GB, ROM 128 GB, Camera sau: 3 camera, 12 MPCamera trước: 12 MP, Pin 2815 mAh, Sạc 20 W')
INSERT INTO dbo.Products VALUES
('P004','iPhone 12 Pro Max',31990000, 50,'C001', 'images/ip12promax.jpg',N'Man hinh  6.7, Chip Apple A14 Bionic, RAM 6 GB, ROM 128 GB, Camera sau: 3 camera 12 MP, Camera trước: 12 MP, Pin 3687 mAh, Sạc 20 W')
INSERT INTO dbo.Products VALUES
('P005','iPhone 13',23990000, 20,'C001', 'images/ip13.jpg',N'Man hinh 6.1, Chip Apple A15 Bionic, RAM 4 GB, ROM 128 GB, Camera sau: 2 camera 12 MP, Camera trước: 12 MP, Pin 3240 mAh, Sạc 20 W')
INSERT INTO dbo.Products VALUES
('P017','iPhone 13',23990000, 20,'C001', 'images/ip13.jpg',N'Man hinh  6.1, Chip Apple A15 Bionic, RAM 4 GB, ROM 128 GB, Camera sau: 2 camera 12 MP, Camera trước: 12 MP, Pin 3240 mAh, Sạc 20 W')
INSERT INTO dbo.Products VALUES
('P006','iPhone 13 Pro',30290000, 26,'C001', 'images/ip13pro.jpg',N'Man hinh  6.1, Chip Apple A15 Bionic, RAM 6 GB, ROM 128 GB, Camera sau: 3 camera 12 MP, Camera trước: 12 MP, Pin 3095 mAh, Sạc 20 W')
INSERT INTO dbo.Products VALUES
('P007','iPhone 13 Pro Max',30290000, 26,'C001', 'images/ip13pro.jpg',N'Man hinh  6.7, Chip Apple A15 Bionic, RAM 6 GB, ROM 128 GB, Camera sau: 3 camera 12 MP, Camera trước: 12 MP, Pin 4352 mAh, Sạc 20 W')
INSERT INTO dbo.Products VALUES
('P008','OPPO A76',5990000, 60,'C002', 'images/opa76.jpg',N'Man hinh  6.56, Chip Snapdragon 680 8 nhân, RAM 6 GB, ROM 128 GB, Camera sau: Chính 13 MP & Phụ 2 MP, Camera trước: 8 MP, Pin 5000 mAh, Sạc 33 W')
INSERT INTO dbo.Products VALUES
('P009','OPPO A94',7690000, 60,'C002', 'images/opa94.jpg',N'Man hinh  6.43, Chip MediaTek Helio P95, RAM 8 GB, ROM 128 GB, Camera sau: Chính 48 MP & Phụ 8 MP, 2 MP, 2 MP, Camera trước: 32 MP, Pin 4310 mAh, Sạc 30 W')
INSERT INTO dbo.Products VALUES
('P010','OPPO A95',6990000, 65,'C002', 'images/opa95.jpg',N'Man hinh h 6.43, Chip Snapdragon 662, RAM 8 GB, ROM 128 GB, Camera sau: Chính 48 MP & Phụ 2 MP, 2 MP, Camera trước: 16 MP, Pin 5000 mAh, Sạc 33 W')
INSERT INTO dbo.Products VALUES
('P011','Samsung Galaxy S22 Ultra 5G',30990000, 65,'C003', 'images/opa95.jpg',N'Man hinh  6.8, Chip Snapdragon 8 Gen 1 8 nhân, RAM 8 GB, ROM 128 GB, Camera sau: Chính 108 MP & Phụ 12 MP, 10 MP, 10 MP, Camera trước: 40 MP, Pin 5000 mAh, Sạc 45 W')
INSERT INTO dbo.Products VALUES
('P015','Samsung Galaxy Z Fold3 5G',41990000, 13,'C003', 'images/ssz.jpg',N'Man hinh  Chính 7.6 & Phụ 6.2, Chip Snapdragon 888, RAM 12 GB, ROM 256 GB, Camera sau: 3 camera 12 MP, Camera trước: 10 MP & 4 MP, Pin 4400 mAh, Sạc 25 W')
INSERT INTO dbo.Products VALUES
('P012','Samsung Galaxy Z Flip3 5G',24990000, 13,'C003', 'images/sszflip3.jpg',N'Màn hình Chính 6.7 & Phụ 1.9, Chip Snapdragon 888, RAM 8 GB, ROM 128 GB, Camera sau: 2 camera 12 MP, Camera trước: 10 MP, Pin 3300 mAh, Sạc 15 W')
INSERT INTO dbo.Products VALUES
('P013','Xiaomi 11T',10990000, 13,'C004', 'images/xi11t.jpg',N'Màn hình 6.67, Chip MediaTek Dimensity 1200, RAM 8 GB, ROM 128 GB, Camera sau: Chính 108 MP & Phụ 8 MP, 5 MP, Camera trước: 16 MP, Pin 5000 mAh, Sạc 67 W')
INSERT INTO dbo.Products VALUES
('P014','Xiaomi 11T Pro 5G',13990000, 20,'C004', 'images/xi11tpro.jpg',N'Màn hình 6.67, Chip Snapdragon 888, RAM 8 GB, ROM 256 GB, Camera sau: Chính 108 MP & Phụ 8 MP, 5 MP, Camera trước: 16 MP, Pin 5000 mAh, Sạc 120 W')
INSERT INTO dbo.Products VALUES
('P017','Xiaomi Redmi Note 10 Pro',7490000, 20,'C004', 'images/xinote10.jpg',N'Màn hình 6.67, Chip Snapdragon 732G, RAM 8 GB, ROM 128 GB, Camera sau: Chính 108 MP & Phụ 8 MP, 5 MP, 2 MP, Camera trước: 16 MP, Pin 5020 mAh, Sạc 33 W')


INSERT INTO dbo.Order_Details (time_order, required_date, ship_via, ship_address) VALUES ( '2022/01/27',  '2022/02/07', 25.000, N'Dai hoc FPT - Thach That - Ha Noi')
INSERT INTO dbo.Order_Details (time_order, required_date, ship_via, ship_address) VALUES ( '2022/01/12',  '2022/01/22', 14.000, N'Thach Hoa - Thach That - Ha Noi')
INSERT INTO dbo.Order_Details (time_order, required_date, ship_via, ship_address) VALUES ( '2022/02/01',  '2022/02/06', 30.000, N'Vu Doai- Vu Thu - Thai Binh')
INSERT INTO dbo.Order_Details (time_order, required_date, ship_via, ship_address) VALUES ( '2022/02/13',  '2022/02/17', 23.000, N'DH Ngoai Thuong - My Dinh - Ha Noi')
INSERT INTO dbo.Order_Details (time_order, required_date, ship_via, ship_address) VALUES ( '2022/02/25',  '2022/03/15', 0, N'Hy Cuong - Viet Tri - Phu Tho')
INSERT INTO dbo.Order_Details (time_order, required_date, ship_via, ship_address) VALUES ( '2022/01/11',  '2022/01/14', 10.000, N'TT Tien Hai-Tien Hai - Thai Binh')
INSERT INTO dbo.Order_Details (time_order, required_date, ship_via, ship_address) VALUES ( '2022/02/12',  '2022/02/22', 4.000, N'Thach Hoa - Thach That - Ha Noi')
INSERT INTO dbo.Order_Details (time_order, required_date, ship_via, ship_address) VALUES ( '2022/02/24',  '2022/03/01', 12.5000, N'Hoang Cuong - Thanh Ba - Phu Tho')



--INSERT INTO dbo.Carts (quantity, discount) VALUES(1, 10.000 )
--INSERT INTO dbo.Carts (quantity, discount) VALUES(1, 300.000 )
--INSERT INTO dbo.Carts (quantity, discount) VALUES(1, 20.000 )
--INSERT INTO dbo.Carts (quantity, discount) VALUES(2, 40.000 )
--INSERT INTO dbo.Carts (quantity, discount) VALUES(1, 100.000 )
--INSERT INTO dbo.Carts (quantity, discount) VALUES(3, 150.000 )
--INSERT INTO dbo.Carts (quantity, discount) VALUES(2, 200.000 )
--INSERT INTO dbo.Carts (quantity, discount) VALUES(1, 10.000 )




INSERT INTO dbo.Managers(manager_name, phone, email, [manager_address], account, [password]) VALUES('ADMIN1','0987567432','admin1@gmail.com',N'My Dinh - Ha Noi - Viet Nam','admin01','admin1111')
INSERT INTO dbo.Managers(manager_name, phone, email, [manager_address], account, [password]) VALUES('ADMIN2','0987654322','admin2@gmail.com',N'Thach Hoa - Thach That - Ha Noi','admin02','admin2222')
INSERT INTO dbo.Managers(manager_name, phone, email, [manager_address], account, [password]) VALUES('ADMIN3','0987654323','admin3@gmail.com',N'My Loc - Hau Loc - Thanh Hoa','admin03','admin3333')
INSERT INTO dbo.Managers(manager_name, phone, email, [manager_address], account, [password]) VALUES('ADMIN4','0827261123','admin4@gmail.com',N'Nam Hong - Tien Hai - Thai Binh','admin04','admin4444')
INSERT INTO dbo.Managers(manager_name, phone, email, [manager_address], account, [password]) VALUES('ADMIN5','0945389234','admin5@gmail.com',N'Dai Hoc FPT - Thach That - Ha Noi','admin05','admin5555')





