package service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import mybatis.MybatisConnector;

@Service
public class AcceptService {

	private final String namespace = "mybatis.Accept";

	@Autowired
	public MybatisConnector mybatisConnentor;

	public List getAllNodeDiv2() throws Exception {
		SqlSession sqlSession = mybatisConnentor.sqlSession();
		try {
			return sqlSession.selectList(namespace + ".getAllNodeDiv2");
		} finally {
			sqlSession.close();
		}
	}

}
