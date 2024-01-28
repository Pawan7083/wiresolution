/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.learn.wiresolution.servlet;

import com.learn.wiresolution.dao.UserDao;
import com.learn.wiresolution.entities.User;
import com.learn.wiresolution.helper.FactoryProvider;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;


/**
 *
 * @author Pawan Kumar
 */
public class Register extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            String name=request.getParameter("user");
            String email=request.getParameter("email");
            String password=request.getParameter("password");
            String confirm=request.getParameter("confirm-password");
            String check=request.getParameter("check");
            
            HttpSession httpSession = request.getSession();
            
            if(check==null){
                httpSession.setAttribute("message", "Please check terms and conditions..");
                response.sendRedirect("registration.jsp");
                return ;
            }
            if(!password.equals(confirm)){
                httpSession.setAttribute("message", "Password is mismatched.");
                response.sendRedirect("registration.jsp");
                return ;
            }
            out.println(FactoryProvider.getFactory());
            User user=null;
            UserDao userDao=new UserDao(FactoryProvider.getFactory());
            user=userDao.getUserByEmail(email);
            if(user!=null){
                httpSession.setAttribute("message","User already exist. Please Login...");
                response.sendRedirect("login.jsp");
                return ;
            }
            
            else{
                try{
                    User user1=new User();
                    
                    user1.setName(name);
                user1.setUserEmail(email);
                user1.setUserPassword(password);
                user1.setUserType("Normal");
                boolean add=userDao.addUser(user1);
                if(add==true){
                    httpSession.setAttribute("message","Register sucessful");
                    response.sendRedirect("login.jsp");
                    return ;
                }
                else{
                    httpSession.setAttribute("message","Register failed !...");
                    response.sendRedirect("registration.jsp");
                    return ;
                }
//                SessionFactory factory=FactoryProvider.getFactory();
//                Session session=factory.openSession();
//                Transaction tx=session.beginTransaction();
//                
//                session.save(user1);
//                tx.commit();
//                session.close();
                }
                catch(Exception e){
                    out.println(e);
                }
            

            }
        }
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
