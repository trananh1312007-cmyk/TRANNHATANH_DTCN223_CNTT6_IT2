-- Xóa bảng cũ nếu tồn tại
DROP TABLE IF EXISTS Products;

-- Tạo lại bảng Products chuẩn hóa
CREATE TABLE Products (
    ID INT PRIMARY KEY AUTO_INCREMENT,

    ProductName VARCHAR(150) NOT NULL,

    Price DECIMAL(10,2) NOT NULL CHECK (Price >= 0),

    Description VARCHAR(500),

    CreatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Thêm dữ liệu mẫu
INSERT INTO Products (ProductName, Price, Description)
VALUES 
('Laptop Dell', 15000000.00, 'Laptop văn phòng'),
('iPhone 13', 20000000.00, 'Điện thoại Apple'),
('Chuột Logitech', 500000.00, 'Phụ kiện máy tính');

-- Kiểm tra dữ liệu
SELECT * FROM Products;
