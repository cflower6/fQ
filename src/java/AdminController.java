/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
/**
 *
 * @author chris
 */
@WebServlet(urlPatterns = {"/AdminController"})
public class AdminController extends HttpServlet {
    
    

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        
    }
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response, String message)
            throws ServletException, IOException {
        UserDB uB = new UserDB();
        String url = "/index.jsp";
        String action = request.getParameter("action");
        
        if(action == null){
            action = "/join";
        }
        if(action.equals("join")){
            url = "/register.jsp";
        } else if (action.equals("add")){
            String LastName = request.getParameter("LastName");
            String FirstName = request.getParameter("FirstName");
            String email = request.getParameter("email");
            String Address1 = request.getParameter("Address");
            String City = request.getParameter("City");
            String State = request.getParameter("State");
            String Postalcode = request.getParameter("Postalcode");
            String Country = request.getParameter("Country");
            //johnDoe1@gmail.com
            User user = new User();
            int count = uB.getAllUsers().size();
            ArrayList<User> allUsers = uB.getAllUsers();
            for(int i = 0; i < count; i++){
            if (allUsers.get(i).getEmail().equals(email)) {
                message = "This email address already exists. <br>" +"Please enter another email address.";
                url = "/index.jsp";
            }
            else {
                message = "";
                url = "/thanks.jsp";
                uB.addUser(user);
            }
           }
            request.setAttribute("user", user);
            request.setAttribute("message", message);
        }
        getServletContext()
                .getRequestDispatcher(url)
                .forward(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
