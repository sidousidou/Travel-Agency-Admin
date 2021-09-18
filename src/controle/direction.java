package controle;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
//import DAO.DataAccess;
//import javax.servlet.annotation.WebServlet;


/**
 * Servlet implementation class direction
 */
//@SuppressWarnings("unused")
@WebServlet(name="direction",urlPatterns = "/Admin/index")
public class direction extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	
	
//	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        request.setAttribute("direction", DataAccess.getAllUtilisateur());
//        RequestDispatcher rd = request.getRequestDispatcher("/index.jsp");
//        rd.forward(request, response);
//    }
	
	
	
    public direction() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
//		request.setAttribute("direction", DataAccess.getAllUtilisateur());
        RequestDispatcher rd = request.getRequestDispatcher("/Admin/index.jsp");
        rd.forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		//doGet(request, response);
	}
	
	
	@Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
	
	
	
	
	
	
	
	
	
	
	
	

}
