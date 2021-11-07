package kr.smhrd.util;

import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class CommentDAO {
	// Session=Connection, Factory=공장 : Connection을 미리 만들어서 여러개를 가지고 있는 객체
	private static SqlSessionFactory sqlSessionFactory;
	// 초기화 블럭 -> DB연결
	static {
		try {
			String resource = "kr/smhrd/mybatis/config.xml";
			InputStream inputStream = Resources.getResourceAsStream(resource);
			sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public List<SuperVO> CommentList(int article_num) {
		SqlSession session=sqlSessionFactory.openSession(); // Connection 
		List<SuperVO> list = session.selectList("commentList", article_num);
		session.close();
		return list;
	}
	public void CommentInsert(SuperVO vo) {
	    SqlSession session=sqlSessionFactory.openSession(); // Connection 
	    session.insert("commentInsert", vo); //insert SQL실행
	    session.commit(); //완료
	    session.close();  //반납(*)
	}
	public void CommentDelete(String comment_num) {
		SqlSession session=sqlSessionFactory.openSession(); // Connection 
	    session.delete("commentDelete", comment_num); //insert SQL실행
	    session.commit(); //완료
	    session.close();  //반납(*)
	}
	
	public MbVO Updateprofile(int mb_num) {
		SqlSession session = sqlSessionFactory.openSession();
		MbVO vo = session.selectOne("updateprofile", mb_num);
		session.close();  //반납(*)
		return vo;
	}
	
	public int Updateprofile1(MbVO vo) {
		SqlSession session = sqlSessionFactory.openSession(); // Connection
		int num = session.update("updateprofile1", vo);
		
		System.out.println(num);
		session.commit(); // 완료
		session.close(); // 반납(*)
		return num;
	}
	
	
}