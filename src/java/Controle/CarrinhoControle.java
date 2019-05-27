/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controle;

import Modelo.Carrinho;
import Modelo.Produto;
import DAO.ProdutoDAO;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author alunocmc
 */
@WebServlet(name = "CarrinhoControle", urlPatterns = {"/CarrinhoControle", "/adicionarNoCarrinho", "/removerDoCarrinho"})
public class CarrinhoControle extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String uri = request.getRequestURI();

        if (uri.equals(request.getContextPath() + "/adicionarNoCarrinho")) {
            adicionarNoCarrinho(request, response);
        } else if (uri.equals(request.getContextPath() + "/removerDoCarrinho")) {
            removerDoCarrinho(request, response);
        } else {
            consultarCarrinho(request, response);
        }

    }

    private void adicionarNoCarrinho(HttpServletRequest request, HttpServletResponse response) {
        try {
            int id = Integer.parseInt(request.getParameter("id"));
            Produto add = new Produto();
            add.setId(id);

            ProdutoDAO dao = new ProdutoDAO();
            add = dao.consultarPorId(add);

            Carrinho car = (Carrinho) request.getSession(true).getAttribute("carrinho");

            if (car == null) {
                car = new Carrinho();
                request.getSession().setAttribute("carrinho", car);
            }
            car.addProduto(add);
            response.sendRedirect("carrinho.jsp");
        } catch (Exception ex) {
            Logger.getLogger(CarrinhoControle.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    private void removerDoCarrinho(HttpServletRequest request, HttpServletResponse response) throws IOException {
        Produto p = new Produto();
        p.setId(Integer.parseInt(request.getParameter("id")));
        Carrinho c = (Carrinho) request.getSession().getAttribute("carrinho");
        c.removerProduto(p);
        response.sendRedirect(".");
    }

    private void consultarCarrinho(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Carrinho c=(Carrinho)request.getSession().getAttribute("carrinho");
        request.setAttribute("carrinho", c);
        request.getRequestDispatcher("carrinho.jsp").forward(request, response);
    }
}
