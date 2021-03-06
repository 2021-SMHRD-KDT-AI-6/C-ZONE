package kr.smhrd.util;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class MbVO {
    private String mb_id;
    private String mb_pwd;
    private String mb_profile_pic;
    private String mb_nickname;
    private Date mb_joindate;
    private String admin_yn;
    private int mb_num;
}
