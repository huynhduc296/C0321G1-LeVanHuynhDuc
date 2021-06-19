-- 21.	Tạo khung nhìn có tên là V_NHANVIEN
--  để lấy được thông tin của tất cả các nhân viên
--  có địa chỉ là “Hải Châu” và đã từng lập hợp đồng cho 1 hoặc nhiều Khách hàng 
--  bất kỳ  với ngày lập hợp đồng là “12/12/2019”

create view v_Employees as
select nv.employee_id,nv.date_of_birth,nv.address,nv.id_card_number,nv.phone_number,nv.email,nv.salary
from Employees nv
join Contracts hd on nv.employee_id = hd.employee_id
where nv.address = "Hai Chau" and hd.date_started = "2019/12/12";

select * from v_Employees;