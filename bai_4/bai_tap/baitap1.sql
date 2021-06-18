use QuanLySinhVien;
-- Hiển thị tất cả các thông tin môn học (bảng subject) có credit lớn nhất.
select *
from `subject` s
where s.credit = all (select max(credit)
from `subject` 
)
-- Hiển thị các thông tin môn học có điểm thi lớn nhất.

select *
from mark m
where m.mark = all (select max(mark)
from mark
)
-- Hiển thị các thông tin sinh viên và điểm trung bình của mỗi sinh viên, xếp hạng theo thứ tự điểm giảm dần

SELECT S.StudentId,m.mark, S.StudentName, AVG(m.mark)
FROM student S 
left join mark m on S.studentid = m.studentid
GROUP BY S.StudentId, S.StudentName
order by m.mark desc;