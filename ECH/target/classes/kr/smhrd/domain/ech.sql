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
	PRIMARY KEY (user_Id) 
);

create table cctv(
	cctv_no int not null auto_increment,
	cctv_serial varchar(20) not null,
	cctv_location varchar(200) not null,
	cctv_data datetime not null default now(),
	cctv_total_user int not null,	
	user_Id varchar(20) not null,
	company_Bno varchar(20) not null,
	  PRIMARY KEY (cctv_no)
);

ALTER TABLE cctv
    ADD CONSTRAINT FK_t_cctv_user_id_t_user_user_id FOREIGN KEY (user_Id)
        REFERENCES member (user_Id) ON DELETE RESTRICT ON UPDATE RESTRICT;

create table image(
	img_no int not null auto_increment,
	cctv_no int not null,
	img_file varchar(200) not null,
	img_time datetime not null default now(),
	img_type varchar(20) not null,
	primary key(img_no)
)






select * from member;
select * from cctv;
select * from image;



insert into member(user_Id, user_Pwd, user_Email,user_Name,user_Birth,user_Sex,user_Phone,company_Bno)
values('1','2','3','4','5','6','7','8');





drop table member;
drop table cctv;
drop table image;
