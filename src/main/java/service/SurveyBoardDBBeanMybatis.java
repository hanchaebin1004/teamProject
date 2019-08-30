package service;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import model.SurveyBoardAnswerDataBean;
import model.SurveyBoardDataBean;
import model.SurveyBoardQuestionDataBean;
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

}
