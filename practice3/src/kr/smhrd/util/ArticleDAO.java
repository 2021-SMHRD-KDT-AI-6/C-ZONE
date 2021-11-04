package kr.smhrd.util;
// JDBC(X) -> MyBatis Frameworks(DB Framework) -> API

import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import kr.smhrd.util.SuperVO;

public class ArticleDAO {
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

	public List<SuperVO> Index() {
		SqlSession session = sqlSessionFactory.openSession();
		List<SuperVO> list = session.selectList("Index");
		session.close(); // �ݳ�(*)
		return list;
	}
	
	public List<SuperVO> mypage() {
		SqlSession session = sqlSessionFactory.openSession();
		List<SuperVO> list = session.selectList("mypage");
		return list;
	}
	
	public SuperVO memberprofile(int mb_num) {
		SqlSession session=sqlSessionFactory.openSession(); // Connection 
		SuperVO vo = session.selectOne("memberprofile", mb_num);
		session.close();
		return vo;
	}
	
	public List<SuperVO> memberpage(int mb_num) {
		SqlSession session = sqlSessionFactory.openSession();
		List<SuperVO> list = session.selectList("memberpage", mb_num);
	
		return list;
	}
	
	public void write(SuperVO vo) {
		SqlSession session=sqlSessionFactory.openSession(); // Connection 
	      session.insert("write", vo); //insert SQL����
	      session.commit(); //�Ϸ�
	      session.close();  //�ݳ�(*)
	}
	
	public SuperVO article(int article_num) {
		SqlSession session=sqlSessionFactory.openSession(); // Connection 
		SuperVO vo = session.selectOne("article", article_num);
		session.close();
		return vo;
	}
	
	public MbVO isLogin(MbVO vo) {
	     SqlSession session=sqlSessionFactory.openSession();
	     vo=session.selectOne("isLogin", vo);
	     System.out.println("vo Ȯ�� :" + vo);
	     session.close();// �ݳ�(*)    
	     return vo;
	  }
	
	public int boardSignupInsert(MbVO vo) {
		SqlSession session = sqlSessionFactory.openSession(); // Connection
		// insert SQL ����
		int mb_num = session.insert("insert", vo);
		session.commit(); // �Ϸ�
		session.close(); // �ݳ�(*)
		return mb_num;
	  }
<<<<<<< HEAD
	public int updatecnt(int article_num) {
		SqlSession session = sqlSessionFactory.openSession(); // Connection
		// insert SQL ����
		int article_cnt = session.update("updatecnt", article_num);
		session.commit(); // �Ϸ�
		session.close(); // �ݳ�(*)
		return article_cnt;
		
=======
	public int writeView() {
		SqlSession session = sqlSessionFactory.openSession();
		int article_num = session.selectOne("writeview");
		session.close();
		return article_num;
>>>>>>> branch 'master' of https://github.com/2021-SMHRD-KDT-AI-6/C-ZONE.git
	}
}