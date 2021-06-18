-- Hiển thị thông tin HoTenKhachHang có trong hệ thống, với yêu cầu HoThenKhachHang không trùng nhau.
-- Học viên sử dụng theo 3 cách khác nhau để thực hiện yêu cầu trên

select full_name
from Customers kh
GROUP  BY full_name;

SELECT DISTINCT full_name 
FROM Customers;

select full_name
from Customers
union
select full_name
from Customers