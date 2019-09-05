package service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import model.NoticeDataBean;
import mybatis.MybatisConnector;

@Service
public class AdministrationDBBeanMybatis {
	
	//namespace1은 전체적 기능 담당
	//namespace2는 질문, 선택지 리스트 가져오기 담당
	private final String namespace = "mybatis.Administer";

	@Autowired
	public MybatisConnector mybatisConnector;
	
	public List<NoticeDataBean> getNoticeList() throws Exception {
		SqlSession sqlSession = mybatisConnector.sqlSession();
		try {
			return sqlSession.selectList(namespace + ".noticeList");
		} finally {
			sqlSession.close();
		}
	}

	public int getNoticeNum() {
		SqlSession sqlSession = mybatisConnector.sqlSession();
		int number = sqlSession.selectOne(namespace + ".getNoticeNum");
		try {
			System.out.println("search 0k:" + number);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return number;
	}

	public void insertNotice(NoticeDataBean notice) {
		SqlSession sqlSession = mybatisConnector.sqlSession();
		try {
			int result = sqlSession.insert(namespace + ".insertNotice", notice);
			System.out.println("insert  0k:" + result);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.commit();
			sqlSession.close();
		}
	}

	public void deleteNotice(int nb_num) {
		SqlSession sqlSession = mybatisConnector.sqlSession();
		try {
			int result = sqlSession.delete(namespace + ".deleteNotice",nb_num);
			System.out.println("delete  0k:" + result);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.commit();
			sqlSession.close();
		}
	}

	public void updateNotice(NoticeDataBean notice) {
		SqlSession sqlSession = mybatisConnector.sqlSession();
		try {
			int result = sqlSession.update(namespace + ".updateNotice",notice);
			System.out.println("update  0k:" + result);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.commit();
			sqlSession.close();
		}
	}

	public List<NoticeDataBean> getBringNoticeAbout(int nb_num) {
		SqlSession sqlSession = mybatisConnector.sqlSession();
		
		try {
			return sqlSession.selectList(namespace + ".bringNoticeAbout", nb_num);
		} finally {
			sqlSession.close();
		}
		
	}

	public NoticeDataBean selectNoticeOne(String sb_num) {
		// TODO Auto-generated method stub
		return null;
	}

	
	
}
