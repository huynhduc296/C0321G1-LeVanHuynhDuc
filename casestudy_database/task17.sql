--  17.
-- Cập nhật thông tin những khách hàng có TenLoaiKhachHang từ Platinium lên Diamond, chỉ cập nhật
-- những khách hàng đã từng đặt phòng với tổng Tiền thanh toán trong năm 2019 là lớn hơn 10.000.000 VNĐ/500$

update Customers 
set customer_type_id = 1
where (customer_type_id = 2)
and customer_id in (select a.id from (select hd.customer_id as id,
		sum(dv.rental_fee + hdct.amount*dvdk.price) as tong_tien
        from Contracts hd
        join Services dv on hd.service_id = dv.service_id
        join ContractDetail hdct on hd.contract_id = hdct.contract_id
        join AccompaniedService dvdk on hdct.accompanied_service_id = dvdk.accompanied_service_id
        where year(hd.date_started)=2019
        group by id
        having tong_tien > 10000000 ) as a	);      