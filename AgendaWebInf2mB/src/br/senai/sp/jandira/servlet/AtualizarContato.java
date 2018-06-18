package br.senai.sp.jandira.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.senai.sp.jandira.dao.ContatoDAO;
import br.senai.sp.jandira.modelo.Contato;

@WebServlet("/AtualizarContato")
public class AtualizarContato extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public AtualizarContato() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println(request.getParameter("txtIdUsuario"));
		
		Contato c = new Contato();
		c.setId(Integer.parseInt(request.getParameter("txtIdContato")));
		c.setBairro(request.getParameter("txtBairro"));
		c.setCelular(request.getParameter("txtCelular"));
		c.setCep(request.getParameter("txtCep"));
		c.setCidade(request.getParameter("txtCidade"));
		c.setDtNasc(request.getParameter("txtDtNasc"));
		c.setEmail(request.getParameter("txtEmail"));
		c.setEstado(request.getParameter("txtEstado"));
		c.setIdUsuario(Integer.parseInt(request.getParameter("txtIdUsuario")));
		c.setLogradouro(request.getParameter("txtLogradouro"));
		c.setNome(request.getParameter("txtNome"));
		c.setSexo(request.getParameter("cbSexo"));
		c.setTelefone(request.getParameter("txtTelefone"));
		
		ContatoDAO cDao = new ContatoDAO(c);
		
		RequestDispatcher rd;
		
		if(cDao.atualizarContato()){
			rd = request.getRequestDispatcher("index.jsp");
		} else {
			rd = request.getRequestDispatcher("cadastrar_contato.jsp");
		}
		
		request.removeAttribute("txtIdUsuario");
		rd.forward(request, response);
		
	}

}
