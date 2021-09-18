package DB;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class ConnexionHibernateUtil {

	private static SessionFactory factory = null;
	
	private static Configuration conf = null;
	
	
	private static SessionFactory builtSessionFactory() {
		try {
			conf = new Configuration();
			
			conf.configure("hibernate.cfg.xml");
			
			System.out.println("Configuration Load Successfully ...");
			
			factory = conf.buildSessionFactory();
			
			System.out.println("SessionFactory Load Successfully ...");
			
			return factory;
			
		} catch (Throwable e) {
			System.err.println("SessionFactory creation failed ! ");
			e.printStackTrace();
			
			throw new ExceptionInInitializerError(e);
			
		}
	}
	
	
	
	public static SessionFactory getSessionFactory() {
		
		if(factory == null) 
			factory = builtSessionFactory();
		
		return factory;
		
	}
	
	
}
