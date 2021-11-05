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
	// article
	private int article_num;
	private String article_title;
	private String article_content;
	private Date reg_date;
	private int mb_num;
	private int article_cnt;
	private int likes;
	//write
	private double latitude;
	private double longitude;
	private String carping_level;
	private String carping_pic1;
	private String carping_pic2;
	private String carping_pic3; 
	private String carping_pic4; 
	private String carping_loc;
	//comment
	private String comment_content;
	private String comment_num;
	//member
	private String mb_id;
    private String mb_pwd;
    private String mb_profile_pic;
    private String mb_nickname;
    //like
    private int like_num;
}
