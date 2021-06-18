insert into positions(position_name)
value
	("trung cấp"),
    ("Cao đẳng"),
    ("Đại học "),
    ("sau đại học");
    
insert into Employee_level(employess_level_name)
value("Lễ tân"),
    ("phục vụ"),
    ("chuyên viên"),
    ("giám sát"),
	("quản lý"),
    ("giá đốc");
    insert into department (department_name)
value
	("Sale"),
    ("Marketing"),
    ("Hành Chính"),
    ("Phục vụ"),
	("Quản lý");

insert into Employees(Employee_name,position_id,employee_level_id,department_id,date_of_birth,id_card_number,salary,phone_number,email, address) 
value 
	('le huynh duc', 1, 2, 3, '1992-06-19', '208876544', 12000000.00, '0333576574', 'duc@gmail.com', '103 Hoang Dieu' ),
	('le van nam', 2, 1, 4, '1996-07-25', '208876545', 16000000.00, '0907656547', 'nam@gmail.com', 'vinh' ),
	('nguyen huu ly', 1, 1, 1, '1996-10-17', '207776513', 10000000.00, '0917676587', 'tai_bui@gmail.com', 'Ha Noi' ),
	('Nguyen Thanh Tung', 1, 2, 3, '1988-07-23', '209971245', 18000000.00, '0333765654', 'tung_nguyen@gmail.com', 'Da Nang' ),
	('le quang hoang', 2, 2, 2, '1995-08-30', '208877619', 15000000.00, '0345717654', 'kha_ho@gmail.com', 'Binh Dinh' ),
	('nguyen thanh cong', 1, 3, 2, '1999-09-30', '208845545', 10000000.00, '0907658333', 'kien_nguyen@gmail.com', 'Da Nang' );
insert into CustomerType(customer_type_name)
value
	('Diamond'),
	('Platinium'),
	('Gold'),
	('Silver'),
	('Member');
    
 insert into customers(customer_code,customer_type_id,full_name, date_of_birth,gender,id_card_number, phone_number, email ,address)
 value
	(1,2,'Joan', '1977-06-20','male', '208872125', '0333576575', 'joan@gmail.com', 'Spanish' ),
	(2,3,'Take Uchi Satoru', '1971-01-19','male', '208876546', '090765659', 'take_uchi@gmail.com', 'Japan' ),
	(2,4,'Ty Colin', '1975-11-28','male', '207776517', '091767658', 'ty_colin@gmail.com', 'Us' ),
	(3,2,'Nguyen Minh Phuc', '1984-08-19','male', '209971242', '0333765651', 'phuc_nguyen@gmail.com', 'Ha Noi' ),
	(4,1,'Joan', '1920-11-19', '208877611','male', '0345176510', 'ha_nguyen@gmail.com', 'Quang Tri' ),
	(1,3,'Nguyen Hong Dang', '1988-12-30','male', '208845540', '0906588335', 'dang_nguyen@gmail.com', 'Ha Noi' ),
	(2,2,'Lam Ba Dat', '1987-07-29','female', '212376541', '0944456056', 'ba_dat@gmail.com', 'Sai Gon' ),
	(1,1,'Cao Van Minh', '1992-10-17','female', '208856459','0333765651', 'minh_cao@gmail.com', 'Cao Bang' ),
	(3,4,'Nguyen Dang Khoi', '1998-08-24','female', '218846561', '0917063678', 'khoi_nguyen@gmail.com', 'Da Nang' );
    

insert into Servicetype(service_type_name)
value
	('Villa'),
	('House'),
	('Room');
insert into RentalType(rental_type_name, price)
value
	('Day',200000.00),
	('Month',6000000.00),
	('Year',1000000000.00),
	('Hour',100000.00);
insert into Services(service_name, area_using, no_of_floor, max_of_customer, rental_fee, rental_type_id, service_type_id, availability_status)
values
("Villa Lamark", 700.76, 2, 3, 2000000, 2, 1, "Available"),
("Villa A",	400.50,	3, 3,	1000000, 2, 1, "Available"),
("House Lamark", 100.70, 2, 3, 500000, 1, 2, "Not available"),
("House A", 80.70, 3, 2, 300000, 1, 2, "Available"),
("Room 312", 70.3, 2, 3, 200000, 2, 1, "Available"),
("Room 213", 50.4, 1, 2, 290000, 4, 3, "Not available");
insert into Contracts(employee_id,customer_id,service_id,date_started, date_finished, down_payment,total_payment)
value
	(1,1,2,'2015-10-16', '2015-10-28', 150000, 1000000),
	(1,2,3,'2016-11-10', '2019-11-15', 100000, 1000000),
	(1,1,3,'2018-02-16', '2019-03-28', 150000, 1000000),
    (2,1,1,'2018-05-16', '2020-03-28', 150000, 1000000);

insert into AccompaniedService( accompanied_service_name, price, unit, availability_status)
value
	('Karaoke',100000.00,1, 'Availabale'),
	('Car',200000.00,2, 'Unavailabale'),
	('Drink',300000.00,3, 'Availabale'),
	('Food',600000.00,2, 'Availabale'),
	('Spa',200000.00,2, 'Availabale');
    
 insert into ContractDetail
 value
	(1,3,2222),
	(3,2,1111),
	(2,3,4444);