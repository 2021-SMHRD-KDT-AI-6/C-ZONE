package kr.smhrd.util;

import java.io.InputStream;
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
	
	public List<SuperVO> CommentList() {
		SqlSession session=sqlSessionFactory.openSession(); // Connection 
		List<SuperVO> list = session.selectList("commentList");
		session.close();
		return list;
	}
	
	
}