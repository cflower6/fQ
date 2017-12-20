/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import java.util.ArrayList;
import java.util.Map;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author chris
 */
 @WebServlet("/CatalogController")
public class CatalogController extends HttpServlet {
    
    @Override
    public void init(){
        DbConnection.getConnection();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        HttpSession session = request.getSession();
        
        //creates an arraylist of products in the DB
       ArrayList<Product> products = ProductDB.getAllProducts();
       
       session.setAttribute("products", products);
       
       doPost(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        //automatically takes you to catalog
        String url = "/catalog.jsp";
        ServletContext sc = getServletContext();
        
        //gets parameter for action 
        String action = request.getParameter("action");
        
        //mapping to catalog, checkout to add, delete, update and confirm products from checkout cart
        if (action.equals("catalog")){
            url = "/catalog.jsp";
        }else if (action.equals("add")){
            //url = "/catalog.jsp"
        }else if (action.equals("update")){
            //url = "/catalog.jsp"
        }else if (action.equals("delete")){
            //url = "/catalog.jsp"
        }if (action.equals("checkout")){
            //url = "/catalog.jsp"
        }
        
        sc.getRequestDispatcher(url)
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
