package service;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import model.RootNode;
import model.WayBill;
import mybatis.MybatisConnector;

@Service
public class SearchDBBeanMybatis {

	private final String namespace = "mybatis.search";
	
	@Autowired
	public MybatisConnector mybatisConnector;
	
	public WayBill searchPost(String w_num) {
		SqlSession sqlSession = mybatisConnector.sqlSession();
		try {
			WayBill wb = sqlSession.selectOne(namespace + ".searchPost", w_num);
			return wb;
		} finally {
			sqlSession.close();
		} 
	}
	
	public RootNode selectNodeCode(String w_num) {
		SqlSession sqlSession = mybatisConnector.sqlSession();
		try {
			RootNode rn = sqlSession.selectOne(namespace + ".selectNodeCode", w_num);
			return rn;
		} finally {
			sqlSession.close();
		} 
	}
}
