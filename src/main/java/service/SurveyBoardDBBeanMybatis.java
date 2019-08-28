package service;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
	
	public List getSurveyList(int start, int end) throws Exception{
		SqlSession sqlSession = mybatisConnector.sqlSession();
		HashMap map = new HashMap();
		map.put("start", start);
		map.put("end", end);
		try {
			return sqlSession.selectList(namespace + ".surveyList", map);
		} finally {
			sqlSession.close();
		}
	}
}
