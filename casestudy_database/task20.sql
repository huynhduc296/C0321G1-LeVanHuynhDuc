-- Hiển thị thông tin của tất cả các Nhân viên và Khách hàng có trong hệ thống, thông tin hiển thị bao gồm ID
-- (IDNhanVien, IDKhachHang), HoTen, Email, SoDienThoai, NgaySinh, DiaChi.

select nv.employee_id, nv.Employee_name,nv.email,nv.phone_number,nv.address
from Employees nv
	left join Contracts hd on nv.employee_id=hd.employee_id
union all
select kh.customer_id, kh.full_name,kh.email,kh.phone_number,kh.address
from Customers kh
    left join Contracts hd on kh.customer_id=hd.customer_id;