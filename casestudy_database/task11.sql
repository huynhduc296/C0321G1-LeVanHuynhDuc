-- 11.	Hiển thị thông tin các Dịch vụ đi kèm đã được sử dụng bởi những Khách hàng có TenLoaiKhachHang là 
-- “Diamond” và có địa chỉ là “Vinh” hoặc “Quảng Ngãi”.
select kh.customer_id,kh.address,lkh.customer_type_name,dvdk.accompanied_service_name,dvdk.price
from Customers kh
join CustomerType lkh on kh.customer_type_id=lkh.customer_type_id
left join Contracts hd on hd.customer_id =kh.customer_id
left join ContractDetail hdct on hdct.contract_id=hd.contract_id
left join AccompaniedService dvdk on dvdk.accompanied_service_id=hdct.accompanied_service_id
where lkh.customer_type_name="Diamond" and (address in ('Vinh')or address in('Quang Tri'));