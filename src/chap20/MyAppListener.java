package chap20;

import java.sql.DriverManager;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

import org.apache.commons.dbcp2.ConnectionFactory;
import org.apache.commons.dbcp2.DriverManagerConnectionFactory;
import org.apache.commons.dbcp2.PoolableConnection;
import org.apache.commons.dbcp2.PoolableConnectionFactory;
import org.apache.commons.dbcp2.PoolingDriver;
import org.apache.commons.pool2.impl.GenericObjectPool;
import org.apache.commons.pool2.impl.GenericObjectPoolConfig;

/**
 * Application Lifecycle Listener implementation class MyAppListener
 *
 */
@WebListener
public class MyAppListener implements ServletContextListener {

    /**
     * Default constructor. 
     */
    public MyAppListener() {
        // TODO Auto-generated constructor stub
    }

	/**
     * @see ServletContextListener#contextDestroyed(ServletContextEvent)
     */
    public void contextDestroyed(ServletContextEvent sce)  { 
         System.out.println("어플리케이션 종료됨");
    }

	/**
     * @see ServletContextListener#contextInitialized(ServletContextEvent)
     */
    public void contextInitialized(ServletContextEvent sce)  { 
    	 ServletContext app = sce.getServletContext();
    	 app.setAttribute("rootPath", app.getContextPath());
    	 
    	 System.out.println("어플리케이션 시작됨");
    	 
    	 System.out.println(app.getInitParameter("logEnabled"));
    	 System.out.println(app.getInitParameter("debugLevel"));
    	 
    	 initConnectionPool(); // 커넥션 풀!!
    }

	private void initConnectionPool() { // 커넥션 풀 초기화
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			String jdbcUrl =
					"jdbc:mysql://localhost/test1"
					+ "?serverTimezone=Asia/Seoul";
			String username = "root";
			String pw = "rootpw";
			
			ConnectionFactory connFactory =  //커넥션 팩토리 생성(커넥션풀이 새로운 커넥션 생성할 때 사용)
					new DriverManagerConnectionFactory(jdbcUrl, username, pw);
			PoolableConnectionFactory pcf=   //poolableconnection 생성하는 팩토리 생성 
					                         //dbcp는 커넥션풀에 커넥션 보관할 때 poolableconnection을 사용 커넷션풀 관리 기능 제공
					new PoolableConnectionFactory(connFactory, null);
			pcf.setValidationQuery("SELECT 1"); // 커넥션이 유효한지 여부를 검사할 때 사용할 쿼리를 지정
		
			GenericObjectPoolConfig poolConfig = new GenericObjectPoolConfig(); //커넥션풀의 설정정보 생성
			poolConfig.setTimeBetweenEvictionRunsMillis(1000L*60L*5L);
			poolConfig.setTestWhileIdle(true);
			poolConfig.setMinIdle(4); 		//커넥션 최소 개수
			poolConfig.setMaxTotal(50);		//커넥션 최대 개수
			
			GenericObjectPool<PoolableConnection> connectionPool =  //커넥션풀 생성
					new GenericObjectPool<>(pcf, poolConfig);   	
			pcf.setPool(connectionPool); 							//커넥션풀 연결
			
			Class.forName("org.apache.commons.dbcp2.PoolingDriver"); //커넥션풀 제공하는 jdbc 드라이버 등록
			PoolingDriver driver = (PoolingDriver) 
					DriverManager.getDriver("jdbc:apache:commons:dbcp:"); //생성한 커넥션 풀 등록 
			//사용하는 jdbc url= "jdbc:apache:commons:dbcp:test1"
			driver.registerPool("test1", connectionPool);	
			
		}catch (Exception e) {
			throw new RuntimeException(e);
		}
	}
	
    
}







