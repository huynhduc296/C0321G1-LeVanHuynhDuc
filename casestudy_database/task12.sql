-- Hiển thị thông tin IDHopDong, TenNhanVien, TenKhachHang, SoDienThoaiKhachHang, TenDichVu, SoLuongDichVuDikem 
-- (được tính dựa trên tổng Hợp đồng chi tiết),
-- TienDatCoc của tất cả các dịch vụ đã từng được khách hàng đặt vào 3 tháng cuối năm 2019 
-- nhưng chưa từng được khách hàng đặt vào 6 tháng đầu năm 2019.

select hd.contract_id, nv.Employee_name, kh.full_name, kh.phone_number , dv.service_name
, count(*) , hd.date_started, hd.date_finished
from Employees nv
join Contracts hd on hd.employee_id=nv.employee_id
join Customers kh on kh.customer_id=hd.customer_id
join Services dv on dv.service_id=hd.service_id
join ContractDetail hdct on hdct.contract_id =hd.contract_id
where (month(date_started) between 10 and 12) and (year(date_started)=2019) and month(date_started) not in (
	select contract_id
    from Contracts hd
    where month(date_started) between 1 and 6
)
group by hd.contract_id
