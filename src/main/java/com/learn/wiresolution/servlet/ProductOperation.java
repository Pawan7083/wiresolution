/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.learn.wiresolution.servlet;

import com.learn.wiresolution.dao.CategoryDao;
import com.learn.wiresolution.dao.ProductDao;
import com.learn.wiresolution.entities.Category;
import com.learn.wiresolution.entities.Product;
import com.learn.wiresolution.helper.FactoryProvider;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.http.Part;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;


/**
 *
 * @author Pawan Kumar
 */
@MultipartConfig
public class ProductOperation extends HttpServlet {

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
//            String path = getServletContext().getRealPath("Images");
//            out.println(path);
            String operation = request.getParameter("operation");
            HttpSession httpSession = request.getSession();
            if(operation.trim().equalsIgnoreCase("category")){
                String title=request.getParameter("title");
                String desc=request.getParameter("description");
                
                Category category=new Category(title, desc);
                CategoryDao categoryDao= new CategoryDao(FactoryProvider.getFactory());
                Boolean bool = categoryDao.addCategory(category);
                
                if(bool==true){
                    httpSession.setAttribute("message", "Category is added successfully.");
                    response.sendRedirect("admin.jsp");
                    return;
                }
                else {
                    httpSession.setAttribute("message", "Failed to add category.");
                    response.sendRedirect("admin.jsp");
                    return;
                }
            }
            if(operation.trim().equalsIgnoreCase("product")){
                String pName=request.getParameter("product_name");
                int categoryId=Integer.parseInt(request.getParameter("category"));
                String brand=request.getParameter("brand_name");
                String modal=request.getParameter("modal_name");
                int price=Integer.parseInt(request.getParameter("price"));
                int discount=Integer.parseInt(request.getParameter("discount"));
                int quantity=Integer.parseInt(request.getParameter("quantity"));
                
                String description=request.getParameter("desc");
                
                Part part=request.getPart("picture");
                String fileName= part.getSubmittedFileName();
                
                Product product = new Product();
                product.setpName(pName);
                product.setpBrand(brand);
                product.setpModal(modal);
                product.setpPrice(price);
                product.setpDiscount(discount);
                product.setpQuantity(quantity);
                product.setpPicture(fileName);
                product.setpDesc(description);
                
                CategoryDao categoryDao= new CategoryDao(FactoryProvider.getFactory());
                Category category= categoryDao.getCategory(categoryId);
                product.setCategory(category);
                
                ProductDao productDao= new ProductDao(FactoryProvider.getFactory());
                boolean bool = productDao.addProduct(product);
                if(bool==true){
                    String path=getServletContext().getRealPath("Images");
                    part.write(path+File.separator+fileName);
                    
                }
                httpSession.setAttribute("message", "Product added sucessfully...");
                response.sendRedirect("admin.jsp");
                return;
            }
            System.out.println(operation);
        }
        
    }
    public static void main(String[] args) {
        
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
