-- 10.	Hiển thị thông tin tương ứng với từng Hợp đồng thì đã sử dụng bao nhiêu Dịch vụ đi kèm. 
-- Kết quả hiển thị bao gồm IDHopDong, NgayLamHopDong, NgayKetthuc, TienDatCoc, SoLuongDichVuDiKem 
-- (được tính dựa trên việc count các IDHopDongChiTiet).

select hd.contract_id , hd.date_started,hd.date_finished,hd.down_payment,hdct.amount,count(*) tongsd
from Contracts hd 
left join ContractDetail hdct on hdct.contract_id=hd.contract_id
group by contract_id
