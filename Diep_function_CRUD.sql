-- home.jsp --
-- 1. Get 8 lastest product--
SELECT * from product_upload
WHERE upl_status IN ("Sắp mở (chỉ cho đặt cọc trước)", "Đang bán")
ORDER BY upl_uploadedDate DESC
LIMIT 8
