USE FinalProjectWeb;

INSERT INTO Employees (EmployeeID, NameEmployee, Birthday, Gender, AddressEmployee, PhoneNumber, RoleEmployee, Active, PassWordAccount)
VALUES 
	('admin', 'Nguyễn Hoài Bảo', '2004-02-17', 'Nam', 'Đạ Huoai, Lâm Đồng', '0363609039', 'Quản lý', '1', 'password123'),
	('sale1', 'Trần Nguyễn Quốc Bảo', '1995-11-23', 'Nam', 'Hoài Nhơn, Bình Định', '0357894561', 'Nhân viên bán hàng', '1', 'password123'),
	('sale2', 'Lê Thị Mỹ Dung', '1990-07-15', 'Nữ', 'Quận 12, TPHCM', '0345671234', 'Nhân viên bán hàng', '1', 'password123');
    
-- Thêm dữ liệu vào bảng Customers
INSERT INTO Customers (PhoneNumber, NameCustomer, AddressCustomer, Birthday, Gender)
VALUES 
	('0123456789', 'Nguyễn Văn Vinh', 'HCM', '1990-01-01', 'Nam'),
	('0987654321', 'Trần Thị Bích', 'HCM', '1985-05-10', 'Nữ'),
	('0912345678', 'Lê Hoàng Phúc', 'HCM', '1993-03-22', 'Nam');

-- Thêm nhiều thương hiệu vào bảng Brands
INSERT INTO Brands (Brand_ID, BrandName)
VALUES 
	('B001', 'Apple'),
	('B002', 'Samsung'),
	('B003', 'Xiaomi'),
	('B004', 'Huawei'),
	('B005', 'Dell'),
	('B006', 'HP'),
	('B007', 'Asus'),
	('B008', 'Lenovo'),
	('B009', 'Acer'),
	('B010', 'Microsoft');

-- Thêm danh mục Phụ kiện vào bảng Categories
INSERT INTO Categories (Category_ID, CategoryName)
VALUES 
    ('C001', 'Điện thoại'), 
    ('C002', 'Laptop'),
    ('C003', 'Phụ kiện');
    
-- Thêm dữ liệu vào bảng Products
INSERT INTO Products (Product_ID, ProductName, UnitPrice, Quantity, Brand_ID, Category_ID, Picture_Path)
VALUES 
    -- Apple
    ('P001', 'iPhone 14', 25000, 50, 'B001', 'C001', '/images/iPhone_14.jpg'),
    ('P002', 'iPhone 14 Pro', 30000, 40, 'B001', 'C001', '/images/iPhone_14_Pro.jpg'),
    ('P003', 'iPhone SE', 15000, 35, 'B001', 'C001', '/images/iPhone_SE.jpg'),
    ('P004', 'iPhone 13', 22000, 45, 'B001', 'C001', '/images/iPhone_13.jpg'),
    ('P005', 'iPhone 12', 18000, 30, 'B001', 'C001', '/images/iPhone_12.jpg'),
    ('P006', 'iPhone 11', 16000, 25, 'B001', 'C001', '/images/iPhone_11.jpg'),
    ('P007', 'iPhone XR', 14000, 20, 'B001', 'C001', '/images/iPhone_XR.jpg'),
    ('P008', 'iPhone 11 Pro', 20000, 15, 'B001', 'C001', '/images/iPhone_11_Pro.jpg'),
    ('P009', 'iPhone 13 Mini', 21000, 18, 'B001', 'C001', '/images/iPhone_13_Mini.jpg'),
    ('P010', 'iPhone 14 Pro Max', 35000, 10, 'B001', 'C001', '/images/iPhone_14_Pro_Max.jpg'),
    
    -- Samsung
    ('P011', 'Galaxy S23', 23000, 50, 'B002', 'C001', '/images/Galaxy_S23.jpg'),
    ('P012', 'Galaxy S23 Ultra', 30000, 40, 'B002', 'C001', '/images/Galaxy_S23_Ultra.jpg'),
    ('P013', 'Galaxy Note 20', 25000, 35, 'B002', 'C001', '/images/Galaxy_Note_20.jpg'),
    ('P014', 'Galaxy Z Fold 4', 40000, 20, 'B002', 'C001', '/images/Galaxy_Z_Fold_4.jpg'),
    ('P015', 'Galaxy A54', 15000, 45, 'B002', 'C001', '/images/Galaxy_A54.jpg'),
    ('P016', 'Galaxy A34', 12000, 50, 'B002', 'C001', '/images/Galaxy_A34.jpg'),
    ('P017', 'Galaxy M53', 13000, 30, 'B002', 'C001', '/images/Galaxy_M53.jpg'),
    ('P018', 'Galaxy S21 FE', 19000, 25, 'B002', 'C001', '/images/Galaxy_S21_FE.jpg'),
    ('P019', 'Galaxy A14', 11000, 35, 'B002', 'C001', '/images/Galaxy_A14.jpg'),
    ('P020', 'Galaxy A04', 9000, 40, 'B002', 'C001', '/images/Galaxy_A04.jpg'),
    
    -- Xiaomi
    ('P021', 'Xiaomi 13', 15000, 50, 'B003', 'C001', '/images/Xiaomi_13.jpg'),
    ('P022', 'Xiaomi 12', 14000, 45, 'B003', 'C001', '/images/Xiaomi_12.jpg'),
    ('P023', 'Redmi Note 12', 8000, 60, 'B003', 'C001', '/images/Redmi_Note_12.jpg'),
    ('P024', 'Redmi Note 11', 7000, 55, 'B003', 'C001', '/images/Redmi_Note_11.jpg'),
    ('P025', 'Xiaomi Mi 11', 13000, 30, 'B003', 'C001', '/images/Xiaomi_Mi_11.jpg'),
    ('P026', 'Xiaomi Mi 10', 12000, 25, 'B003', 'C001', '/images/Xiaomi_Mi_10.jpg'),
    ('P027', 'Poco F4', 11000, 40, 'B003', 'C001', '/images/Poco_F4.jpg'),
    ('P028', 'Poco X4 Pro', 9000, 35, 'B003', 'C001', '/images/Poco_X4_Pro.jpg'),
    ('P029', 'Xiaomi 11T', 11500, 20, 'B003', 'C001', '/images/Xiaomi_11T.jpg'),
    ('P030', 'Redmi K40', 9500, 30, 'B003', 'C001', '/images/Redmi_K40.jpg'),

    -- Huawei
    ('P031', 'Huawei P40', 24000, 45, 'B004', 'C001', '/images/Huawei_P40.jpg'),
    ('P032', 'Huawei P50', 27000, 30, 'B004', 'C001', '/images/Huawei_P50.jpg'),
    ('P033', 'Huawei Mate 40', 32000, 20, 'B004', 'C001', '/images/Huawei_Mate_40.jpg'),
    ('P034', 'Huawei Nova 10', 15000, 35, 'B004', 'C001', '/images/Huawei_Nova_10.jpg'),
    ('P035', 'Huawei Y9s', 9000, 40, 'B004', 'C001', '/images/Huawei_Y9s.jpg'),
    ('P036', 'Huawei P30', 18000, 30, 'B004', 'C001', '/images/Huawei_P30.jpg'),
    ('P037', 'Huawei Nova 9', 14000, 25, 'B004', 'C001', '/images/Huawei_Nova_9.jpg'),
    ('P038', 'Huawei P20', 13000, 30, 'B004', 'C001', '/images/Huawei_P20.jpg'),
    ('P039', 'Huawei Mate 30', 20000, 15, 'B004', 'C001', '/images/Huawei_Mate_30.jpg'),
    ('P040', 'Huawei Y7a', 8000, 50, 'B004', 'C001', '/images/Huawei_Y7a.jpg');
    
-- Thêm dữ liệu vào bảng Products
INSERT INTO Products (Product_ID, ProductName, UnitPrice, Quantity, Brand_ID, Category_ID, Picture_Path)
VALUES 
    -- Dell
    ('L001', 'Dell XPS 13', 30000, 15, 'B005', 'C002', 'images/dell_xps_13.jpg'),
    ('L002', 'Dell Inspiron 15', 25000, 20, 'B005', 'C002', 'images/dell_inspiron_15.jpg'),
    ('L003', 'Dell G15', 22000, 10, 'B005', 'C002', 'images/dell_g15.jpg'),
    ('L004', 'Dell Latitude 7420', 35000, 5, 'B005', 'C002', 'images/dell_latitude_7420.jpg'),
    ('L005', 'Dell Vostro 15', 18000, 25, 'B005', 'C002', 'images/dell_vostro_15.jpg'),
    ('L006', 'Dell Alienware X17', 50000, 8, 'B005', 'C002', 'images/dell_alienware_x17.jpg'),
    ('L007', 'Dell G3 15', 21000, 12, 'B005', 'C002', 'images/dell_g3_15.jpg'),
    ('L008', 'Dell Latitude 5520', 40000, 7, 'B005', 'C002', 'images/dell_latitude_5520.jpg'),
    ('L009', 'Dell Inspiron 14', 23000, 18, 'B005', 'C002', 'images/dell_inspiron_14.jpg'),
    ('L010', 'Dell Chromebook 3100', 15000, 15, 'B005', 'C002', 'images/dell_chromebook_3100.jpg'),

    -- HP
    ('L011', 'HP Pavilion 15', 22000, 20, 'B006', 'C002', 'images/hp_pavilion_15.jpg'),
    ('L012', 'HP Spectre x360', 35000, 10, 'B006', 'C002', 'images/hp_spectre_x360.jpg'),
    ('L013', 'HP Envy 13', 30000, 15, 'B006', 'C002', 'images/hp_envy_13.jpg'),
    ('L014', 'HP Omen 15', 40000, 5, 'B006', 'C002', 'images/hp_omen_15.jpg'),
    ('L015', 'HP 15s', 20000, 25, 'B006', 'C002', 'images/hp_15s.jpg'),
    ('L016', 'HP ProBook 450', 25000, 12, 'B006', 'C002', 'images/hp_probook_450.jpg'),
    ('L017', 'HP Chromebook x360', 18000, 15, 'B006', 'C002', 'images/hp_chromebook_x360.jpg'),
    ('L018', 'HP EliteBook 840', 37000, 8, 'B006', 'C002', 'images/hp_elitebook_840.jpg'),
    ('L019', 'HP 14s', 17000, 18, 'B006', 'C002', 'images/hp_14s.jpg'),
    ('L020', 'HP Pavilion Gaming', 24000, 10, 'B006', 'C002', 'images/hp_pavilion_gaming.jpg'),

    -- Asus
    ('L021', 'Asus ZenBook 14', 30000, 15, 'B007', 'C002', 'images/asus_zenbook_14.jpg'),
    ('L022', 'Asus ROG Zephyrus G14', 40000, 5, 'B007', 'C002', 'images/asus_rog_zephyrus_g14.jpg'),
    ('L023', 'Asus VivoBook 15', 22000, 20, 'B007', 'C002', 'images/asus_vivobook_15.jpg'),
    ('L024', 'Asus TUF Gaming A15', 25000, 12, 'B007', 'C002', 'images/asus_tuf_gaming_a15.jpg'),
    ('L025', 'Asus Chromebook Flip', 18000, 15, 'B007', 'C002', 'images/asus_chromebook_flip.jpg'),
    ('L026', 'Asus ExpertBook B9', 37000, 8, 'B007', 'C002', 'images/asus_expertbook_b9.jpg'),
    ('L027', 'Asus ROG Strix G15', 45000, 5, 'B007', 'C002', 'images/asus_rog_strix_g15.jpg'),
    ('L028', 'Asus VivoBook Flip 14', 19000, 20, 'B007', 'C002', 'images/asus_vivobook_flip_14.jpg'),
    ('L029', 'Asus ZenBook Duo', 33000, 7, 'B007', 'C002', 'images/asus_zenbook_duo.jpg'),
    ('L030', 'Asus ProArt StudioBook', 50000, 4, 'B007', 'C002', 'images/asus_proart_studiobook.jpg'),

    -- Lenovo
    ('L031', 'Lenovo ThinkPad X1 Carbon', 40000, 10, 'B008', 'C002', 'images/lenovo_thinkpad_x1_carbon.jpg'),
    ('L032', 'Lenovo Yoga 9i', 35000, 12, 'B008', 'C002', 'images/lenovo_yoga_9i.jpg'),
    ('L033', 'Lenovo Legion 5', 30000, 15, 'B008', 'C002', 'images/lenovo_legion_5.jpg'),
    ('L034', 'Lenovo IdeaPad 3', 20000, 20, 'B008', 'C002', 'images/lenovo_ideapad_3.jpg'),
    ('L035', 'Lenovo Flex 5', 22000, 18, 'B008', 'C002', 'images/lenovo_flex_5.jpg'),
    ('L036', 'Lenovo ThinkBook 14', 25000, 8, 'B008', 'C002', 'images/lenovo_thinkbook_14.jpg'),
    ('L037', 'Lenovo Chromebook Duet', 17000, 25, 'B008', 'C002', 'images/lenovo_chromebook_duet.jpg'),
    ('L038', 'Lenovo Legion 7', 45000, 6, 'B008', 'C002', 'images/lenovo_legion_7.jpg'),
    ('L039', 'Lenovo IdeaPad Flex 5', 19000, 15, 'B008', 'C002', 'images/lenovo_ideapad_flex_5.jpg'),
    ('L040', 'Lenovo ThinkPad L14', 23000, 10, 'B008', 'C002', 'images/lenovo_thinkpad_l14.jpg'),

    -- Acer
    ('L041', 'Acer Swift 3', 30000, 15, 'B009', 'C002', 'images/acer_swift_3.jpg'),
    ('L042', 'Acer Aspire 5', 25000, 20, 'B009', 'C002', 'images/acer_aspire_5.jpg'),
    ('L043', 'Acer Predator Helios 300', 40000, 8, 'B009', 'C002', 'images/acer_predator_helios_300.jpg'),
    ('L044', 'Acer Spin 5', 32000, 12, 'B009', 'C002', 'images/acer_spin_5.jpg'),
    ('L045', 'Acer Chromebook 14', 18000, 18, 'B009', 'C002', 'images/acer_chromebook_14.jpg'),
    ('L046', 'Acer TravelMate P2', 22000, 10, 'B009', 'C002', 'images/acer_travelmate_p2.jpg'),
    ('L047', 'Acer Predator Triton 500', 50000, 5, 'B009', 'C002', 'images/acer_predator_triton_500.jpg'),
    ('L048', 'Acer Aspire 7', 24000, 15, 'B009', 'C002', 'images/acer_aspire_7.jpg'),
    ('L049', 'Acer Swift 5', 35000, 10, 'B009', 'C002', 'images/acer_swift_5.jpg'),
    ('L050', 'Acer Chromebook Spin 13', 20000, 10, 'B009', 'C002', 'images/acer_chromebook_spin_13.jpg'),

	-- Microsoft
    ('L051', 'Microsoft Surface Laptop 4', 40000, 10, 'B010', 'C002', 'images/microsoft_surface_laptop_4.jpg'),
    ('L052', 'Microsoft Surface Pro 8', 45000, 8, 'B010', 'C002', 'images/microsoft_surface_pro_8.jpg'),
    ('L053', 'Microsoft Surface Book 3', 50000, 6, 'B010', 'C002', 'images/microsoft_surface_book_3.jpg'),
    ('L054', 'Microsoft Surface Go 2', 22000, 15, 'B010', 'C002', 'images/microsoft_surface_go_2.jpg'),
    ('L055', 'Microsoft Surface Studio 2', 70000, 4, 'B010', 'C002', 'images/microsoft_surface_studio_2.jpg'),
    ('L056', 'Microsoft Surface Duo', 30000, 12, 'B010', 'C002', 'images/microsoft_surface_duo.jpg'),
    ('L057', 'Microsoft Surface Pro X', 35000, 10, 'B010', 'C002', 'images/microsoft_surface_pro_x.jpg'),
    ('L058', 'Microsoft Surface Laptop Go', 25000, 18, 'B010', 'C002', 'images/microsoft_surface_laptop_go.jpg'),
    ('L059', 'Microsoft Surface Headphones', 15000, 25, 'B010', 'C003', 'images/microsoft_surface_headphones.jpg'),
    ('L060', 'Microsoft Surface Dock 2', 10000, 30, 'B010', 'C003', 'images/microsoft_surface_dock_2.jpg');