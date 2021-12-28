package handong.csee.edu;

import java.sql.Connection;
import java.sql.SQLException;

import javax.sql.DataSource;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.FileSystemXmlApplicationContext;

public class DataSourceTest {
	
	public void testConnection() {
		
		ApplicationContext ctx = new FileSystemXmlApplicationContext("file:src.main/webapp/WEB_INF/spring/root-context.xml");
		DataSource ds = (DataSource) ctx.getBean("dataSource");
		
		try {
			Connection con = ds.getConnection();
			System.out.println("DB SUC");
		} catch(SQLException e){
			e.printStackTrace();
			System.out.println("DB FAIL");
		}
		
	}
		
}
	
	
