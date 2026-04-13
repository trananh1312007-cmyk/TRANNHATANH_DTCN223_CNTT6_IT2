-- Giải pháp được chọn: ALTER TABLE để tránh mất dữ liệu

-- Bước 1: Backup dữ liệu (khuyến nghị)
-- CREATE TABLE USERS_backup AS SELECT * FROM USERS;

-- Bước 2: Thay đổi kiểu dữ liệu cột Phone
ALTER TABLE USERS
MODIFY Phone VARCHAR(15);

-- (Tùy chọn) Chuẩn hóa lại dữ liệu nếu cần
-- UPDATE USERS SET Phone = LPAD(Phone, 10, '0') WHERE LENGTH(Phone) < 10;
