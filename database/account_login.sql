-- ==========================================================
-- 1. XÓA USER CŨ BỊ LỖI (Tránh tình trạng "mồ côi" kết nối)
-- ==========================================================
DROP USER IF EXISTS [member_duyna];
DROP USER IF EXISTS [member_kietnh];
GO

-- ==========================================================
-- 2. TẠO LẠI USER VÀ NỐI VỚI LOGIN NGOÀI SERVER
-- ==========================================================
CREATE USER [member_duyna] FOR LOGIN [member_duyna];
CREATE USER [member_kietnh] FOR LOGIN [member_kietnh];
GO

-- ==========================================================
-- 3. CẤP QUYỀN TRUY CẬP VÀ ĐỌC DỮ LIỆU
-- ==========================================================
ALTER ROLE db_datareader ADD MEMBER [member_duyna];
ALTER ROLE db_datareader ADD MEMBER [member_kietnh];
GO