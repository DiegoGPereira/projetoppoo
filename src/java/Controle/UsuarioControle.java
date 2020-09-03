package Controle;

import DAO.UsuarioDAO;
import Modelo.Usuario;
import java.io.IOException;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Diego
 */
@WebServlet(name = "UsuarioControle", urlPatterns = {"/login", "/logout"})
public class UsuarioControle extends HttpServlet {


    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException { 
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        
        
        String url = request.getRequestURI();
        
        if (url.equals(request.getContextPath() + "/login")){
            request.getRequestDispatcher("login.jsp").forward(request, response);
        } else if (url.equals(request.getContextPath() + "/logout")){
            logout(request, response); 
        } else {
            response.sendRedirect("erro.jsp");
        }
            
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        
        
        String url = request.getRequestURI();
        
        if (url.equals(request.getContextPath() + "/login")){
            try {
                login(request, response);
            } catch (ClassNotFoundException | SQLException ex) {
                Logger.getLogger(UsuarioControle.class.getName()).log(Level.SEVERE, null, ex);
            }
        }else {
           response.sendRedirect("erro.jsp");
        }
        
    }
    
    private void login(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, ClassNotFoundException, SQLException{
        
        String email = request.getParameter("email");
        String senha = request.getParameter("senha");

        Usuario usuario = new Usuario();
        usuario.setEmail(email);
        usuario.setSenha(senha);
        
        UsuarioDAO dao = new UsuarioDAO();
        usuario = dao.validarLogin(usuario);
        
        if (usuario != null){
            request.getSession(true).setAttribute("usuarioLogado", usuario);
            response.sendRedirect("index.jsp");
        } else {
            request.setAttribute("msgErro", "Dados incorretos");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
    }
    
     private void logout(HttpServletRequest request, HttpServletResponse response) throws IOException{
         request.getSession().removeAttribute("usuarioLogado");
         response.sendRedirect(".");
         
     }


}
