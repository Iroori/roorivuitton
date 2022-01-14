package kr.smhrd.domain;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Cctv {
	private int cctv_no;
	private String cctv_serial;
	private String cctv_location;
	private String cctv_total_user;
	private Date cctv_data;
	private String user_id;
	private String company_bno;
}
