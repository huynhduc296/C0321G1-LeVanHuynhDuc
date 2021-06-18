
-- 5.	Hiển thị IDKhachHang, HoTen, TenLoaiKhach, IDHopDong, TenDichVu, NgayLamHopDong, NgayKetThuc, TongTien
--  (Với TongTien được tính theo công thức như sau: ChiPhiThue + SoLuong*Gia, với SoLuong và Giá là từ bảng DichVuDiKem)
--  cho tất cả các Khách hàng đã từng đặt phỏng. (Những Khách hàng nào chưa từng đặt phòng cũng phải hiển thị ra).

select kh.customer_id , kh.date_of_birth, lkh.customer_type_name,hd.contract_id , dv.service_name, hd.date_started ,
        hd.date_finished, sum(dv.rental_fee + (hdct.amount * dvdk.price)) as tong_tien
	from Customers kh 
	left join Contracts hd on kh.customer_id = hd.customer_id
	left join CustomerType lkh on lkh.customer_type_id=kh.customer_type_id
	left join Services dv on dv.service_id  =hd.service_id
	left join ContractDetail hdct on hd.contract_id=hdct.contract_id
	left join AccompaniedService dvdk on dvdk.accompanied_service_id= hdct.accompanied_service_id
group by kh.customer_id,hd.contract_id
