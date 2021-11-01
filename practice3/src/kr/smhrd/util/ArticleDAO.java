package kr.smhrd.util;
// JDBC(X) -> MyBatis Frameworks(DB Framework) -> API

import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class ArticleDAO {
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

	public List<SuperVO> Index() {
		SqlSession session = sqlSessionFactory.openSession();
		List<SuperVO> list = session.selectList("Index");
		session.close(); // 반납(*)
		return list;
	}
}