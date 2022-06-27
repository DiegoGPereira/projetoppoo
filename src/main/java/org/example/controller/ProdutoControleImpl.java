package org.example.controller;

import org.example.domain.Produto;
import org.example.repository.ProdutoDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

/**
 * @author Diego
 */
@WebServlet(urlPatterns = {"/excluirProduto", "/listarProdutos", "/iniciarEdicaoProduto", "/cadastrarProduto", "/editarProduto"})
public class ProdutoControleImpl extends HttpServlet implements ProdutoControle {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException {

        try {
            String uri = request.getRequestURI();

            if (uri.equals(request.getContextPath() + "/excluirProduto")) {
                excluir(request, response);
            } else if (uri.equals(request.getContextPath() + "/listarProdutos")) {
                consultar(request, response);
            } else if (uri.equals(request.getContextPath() + "/iniciarEdicaoProduto")) {
                consultarPorID(request, response);
            }
        } catch (IOException | ClassNotFoundException | SQLException | ServletException e) {
            response.sendRedirect("erro.jsp");
        }
    }

    public void excluir(HttpServletRequest request, HttpServletResponse response) throws SQLException, ClassNotFoundException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        Produto p = new Produto();
        p.setId(id);

        ProdutoDAO dao = new ProdutoDAO();
        dao.excluir(p);

        response.sendRedirect("listarProdutos");

    }

    @Override
    public void consultar(HttpServletRequest request, HttpServletResponse response) throws ClassNotFoundException, SQLException, ServletException, IOException {

        ProdutoDAO p = new ProdutoDAO();

        List<Produto> pr = p.consultarTodos();

        request.setAttribute("produto", pr);

        request.getRequestDispatcher("listarProdutos.jsp").forward(request, response);
    }

    public void consultarPorID(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException, ClassNotFoundException {
        int id = Integer.parseInt(request.getParameter("id"));
        Produto p = new Produto();
        p.setId(id);
        ProdutoDAO dao = new ProdutoDAO();
        p = dao.consultarPorId(p);

        request.setAttribute("produto", p);

        request.getRequestDispatcher("iniciarEdicao.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws IOException {

        try {
            String uri = request.getRequestURI();

            if (uri.equals(request.getContextPath() + "/cadastrarProduto")) {
                cadastrar(request, response);
            } else if (uri.equals(request.getContextPath() + "/editarProduto")) {
                confirmarEdicao(request, response);
            } else {
                response.sendRedirect("erro.jsp");
            }
        } catch (IOException | ClassNotFoundException | SQLException e) {
            response.sendRedirect("erro.jsp");
        }
    }

    public void cadastrar(HttpServletRequest request, HttpServletResponse response) throws ClassNotFoundException, SQLException, IOException {
        Produto produto = new Produto();
        produto.setDescricao(request.getParameter("descricao"));
        produto.setPreco(Double.parseDouble(request.getParameter("preco")));

        ProdutoDAO dao = new ProdutoDAO();
        dao.cadastrar(produto);

        response.sendRedirect("listarProdutos");

    }

    public void confirmarEdicao(HttpServletRequest request, HttpServletResponse response) throws ClassNotFoundException, SQLException, IOException {

        Produto produto = new Produto();
        produto.setId(Integer.parseInt(request.getParameter("id")));
        produto.setDescricao(request.getParameter("descricao"));
        produto.setPreco(Double.parseDouble(request.getParameter("preco")));

        ProdutoDAO dao = new ProdutoDAO();
        dao.editar(produto);

        response.sendRedirect("listarProdutos");

    }

}
