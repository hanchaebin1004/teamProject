package service;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import model.SurveyBoardAboutDataBean;
import model.SurveyBoardAnswerDataBean;
import model.SurveyBoardDataBean;
import model.SurveyBoardQuestionDataBean;
import model.SurveyBoardWriteDataBean;
import model.SurveyContentResultDataBean;
import model.SurveyResultDataBean;
import mybatis.MybatisConnector;

@Service
public class SurveyBoardDBBeanMybatis {
	private final String namespace1 = "mybatis.SurveyBoard";
	private final String namespace2 = "mybatis.SurveyBoardQnA";

	@Autowired
	public MybatisConnector mybatisConnector;

	public int getReadCount() {
		SqlSession sqlSession = mybatisConnector.sqlSession();
		try {
			return sqlSession.selectOne(namespace1 + ".surveyListCount");
		} finally {
			sqlSession.close();
		}
	}

	public List<SurveyBoardDataBean> getSurveyList(int startRow, int endRow) throws Exception {
		SqlSession sqlSession = mybatisConnector.sqlSession();
		HashMap map = new HashMap();
		map.put("startRow", startRow);
		map.put("endRow", endRow);
		try {
			return sqlSession.selectList(namespace1 + ".surveyList", map);
		} finally {
			sqlSession.close();
		}
	}

	public SurveyBoardDataBean getSurveyContent(int sb_num) {
		SqlSession sqlSession = mybatisConnector.sqlSession();
		SurveyBoardDataBean surveyBoardContent = new SurveyBoardDataBean();

		try {
			int result = sqlSession.update(namespace1 + ".updateReadCount", sb_num);
			surveyBoardContent = sqlSession.selectOne(namespace1 + ".getSurveyBoardContent", sb_num);
		} finally {
			sqlSession.commit();
			sqlSession.close();
			return surveyBoardContent;
		}

	}

	public List<SurveyContentResultDataBean> getSurveyContentResult(int sb_num) {
		SqlSession sqlSession = mybatisConnector.sqlSession();
		List<SurveyContentResultDataBean> contentResult = null;

		try {
			contentResult = sqlSession.selectList(namespace1 + ".surveyContent", sb_num);
		} finally {
			sqlSession.commit();
			sqlSession.close();
			return contentResult;
		}

	}

	public List<SurveyBoardQuestionDataBean> getQuestionList() throws Exception {
		SqlSession sqlSession = mybatisConnector.sqlSession();
		try {
			return sqlSession.selectList(namespace2 + ".surveyQuestionList");
		} finally {
			sqlSession.close();
		}
	}

	public List<SurveyBoardAnswerDataBean> getAnswerList() throws Exception {
		SqlSession sqlSession = mybatisConnector.sqlSession();
		HashMap map = new HashMap();

		try {
			return sqlSession.selectList(namespace2 + ".surveyAnswerList");
		} finally {
			sqlSession.close();
		}
	}

	public int pNumCheck(int p_num) {
		SqlSession sqlSession = mybatisConnector.sqlSession();

		try {
			int x = sqlSession.selectOne(namespace2 + ".pNumCheck", p_num);
			return x;
		} finally {
			sqlSession.close();
		}
	}

	public int pNumDupCheck(int p_num) {
		SqlSession sqlSession = mybatisConnector.sqlSession();
		try {
			return sqlSession.selectOne(namespace2 + ".pNumDupCheck", p_num);
		} finally {
			sqlSession.close();
		}
	}

	public List<SurveyBoardAboutDataBean> getBringAbout(int p_num) {
		SqlSession sqlSession = mybatisConnector.sqlSession();
		try {
			return sqlSession.selectList(namespace2 + ".bringAbout", p_num);
		} finally {
			sqlSession.close();
		}
	}

	public void insertSurvey(SurveyBoardWriteDataBean writeBoard) {
		SqlSession sqlSession = mybatisConnector.sqlSession();
		int number = sqlSession.selectOne(namespace1 + ".insertSurvey_new");
		try {
			if (number != 0)
				number = number + 1;
			else
				number = 1;

			writeBoard.setSb_num(number);
			// 확인
			System.out.println("insert: " + writeBoard);
			int result = sqlSession.insert(namespace1 + ".insertSurvey", writeBoard);
			System.out.println("insert  0k:" + result);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.commit();
			sqlSession.close();
		}
	}

	public void insertResult(SurveyResultDataBean resultBoard, int sb_num, int e_num) {
		SqlSession sqlSession = mybatisConnector.sqlSession();
		try {
			HashMap<String, Object> map = new HashMap<String, Object>();
			map.put("sb_num", sb_num);
			map.put("e_num", e_num);
			map.put("satisfaction1", resultBoard.getSatisfaction1());
			map.put("satisfaction2", resultBoard.getSatisfaction2());
			map.put("satisfaction3", resultBoard.getSatisfaction3());
			map.put("satisfaction4", resultBoard.getSatisfaction4());
			map.put("satisfaction5", resultBoard.getSatisfaction5());
			map.put("satisfaction6", resultBoard.getSatisfaction6());

			System.out.println("insert: " + resultBoard);
			int result = sqlSession.insert(namespace1 + ".insertSurveyResult", map);
			System.out.println("insert  0k:" + result);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.commit();
			sqlSession.close();
		}
	}

	public int deleteSurvey(int sb_num, String passwd) {
		SqlSession sqlSession = mybatisConnector.sqlSession();
		int x = -1;
		int y = -1;
		try {
			String dbpasswd = (String) sqlSession.selectOne(namespace1 + ".passwordCheck", sb_num);
			if (dbpasswd.equals(passwd)) {
				x = sqlSession.delete(namespace1 + ".deleteSurvey1", sb_num);
				y = sqlSession.delete(namespace1 + ".deleteSurvey2", sb_num);
			}
		} finally {
			sqlSession.commit();
			sqlSession.close();
		}
		return x;
	}

}
