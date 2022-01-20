package kr.smhrd.domain;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Message {
	private int msg_no;
	private String msg_content;
	private String msg_location;
	private String msg_datetime;
	private int cctv_no;
	private String user_id;
	private String msg_type;
	private String msg_read;
	
	
	
}
