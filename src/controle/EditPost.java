/*
package controle;

import DAO.DataAccess;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class EditPost extends HttpServlet {

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
             {
        String idTemp = request.getParameter("id");
        int id = Integer.parseInt(idTemp);
        request.setAttribute("getNewsById", DataAccess.getUtilisateurById(id));
        RequestDispatcher rd = request.getRequestDispatcher("EditPost.jsp");
        try {
            rd.forward(request, response);
        } catch (ServletException | IOException ex) {
            Logger.getLogger(EditPost.class.getName()).log(Level.SEVERE, null, ex);
        }
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