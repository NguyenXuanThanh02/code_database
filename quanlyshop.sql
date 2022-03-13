insert into supplier(suppID,suppName,suppPhone,suppEmail,suppAddress,suppPopulariity)
values('1','vinsmart','190010001','contact@vinsmart.com','VN','popular'),
	  ('2','Apple','190010002','contact@Apple.com','USA','popular'),
      ('3','sumsung','190010003','contact@sumsung.com','KR','unpopular'),
      ('4','readme','190010004','contact@readme.com','CN','popular'),
      ('5','Nokia','190010005','contact@Nokia.com','OH','unpopular'),
      ('6','Bphone','190010006','contact@Bphone.com','CN','unpopular')
;

insert into staff(staffID,staffName,staffPhone,staffEmail,staffAddress,staffShift)
values('6','Nguyen van A','091237123','null','ha noi','day'),
	  ('5','Nguyen van B','091237321','vanB@gmail.com','ho chi minh','night'),
      ('4','Nguyen van C','091237456','vanC@gmail.com','bac giang','day'),
      ('3','Nguyen van D','091237234','null','hai phong','night'),
      ('2','Nguyen van E','091237765','vanE@gmail.com','nam dinh','night'),
      ('1','Nguyen van F','091237978','null','lao cai','day')
;

insert into customer(cusID,cusName,cusPhone,cusEmail,cusAddress,cusMembership)
values('01','Le van A','081233217','LevanA@gmail.com','dien bien','yes'),
	  ('02','Le van C','081233534','LevanC@gmail.com','ha noi','no'),
      ('03','Le van H','081233344','null','yen bai','no'),
      ('04','Le van S','081233757','LevanS@gmail.com','lao cai','yes'),
      ('05','Le van T','081233876','LevanT@gmail.com','ho chi minh','no'),
      ('06','Le van D','081233645','LevanD@gmail.com','bac giang','yes')
;

insert into catalogue(cateID,cateName,cateDetail)
values('123','Phone','null'),
	  ('124','laptop','null'),
      ('125','watch','null'),
      ('126','TV','null'),
      ('127','HeadPhone','null'),
      ('128','software','null')
;
insert into product(productID,productName,productPrice,productDetail,productWarranty,productinStorage,Catalogue_cateID,Supplier_suppID)
values('1','Iphone13 pro max','999','null','20','16','123','2'),
	  ('2','Vinsmart Active 1','300','null','25','13','123','1'),
      ('3','samsung galaxy s10','888','New','21','19','123','3'),
      ('4','macbook M1','99','null','17','21','124','2'),
      ('5','Apple Watch','100','null','25','17','125','2'),
      ('6','Gaming Phone G10','55','null','9','16','127','4')
;

insert into orders(orderID,Product_productID,orderDate,orderPrice,productQuantity,Customer_cusID,Staff_staffID)
values('01','3','2021-12-3','888','2','04','3'),
	  ('02','4','2021-6-12','99','1','06','1'),
      ('03','1','2021-1-1','999','1','01','2'),
      ('04','5','2021-12-7','100','5','03','3'),
      ('05','2','2021-9-12','300','2','05','6'),
      ('06','6','2021-10-3','55','10','04','4')
;
      
select*
from orders;

delete from orders
where orderID = 6  ;

update customer
set cusPhone ='000000000'
where cusID = 4;





