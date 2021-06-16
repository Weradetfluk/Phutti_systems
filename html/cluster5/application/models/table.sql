CREATE TABLE pht_grade(
  gd_id int(11) PRIMARY key,
  gd_name varchar(255) not null 

) ENGINE=InnoDB DEFAULT CHARSET=utf8 DEFAULT COLLATE utf8_unicode_ci;

CREATE TABLE `pht_sys` (
   sys_id int(10) not null PRIMARY key,
   sys_status int(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 DEFAULT COLLATE utf8_unicode_ci;


CREATE TABLE `pht_sub` (
  sub_id int(10) not null PRIMARY key,
  sub_name varchar(50),
  sub_limit int(3)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 DEFAULT COLLATE utf8_unicode_ci;

CREATE TABLE `pht_student` (
  `std_id` int(11) NOT NULL,
  `std_code` varchar(50) not NULL,
  std_firstname varchar(50) not null,
  std_lastname varchar(50) not null,
  sub_id int(11),
  gd_id int(11),
  PRIMARY KEY (`std_id`),
  FOREIGN KEY (sub_id) REFERENCES pht_sub(sub_id),
  FOREIGN KEY (gd_id) REFERENCES pht_grade(gd_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 DEFAULT COLLATE utf8_unicode_ci;


CREATE TABLE `pht_teacher` (
  tea_id int(3) not null PRIMARY key,
  tea_firstname varchar(50) not null,
  tea_lastname varchar(50) not null,
  tea_username varchar(50),
  tea_password varchar (50),
  sub_id int(10),
  sys_id int(10),
  FOREIGN KEY (sub_id) REFERENCES pht_sub(sub_id),
  FOREIGN KEY (sys_id) REFERENCES pht_sys(sys_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 DEFAULT COLLATE utf8_unicode_ci;





