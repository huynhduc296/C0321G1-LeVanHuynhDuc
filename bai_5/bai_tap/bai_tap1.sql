create database if not exists exercise_view_procedure;
use exercise_view_procedure;
create table profucts(
id int auto_increment,
product_code varchar(40),
product_name varchar(40),
product_price float,
product_amount float,
product_description varchar(40),
product_status varchar(40)
);

insert into profucts(product_code,product_name,product_price,product_amount,product_description,product_status)
value
('code3','abc',2222,1234,'acs','qwd'),
('code12','abc',2222,1234,'acs','qwd'),
('123ds','abc',2222,1234,'acs','qwd'),
('123sa','abc',2222,1234,'acs','qwd');

-- Tạo Unique Index trên bảng Products (sử dụng cột productCode để tạo chỉ mục)
-- Tạo Composite Index trên bảng Products (sử dụng 2 cột productName và productPrice)
-- Sử dụng câu lệnh EXPLAIN để biết được câu lệnh SQL của bạn thực thi như nào
-- So sánh câu truy vấn trước và sau khi tạo index

SELECT * FROM profucts WHERE product_code = '123ds';
ALTER TABLE profucts ADD INDEX idx_customerName(product_name,product_price);
EXPLAIN SELECT * FROM profucts WHERE product_name = '123ds'; 

 -- sau khi sử dụng index thì cảm thấy không khác nhau nhiều
 
--  Tạo view lấy về các thông tin: productCode, productName, productPrice, productStatus từ bảng products.
-- Tiến hành sửa đổi view
-- Tiến hành xoá view


CREATE VIEW profucts_views AS
SELECT product_code, product_name, product_price,product_status
FROM  profucts;
-- Tiến hành sửa đổi view
 ALTER VIEW profucts_views AS
  SELECT *
  FROM profucts
  WHERE product_price >=2222;
  
select *from profucts_views;
-- Tiến hành sửa đổi view
DROP VIEW profucts_views;

-- Tạo store procedure lấy tất cả thông tin của tất cả các sản phẩm trong bảng product
-- Tạo store procedure thêm một sản phẩm mới
-- Tạo store procedure sửa thông tin sản phẩm theo id
-- Tạo store procedure xoá sản phẩm theo id

DELIMITER //

CREATE PROCEDURE p_profucts()
BEGIN
  SELECT * FROM profucts;
END //
DELIMITER ;

 call p_profucts();
 
DELIMITER $$
CREATE PROCEDURE is_procedure(
id int,
product_code varchar(40),
product_name varchar(40),
product_price float,
product_amount float,
product_description varchar(40),
product_status varchar(40)
)
begin
insert into profucts
value(id,product_code,product_name,product_price,product_amount,product_description,product_status);
end ; $$
DELIMITER 

call is_procedure(1,'code3','abc',2222,1234,'acs','qwd');


DELIMITER $$
CREATE PROCEDURE ud_procedure(
id_ud int,
productprice float
)
begin
update profucts
set product_code=productprice
where id=id_ud;
end ;
DELIMITER

call ud_procedure(1,1122);

DELIMITER $$
CREATE PROCEDURE delete_procedure(
id_ud int,
productprice float
)
begin
delete from profucts
where id=id_ud;
end;
DELIMITER

call delete_procedure(1,2222)