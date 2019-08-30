package mybatis;

import java.io.IOException;
import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
<<<<<<< HEAD
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class MybatisConnector {

	String resource;
	String dbname;

	public SqlSession sqlSession() {
		InputStream inputStream;
		try {
			inputStream = Resources.getResourceAsStream(resource);
		} catch (IOException e) {
			e.printStackTrace();
			throw new IllegalArgumentException(e);
		}
		return new SqlSessionFactoryBuilder().build(inputStream).openSession();
	}

	public void setDbname(String dbname) {
		this.resource = "mybatis/mybatis-config" + dbname + ".xml";
		this.dbname = dbname;
	}

	public String getDbname() {
		return dbname;
=======
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class MybatisConnector {
    String resource;
    String dbname;

	public SqlSession sqlSession() {
	//	String resource = "mybatis/mybatis-config.xml";
		InputStream inputStream;
		try {
			inputStream = Resources.getResourceAsStream(resource);
		} catch (IOException e) {
			throw new IllegalArgumentException(e);
		}
		return new SqlSessionFactoryBuilder().build(inputStream).openSession();
	}
	
	public void setDbname(String dbname) {
	   this.resource = "mybatis/mybatis-config" + dbname + ".xml";
	   this.dbname = dbname;
	}
	
	public String getDbname() {
	   return dbname;
>>>>>>> refs/remotes/beom/search
	}
}
