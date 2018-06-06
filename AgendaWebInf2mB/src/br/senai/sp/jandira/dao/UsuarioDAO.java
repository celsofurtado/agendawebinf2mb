package br.senai.sp.jandira.dao;


import java.sql.PreparedStatement;
import java.sql.ResultSet;

import br.senai.sp.jandira.dbutils.Conexao;
import br.senai.sp.jandira.modelo.Usuario;

public class UsuarioDAO {

	private Usuario usuario;
	private PreparedStatement stm;
	private ResultSet rs;
	
	public Usuario autenticar(String email, String senha){
		
		usuario = null;
		stm = null;
		rs = null;
		
		String sql = "SELECT * FROM usuarios "
				+ "WHERE email = ? AND senha = ?";
		
		try {
			
			stm = Conexao.getConexao().prepareStatement(sql);
			stm.setString(1, email);
			stm.setString(2, senha);
			
			rs = stm.executeQuery();
			
			if (rs.next()){
				usuario = new Usuario();
				usuario.setId(rs.getInt("id"));
				usuario.setNome(rs.getString("nome"));
				usuario.setEmail(rs.getString("email"));
				usuario.setSenha(rs.getString("senha"));
				usuario.setCidade(rs.getString("cidade"));
				usuario.setDtNasc(rs.getString("dtNasc"));
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("Ocorreu um erro!");
		}
		
		
		return usuario;
	}
	
}
