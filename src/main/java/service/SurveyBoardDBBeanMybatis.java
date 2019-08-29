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
	private final String namespace = "mybatis.SurveyBoard";
	
	@Autowired
	public MybatisConnector mybatisConnector;
	
	public int getReadCount(){
		SqlSession sqlSession = mybatisConnector.sqlSession();
		try {
			return sqlSession.selectOne(namespace+".surveyListCount");
		} finally {
			sqlSession.close();
		}
	}
	
	public List<SurveyBoardDataBean> getSurveyList(int startRow, int endRow) throws Exception{
		SqlSession sqlSession = mybatisConnector.sqlSession();
		HashMap map = new HashMap();
		map.put("startRow", startRow);
		map.put("endRow", endRow);
		try {
			return sqlSession.selectList(namespace + ".surveyList", map);
		} finally {
			sqlSession.close();
		}
	}
	
	public List<SurveyBoardQuestionDataBean> getQuestionList() throws Exception{
		SqlSession sqlSession = mybatisConnector.sqlSession();
		try {
			return sqlSession.selectList(namespace + "QnA.surveyQuestionList");
		} finally {
			sqlSession.close();
		}
	}
	
	/*
	 * public List<SurveyBoardAnswerDataBean> getAnswerList() throws Exception{
	 * SqlSession sqlSession = mybatisConnector.sqlSession(); HashMap map = new
	 * HashMap();
	 * 
	 * try { return sqlSession.selectList(namespace + "QnA.surveyAnswerList"); }
	 * finally { sqlSession.close(); } }
	 */
}
