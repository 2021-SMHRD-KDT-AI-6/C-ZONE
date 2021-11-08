package kr.smhrd.util;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class CommentDAO {
	// Session=Connection, Factory=���� : Connection�� �̸� ���� �������� ������ �ִ� ��ü
	private static SqlSessionFactory sqlSessionFactory;
	// �ʱ�ȭ �� -> DB����
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
	    session.insert("commentInsert", vo); //insert SQL����
	    session.commit(); //�Ϸ�
	    session.close();  //�ݳ�(*)
	}
	public void CommentDelete(String comment_num) {
		SqlSession session=sqlSessionFactory.openSession(); // Connection 
	    session.delete("commentDelete", comment_num); //insert SQL����
	    session.commit(); //�Ϸ�
	    session.close();  //�ݳ�(*)
	}
	
	
	public int Updateprofile(MbVO vo) {
		SqlSession session = sqlSessionFactory.openSession(); // Connection
		int num = session.update("updateprofile", vo);
		System.out.println(num);
		session.commit(); // �Ϸ�
		session.close(); // �ݳ�(*)
		return num;
	}
	
	
}