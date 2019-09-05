package service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import model.Deliverestimation;
import mybatis.MybatisConnector;

@Service
public class AdminService {

	private final String namespace = "mybatis.Admin";

	@Autowired
	public MybatisConnector mybatisConnentor;
	
	public List<Deliverestimation> getDS(String num) {
		SqlSession sqlSession = mybatisConnentor.sqlSession();
		try {
			return sqlSession.selectList(namespace + ".getDS", num);
		} finally {
			sqlSession.close();
		}
	}
}
