package org.example.repository;

import org.example.domain.Role;
import org.example.domain.Usuario;
import org.example.domain.UsuarioBuilder;
import org.example.util.FabricaConexao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * @author Diego
 */
public class UsuarioDAO {

    public Usuario validarLogin(Usuario usuario) throws ClassNotFoundException, SQLException {

        Connection con = FabricaConexao.getConexao();

        PreparedStatement comando = con.prepareStatement("SELECT id, email, senha, id_role FROM usuarios " +
                "WHERE email = ? AND senha = ?");
        comando.setString(1, usuario.getEmail());
        comando.setString(2, usuario.getSenha());
        comando.execute();

        ResultSet resultado = comando.executeQuery();

        if (resultado.next()) {

            Role role = new Role();
            role.setId(resultado.getInt("id_role"));

            Usuario user = UsuarioBuilder.novoUsuarioBuilder()
                    .id(resultado.getInt("id"))
                    .email(resultado.getString("email"))
                    .senha(resultado.getString("senha"))
                    .role(role)
                    .constroi();

            con.close();
            return user;
        } else {

            con.close();
            return null;
        }

    }

}
