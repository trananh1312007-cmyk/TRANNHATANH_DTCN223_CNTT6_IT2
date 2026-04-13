-- Sửa bảng CUSTOMERS bằng ALTER TABLE (không dùng DROP)

-- 1. Bắt buộc Email (NOT NULL)
ALTER TABLE Customers
MODIFY Email VARCHAR(100) NOT NULL;

-- 2. Thêm ràng buộc kiểm tra tuổi >= 18
ALTER TABLE Customers
ADD CONSTRAINT chk_age CHECK (Age >= 18);

-- 3. (Tuỳ chọn) Thêm ràng buộc Email là duy nhất
ALTER TABLE Customers
ADD CONSTRAINT unique_email UNIQUE (Email);

-- 4. Kiểm tra dữ liệu
SELECT * FROM Customers;
