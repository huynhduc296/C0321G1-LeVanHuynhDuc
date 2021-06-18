-- 7. Hiển thị thông tin IDDichVu, TenDichVu, DienTich, SoNguoiToiDa, ChiPhiThue, 
-- TenLoaiDichVu của tất cả các loại dịch vụ đã từng được Khách hàng đặt 
-- phòng trong năm 2018 nhưng chưa từng được Khách hàng đặt phòng trong năm 2019.

select dv.service_id, dv.service_name, dv.area_using, dv.max_of_customer, dv.rental_fee, ldv.service_type_name,hd.date_started,
hd.date_finished
from Services dv
	 join Servicetype ldv on dv.service_type_id=ldv.service_type_id
     join Contracts hd on dv.service_id= hd.service_id
where year(date_started)=2018 and dv.service_id not in(
select dv.service_id
from Services dv
join Contracts hd on dv.service_id= hd.service_id
where year(date_started)=2019
)
