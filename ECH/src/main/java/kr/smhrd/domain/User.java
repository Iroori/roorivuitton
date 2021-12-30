package kr.smhrd.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

// 사용자(Object) -> 아이디, 비번, 이름
@Data
@NoArgsConstructor
@AllArgsConstructor
public class User {
	private String userId;
	private String userPwd;
	private String userName;	

}
