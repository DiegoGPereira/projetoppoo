package DAO;
import Modelo.Usuario;
import Util.FabricaConexao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author Diego
 */
public class UsuarioDAO {

    public Usuario validarLogin(Usuario usuario) throws ClassNotFoundException, SQLException{
        
        
       Connection con = FabricaConexao.getConexao();
       
            PreparedStatement comando = con.prepareStatement("SELECT id, email, senha FROM usuarios WHERE email = ? AND senha = ?");
            comando.setString(1, usuario.getEmail());
            comando.setString(2, usuario.getSenha());
            comando.execute();
            
            ResultSet resultado = comando.executeQuery();

       
        if (resultado.next()) {
            Usuario user = new Usuario();
            user.setId(resultado.getInt("id"));
            user.setEmail(resultado.getString("email"));
            user.setSenha(resultado.getString("senha"));
 
            con.close();
            return user;

        }else
        con.close();
        return null;
    }
    
}
