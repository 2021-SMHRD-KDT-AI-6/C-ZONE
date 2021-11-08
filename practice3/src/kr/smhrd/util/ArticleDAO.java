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
	    session.close();  //반납(*)
		return list;
	}
	
	public void write(SuperVO vo) {
		SqlSession session=sqlSessionFactory.openSession(); // Connection 
	      session.insert("write", vo); //insert SQL실행
	      session.commit(); //완료
	      session.close();  //반납(*)
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
	     System.out.println("vo 확인 :" + vo);
	     session.close();// 반납(*)    
	     return vo;
	  }
	
	public int boardSignupInsert(MbVO vo) {
		SqlSession session = sqlSessionFactory.openSession(); // Connection
		// insert SQL 전송
		int mb_num = session.insert("insert", vo);
		session.commit(); // 완료
		session.close(); // 반납(*)
		return mb_num;
	  }

	public int updatecnt(int article_num) {
		SqlSession session = sqlSessionFactory.openSession(); // Connection
		// insert SQL 전송
		int article_cnt = session.update("updatecnt", article_num);
		session.commit(); // 완료
		session.close(); // 반납(*)
		return article_cnt;
	}
	
	public List<SuperVO> search(String search){
		SqlSession session = sqlSessionFactory.openSession();
		System.out.println("검색어"+search);
		List<SuperVO> list = session.selectList("search", search);
		System.out.println("검색리스트"+list);
		session.close();
		return list;
	}
	public List<SuperVO> Indexlike() {
		SqlSession session = sqlSessionFactory.openSession();
		List<SuperVO> list = session.selectList("likesearch");
		session.close(); // 반납(*)
		return list;
	}
	
	public int writeView() {
		SqlSession session = sqlSessionFactory.openSession();
		int article_num = session.selectOne("writeview");
		session.close();
		return article_num;
	}
	
	public List<SuperVO> likesearch() {
		SqlSession session = sqlSessionFactory.openSession();
		List<SuperVO> list = session.selectList("likesearch");
		session.close(); // 반납(*)
		return list;
	}
	
	public List<SuperVO> cntsearch() {
		SqlSession session = sqlSessionFactory.openSession();
		List<SuperVO> list = session.selectList("cntsearch");
		session.close(); // 반납(*)
		return list;
	}
	
	public List<SuperVO> levelsearch(String carping_level) {
		SqlSession session = sqlSessionFactory.openSession();
		List<SuperVO> list = session.selectList("levelsearch", carping_level);
		session.close(); // 반납(*)
		return list;
	}
	public void likeaddU(int article_num) {
	      System.out.println("출력2:"+article_num);
	      SqlSession session = sqlSessionFactory.openSession();
	      int result = session.update("likeaddU", article_num);
	      System.out.println("업데이트결과:" + result);
	      session.commit();
	      session.close();
	   }
	
	public void likeadd(SuperVO vo) {
	      SqlSession session = sqlSessionFactory.openSession();
	      session.insert("likeadd",vo);
	      session.commit();
	      session.close();
	}
	
	public SuperVO heart(SuperVO Lvo) {
	      SqlSession session = sqlSessionFactory.openSession();
	      SuperVO vo = session.selectOne("heart", Lvo);
	      session.close();
	      return vo;
	}
	
	public void likedeleteU(int article_num) {
	      SqlSession session = sqlSessionFactory.openSession();
	      int result = session.update("likedeleteU", article_num);
	      session.commit();
	      session.close();
	   }
	
	public void likedelete(SuperVO vo) {
	      SqlSession session = sqlSessionFactory.openSession();
	      session.delete("likedelete",vo);
	      session.commit();
	      session.close();
	}
	
	
	public void ArticleDelete(int article_num) {
	SqlSession session=sqlSessionFactory.openSession(); // Connection 
    session.delete("articledelete", article_num); //insert SQL실행
    session.commit(); //완료
    session.close();  //반납(*)
}
}