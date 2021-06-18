-- 6.	Hiển thị IDDichVu, TenDichVu, DienTich, ChiPhiThue, 
-- TenLoaiDichVu của tất cả các loại Dịch vụ chưa từng được Khách hàng thực hiện đặt từ quý 
-- 1 của năm 2019 (Quý 1 là tháng 1, 2, 3).

select dv.service_id, dv.service_name, dv.area_using, dv.rental_fee, ldv.service_type_name,hd.date_started
from Services dv
	inner join Servicetype ldv on dv.service_type_id=ldv.service_type_id
    left join Contracts hd on dv.service_id=hd.service_id
where hd.date_started not in (
	select hd.date_started
    from Contracts hd
    where (date_started between '2019-01-01' and '2019-03-31')
)
order by service_id;
