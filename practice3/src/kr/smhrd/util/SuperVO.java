package kr.smhrd.util;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

// �Խù�(Object) --> ��ȣ, ����, ����, �ۼ���, �ۼ���, ��ȸ��
@Data
@AllArgsConstructor
@NoArgsConstructor
public class SuperVO {
	// ��������
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
