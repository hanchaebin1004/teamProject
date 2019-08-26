package service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import model.TopMenuDataBean;
import mybatis.MybatisConnector;

@Service
public class TopMenuDBBeanMybatis {

	private final String namespace = "mybatis.TopMenu";

	@Autowired
	public MybatisConnector mybatisConnentor;

	public List getTopMenus() throws Exception {
		SqlSession sqlSession = mybatisConnentor.sqlSession();
		try {
			return sqlSession.selectList(namespace + ".getTopMenus");
		} finally {
			sqlSession.close();
		}
	}

}
