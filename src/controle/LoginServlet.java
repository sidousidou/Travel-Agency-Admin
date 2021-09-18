package controle;

import java.awt.List;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import modele.bdfunctions;
import modele.user;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		bdfunctions bd=new bdfunctions();
		String mail =request.getParameter("email");
		String password=request.getParameter("pass");
	    
        Connection connx=null;
		//bdfunctions bd=new bdfunctions();
		//String mail =request.getParameter("email");
		//String password=request.getParameter("pass");
				//user utilisateur=new user();
		//utilisateur.setEmail(mail);
		//utilisateur.setMotp(password);
		
		
		try {
			Class.forName("org.postgresql.Driver");
			
		
		//connexion à la base
	
        Statement stat=null;
		String url = "jdbc:postgresql://localhost/travelagencydb";
		String utilisateurs = "postgres";
		String motDePasse = "taik6991";
		

		ResultSet resultat=null;
		
			connx=DriverManager.getConnection(url,utilisateurs,motDePasse);
			System.out.println("passer connexion db");
			stat=connx.createStatement();
		    resultat=stat.executeQuery("select  email, motdepasse from user");
		    System.out.println("selection done");
		
		while (resultat.next()) {
			String email=resultat.getString("email");
			String mp=resultat.getString("motdepasse");
		
			
			
			//user ut=new user();
			//ut.setEmail(email);
			//ut.setMotp(mp);
		if(mail.equals(email)&& password.equals(mp)) {
			HttpSession session =request.getSession(true);
			//session.setAttribute("n",resultat.getString("nom"));
			//session.setAttribute("p",resultat.getString("prenom"));
			session.setAttribute("e",resultat.getString("email"));
			session.setAttribute("pw",resultat.getString("motdepasse"));
			//session.setAttribute("n",resultat.getString("nom"));
			//session.setAttribute("n",resultat.getString("nom"));
		
			switch(resultat.getString("type")) {
			case "Cliente ?":
				this.getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);
				break;
			case "Admin ?":
				this.getServletContext().getRequestDispatcher("/admin.jsp").forward(request, response);
			}
		}
		}
		
		
		
		
		
		
		}catch (Exception e) {
			
		}
		
		
		
	
		
		
		
		if((password.equals("Admin12345")||password.equals("taki6991")||password.equals("Adminadmin")) &&( mail.equals("sidoudevil07@gmail.com")|| mail.equals("mokhatitakieddine@outlook.com")|| mail.equals("sidou000005@outlook.com") )) {
			HttpSession session=request.getSession(true);
			session.setAttribute("pass", password);
			session.setAttribute("email", mail);
			this.getServletContext().getRequestDispatcher("/Admin/index.jsp").forward(request, response);
			
		}else {
			HttpSession session=request.getSession(true);
			session.setAttribute("pass", password);
			session.setAttribute("email", mail);
			this.getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);
		}
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	}

}
