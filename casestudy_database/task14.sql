-- 14. Hiển thị thông tin tất cả các Dịch vụ đi kèm chỉ mới được sử dụng một lần duy nhất. 
-- Thông tin hiển thị bao gồm IDHopDong, TenLoaiDichVu, TenDichVuDiKem, SoLanSuDung.
select hd.contract_id,dv.service_name,dvdk.accompanied_service_name,dvdk.unit,count(dvdk.accompanied_service_id) as tdv
from Contracts hd
	join Customers kh on kh.customer_id=hd.customer_id
    join Services dv on dv.service_id= hd.service_id
    join ContractDetail hdct on hdct.contract_id= hd.contract_id
	join AccompaniedService dvdk on dvdk.accompanied_service_id= hdct.accompanied_service_id

group by dvdk.accompanied_service_id
having tdv=1
