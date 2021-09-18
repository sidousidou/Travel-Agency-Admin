/*
 
 
 

package controle;

import DAO.DataAccess;
import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

//import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name = "UsersDirection", urlPatterns = {"/UsersDirection"})
public class UsersDirect extends HttpServlet {

    
	private static final long serialVersionUID = -1869901025066802398L;

	
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setAttribute("UsersDirection", DataAccess.getAllUtilisateur());
        RequestDispatcher rd = request.getRequestDispatcher("/Admin/gererUser.jsp");
        rd.forward(request, response);
    }

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

   
    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}




*/