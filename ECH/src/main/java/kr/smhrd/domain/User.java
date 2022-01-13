package kr.smhrd.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

// 사용자(Object) -> 아이디, 비번, 이름
@Data
@NoArgsConstructor
@AllArgsConstructor
public class User {
	private String user_id;
	private String user_pwd;
	private String user_email;
	private String user_name;
	private String user_birth;
	private String user_sex;
	private String user_phone;
	private String company_bno;	

}
