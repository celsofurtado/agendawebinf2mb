package br.senai.sp.jandira.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Autentica") 
public class Autentica extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public Autentica() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("USANDO O MÉTODO GET!");
		
		response.getWriter().write("Usando o método GET!");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("USANDO O MÉTODO POST!");
	
		request.setAttribute("frase", "Esta é uma frase qualquer!");
		
		RequestDispatcher rd = request.getRequestDispatcher("teste.jsp");
		rd.forward(request, response);
		
	}

}
