package DAO;

import Util.FabricaConexao;
import Modelo.Produto;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


/**
 *
 * @author Diego
 */
public class ProdutoDAO {
    
    public void cadastrar(Produto produto) throws ClassNotFoundException, SQLException{
     Connection con = FabricaConexao.getConexao();
     
     PreparedStatement comando = con.prepareStatement("insert into produtos (descricao, preco) values (?, ?)");
     comando.setString(1, produto.getDescricao());
     comando.setDouble(2, produto.getPreco());
     comando.execute();
     
     con.close();
    }
    
    public List<Produto> consultarTodos() throws ClassNotFoundException, SQLException {
      Connection con = FabricaConexao.getConexao();
      
      PreparedStatement comando = con.prepareStatement("select * from produtos");
      ResultSet resultado = comando.executeQuery();
      
      List<Produto> todosProdutos = new ArrayList<>();
      while (resultado.next()) {
          Produto p = new Produto();
          p.setId(resultado.getInt("id"));
          p.setDescricao(resultado.getString("descricao"));
          p.setPreco(resultado.getDouble("preco"));
          todosProdutos.add(p);
      }
      con.close();
      return todosProdutos;
      }
        
    
    public void editar(Produto produto) throws ClassNotFoundException, SQLException{
         Connection con = FabricaConexao.getConexao();
     
     PreparedStatement comando = con.prepareStatement("UPDATE produtos\n" +
                                                      "SET id=?, descricao=?, preco=?\n" +
                                                      "WHERE id = ?");
     comando.setInt(1, produto.getId());
     comando.setString(2, produto.getDescricao());
     comando.setDouble(3, produto.getPreco());
     comando.setInt(4, produto.getId());
     comando.execute();
     
     con.close();
    
    }
    
    public void excluir (Produto produto) throws ClassNotFoundException, SQLException{
     Connection con = FabricaConexao.getConexao();
     
     PreparedStatement comando = con.prepareStatement("delete from produtos where id = ?");
     comando.setInt(1, produto.getId());
     
     comando.execute();
     
     con.close();
    }
    
    public Produto consultarPorId(Produto produto) throws SQLException, ClassNotFoundException{
         Connection con = FabricaConexao.getConexao();
      
      PreparedStatement comando = con.prepareStatement("select id, descricao, preco from produtos where id = ?");
      comando.setInt(1, produto.getId());
      
      ResultSet resultado = comando.executeQuery();
      Produto p = new Produto();
      
      //List<Produto> consultarPorId = new ArrayList<Produto>();
      while (resultado.next()) {
          
          p.setId(resultado.getInt("id"));
          p.setDescricao(resultado.getString("descricao"));
          p.setPreco(resultado.getDouble("preco"));
      //consultarPorId.add(p);
      }
      con.close();
      return p;
      }

    public Produto consultarPorId(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
        
    }

