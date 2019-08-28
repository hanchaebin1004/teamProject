package service;

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
			return sqlSession.selectOne(namespace+".");
		} finally {
			sqlSession.close();
		}
	}
}
