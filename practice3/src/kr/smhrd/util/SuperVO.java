package kr.smhrd.util;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

// 게시물(Object) --> 번호, 제목, 내용, 작성자, 작성일, 조회수
@Data
@AllArgsConstructor
@NoArgsConstructor
public class SuperVO {
	// 정보은닉
	private int article_num;
	private String article_title;
	private String article_content;
	private Date reg_date;
	private String mb_id;
	private int article_cnt;
	private int likes;
	
	private int carping_num;
	private double latitude;
	private double longitude;
	private String carping_level;
	private String carping_pic1;
	private String carping_pic2;
	private String carping_pic3; 
	private String carping_pic4; 
	private String carping_loc;
	
}
