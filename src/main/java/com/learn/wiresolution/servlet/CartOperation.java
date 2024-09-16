/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.learn.wiresolution.servlet;

import com.learn.wiresolution.dao.CartDao;
import com.learn.wiresolution.dao.ProductDao;
import com.learn.wiresolution.entities.Cart;
import com.learn.wiresolution.entities.Product;
import com.learn.wiresolution.entities.User;
import com.learn.wiresolution.helper.FactoryProvider;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

/**
 *
 * @author Pawan Kumar
 */
@WebServlet(name = "CartOperation", urlPatterns = {"/CartOperation"})
public class CartOperation extends HttpServlet {

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
            HttpSession httpSession= request.getSession();
             CartDao cartDao= new CartDao(FactoryProvider.getFactory());
            String operation = null;
            operation=request.getParameter("operation");
            int userId= Integer.parseInt(request.getParameter("uId"));
            int productId= Integer.parseInt(request.getParameter("pId"));
            if(operation.trim().equalsIgnoreCase("remove")){
                cartDao.removeCart(userId, productId);
                
                httpSession.setAttribute("message", "Product removed successfully");
                response.sendRedirect("cart.jsp?user_id="+userId);
                return ;
            }
            /* TODO output your page here. You may use following sample code. */
            
            System.out.println("product "+productId);
            ProductDao productDao= new ProductDao(FactoryProvider.getFactory());
            Product product= productDao.getProduct(productId);
            System.out.println("Product"+product);
           
            int i= cartDao.getCart(userId, productId);
            if(i!=0){
                httpSession.setAttribute("message", "Product already added in your cart");
                response.sendRedirect("index.jsp");
                return ;
            }
            else{
                Cart cart= new Cart();
                cart.setUserId(userId);
                cart.setProductId(productId);
                cart.setPrice((float)product.getpPrice());
                cart.setName(product.getpName());
                cart.setQuantity(1);
                cart.setImageName(product.getpPicture());
                boolean bool=cartDao.addCart(cart);
                if(bool==true){
                    httpSession.setAttribute("message", "Product added successfully in your cart");
                    response.sendRedirect("index.jsp");
                    return;
                }
                else{
                    httpSession.setAttribute("message", "Failed, Please try again! ");
                    response.sendRedirect("index.jsp");
                    return;
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
