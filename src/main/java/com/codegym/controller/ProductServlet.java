package com.codegym.controller;

import com.codegym.dao.ProductDAO;
import com.codegym.model.Product;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ProductServlet", urlPatterns = {"/products", ""})
public class ProductServlet extends HttpServlet {
    private ProductDAO productDAO;

    @Override
    public void init() {
        productDAO = new ProductDAO();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }

        switch (action) {
            case "create":
                request.getRequestDispatcher("create.jsp").forward(request, response);
                break;
            case "edit":
                int idEdit = Integer.parseInt(request.getParameter("id"));
                Product existingProduct = productDAO.getProductById(idEdit);
                request.setAttribute("product", existingProduct);
                request.getRequestDispatcher("edit.jsp").forward(request, response);
                break;
            case "delete":
                int idDelete = Integer.parseInt(request.getParameter("id"));
                productDAO.deleteProduct(idDelete);
                response.sendRedirect("products");
                break;
            default:
                List<Product> list = productDAO.getAllProducts();
                request.setAttribute("listProducts", list);
                request.getRequestDispatcher("index.jsp").forward(request, response);
                break;
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }

        switch (action) {
            case "create":
                String name = request.getParameter("name");
                double price = Double.parseDouble(request.getParameter("price"));
                int quantity = Integer.parseInt(request.getParameter("quantity"));
                productDAO.insertProduct(new Product(0, name, price, quantity));
                response.sendRedirect("products");
                break;
            case "edit":
                int id = Integer.parseInt(request.getParameter("id"));
                String nameEdit = request.getParameter("name");
                double priceEdit = Double.parseDouble(request.getParameter("price"));
                int quantityEdit = Integer.parseInt(request.getParameter("quantity"));
                productDAO.updateProduct(new Product(id, nameEdit, priceEdit, quantityEdit));
                response.sendRedirect("products");
                break;
        }
    }
}