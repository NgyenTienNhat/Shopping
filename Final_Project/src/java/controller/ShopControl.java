/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dal.CategoryDAO;
import dal.ProductDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Category;
import model.Product;

/**
 *
 * @author Nguyen Tien Nhat
 */
public class ShopControl extends HttpServlet {

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
        request.setCharacterEncoding("UTF-8");
        String indexPage = request.getParameter("index");
        String min_raw = request.getParameter("min");
        String max_raw = request.getParameter("max");
        ProductDAO dao = new ProductDAO();
        CategoryDAO daoc = new CategoryDAO();
        try {

            int min = Integer.parseInt(min_raw);
            // Product by price
            int max = Integer.parseInt(max_raw);
            List<Product> listPrice = dao.getProductByPrice(min, max);
            // price

        } catch (Exception e) {
        }
        // paging
        if (indexPage == null) {
            indexPage = "1";
        }
        int index = Integer.parseInt(indexPage);
        //get date from DAO

        List<Product> list = dao.getAllProduct();

        List<Category> listC = daoc.getAllCategory();
        int count = dao.getTotalAccount();
        int endPage = count / 8;
        if (count % 8 != 0) {
            endPage++;
        }

        List<Product> listp = dao.pagingProduct(index);
        // paging end
        request.setAttribute("listP", list); // list product
        request.setAttribute("listC", listC);// list category
        request.setAttribute("listShop", listp); // phân trang
        request.setAttribute("endP", endPage);
        request.getRequestDispatcher("Shop.jsp").forward(request, response);
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
