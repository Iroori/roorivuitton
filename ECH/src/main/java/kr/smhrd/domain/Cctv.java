package kr.smhrd.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Cctv {
	private int cctv_no;
	private int cctv_serial;
	private String cctv_location;
	private String cctv_total_user;	
}
