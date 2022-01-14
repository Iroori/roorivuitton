create table member(
	user_id varchar(20) not null,
	user_pwd varchar(30) not null,
	user_email varchar(30) not null,
	user_name varchar(50) not null,
	user_birth varchar(20) not null,
	user_sex varchar(10) not null default 0,
	user_phone varchar(20) not null,
	user_joindate datetime not null default now(),
	company_bno varchar(20) not null,
	PRIMARY KEY (user_Id,company_bno) 
);

create table cctv(
	cctv_no int not null auto_increment,
	cctv_serial varchar(20) not null,
	cctv_location varchar(200) not null,
	cctv_data datetime not null default now(),
	cctv_total_user int not null,	
	user_id varchar(20) not null,
	company_bno varchar(20) not null,
	  PRIMARY KEY (cctv_no)
);

ALTER TABLE cctv
    ADD CONSTRAINT FK_t_cctv_user_id_user_user_id FOREIGN KEY (user_id,company_bno)
        REFERENCES member (user_id,company_bno) ON DELETE RESTRICT ON UPDATE RESTRICT;
        


create table image(
	img_no int not null auto_increment,
	cctv_no int not null,
	img_file varchar(200) not null,
	img_time datetime not null default now(),
	img_type varchar(20) not null,
	primary key(img_no)
)

ALTER TABLE image
    ADD CONSTRAINT FK_t_image_cctv_no_cctv_cctv_no FOREIGN KEY (cctv_no)
        REFERENCES cctv (cctv_no) ON DELETE RESTRICT ON UPDATE RESTRICT;



insert into cctv(cctv_serial,cctv_location,cctv_total_user,user_id,company_Bno)
values('1','강의실','20','1','8');

insert into cctv(cctv_serial,cctv_location,cctv_total_user,user_id,company_Bno)
values('2','강의실1','20','1','8');

insert into cctv(cctv_serial,cctv_location,cctv_total_user,user_id,company_Bno)
values('3','강의실2','20','1','8');
insert into cctv(cctv_serial,cctv_location,cctv_total_user,user_id,company_Bno)
values('4','강의실3','20','1','8');

insert into image(cctv_no,img_file,img_type)
values('1','resources/main/images/faces/face1.jpg','s1');
insert into image(cctv_no,img_file,img_type)
values('1','resources/main/images/faces/face2.jpg','s1');
insert into image(cctv_no,img_file,img_type)
values('1','resources/main/images/faces/face3.jpg','s1');
insert into image(cctv_no,img_file,img_type)
values('1','resources/main/images/faces/face4.jpg','s1');
insert into image(cctv_no,img_file,img_type)
values('5','resources/main/images/faces/face4.jpg','s1');

insert into image(cctv_no,img_file,img_type,img_time)
values('1','resources/main/images/faces/face1.jpg','s1','2021-01-01 10:10:10.0');
insert into image(cctv_no,img_file,img_type,img_time)
values('1','resources/main/images/faces/face2.jpg','s1','2021-01-01 10:10:10.0');
insert into image(cctv_no,img_file,img_type,img_time)
values('1','resources/main/images/faces/face3.jpg','s1','2021-01-01 10:10:10.0');
insert into image(cctv_no,img_file,img_type,img_time)
values('1','resources/main/images/faces/face4.jpg','s1','2021-01-01 10:10:10.0');
insert into image(cctv_no,img_file,img_type,img_time)
values('5','resources/main/images/faces/face4.jpg','s1','2021-01-01 10:10:10.0');






select * from member;
select * from cctv;
select * from image;

select now();

select @@global.time_zone, @@session.time_zone,@@system_time_zone;

SET GLOBAL time_zone='+09:00';
SET time_zone='+09:00';

insert into member(user_Id, user_Pwd, user_Email,user_Name,user_Birth,user_Sex,user_Phone,company_Bno)
values('1','2','3','4','5','6','7','8');





drop table member;
drop table cctv;
drop table image;
