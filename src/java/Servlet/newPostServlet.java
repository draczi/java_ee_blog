/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import SessionBeans.blogsDAOLocal;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Blogs;


/**
 *
 * @author Isi
 */
public class newPostServlet extends HttpServlet {

    @EJB
    private blogsDAOLocal blogsDAO;
    
    String title, postBody, fname;
   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
  
        title = request.getParameter("title");
        postBody = request.getParameter("postBody");
        fname = request.getParameter("fname");
        if (title.equals("")) {
            request.setAttribute("error", "Kérlek adj egy címet a bejegyzésnek!");
            request.getRequestDispatcher("new_post.jsp").forward(request, response);
            return;
        } else if (postBody.equals("")) {
            request.setAttribute("error", "Kérlek írj szöveget a bejegyzéshez!");
            request.getRequestDispatcher("new_post.jsp").forward(request, response);
            return;
        }
        
        Date date = new Date(System.currentTimeMillis());
        Blogs blog = new Blogs(0,title,postBody,fname, date);
        blogsDAO.addBlog(blog);
        request.setAttribute("allBlogs", blogsDAO.allBlogs());
        request.getRequestDispatcher("admin.jsp").forward(request, response);
       
       
        
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
        processRequest(request, response);
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
        processRequest(request, response);
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
