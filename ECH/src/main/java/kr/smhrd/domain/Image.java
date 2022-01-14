package kr.smhrd.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Image {
	private int img_no;
	private int cctv_no;
	private String img_file;
	private String img_time;
	private String img_type;
	

}
