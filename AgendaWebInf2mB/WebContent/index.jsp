<%@page import="br.senai.sp.jandira.modelo.Usuario"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%
	Usuario usuario = new Usuario();
	usuario = (Usuario) session.getAttribute("usuario");
	
	if (usuario == null){
		response.sendRedirect("login.html");
	} else {
%>    
		<!DOCTYPE html>
		<html>
			<head>
				<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
				<title>Teste Java - JSP</title>
				<link href="css/bootstrap.css" rel="stylesheet">
			</head>
			<body>
				<header>
					<h1>Resultados</h1>
				</header>
		
				<p>Nome: <%= usuario.getNome() %></p>
				<p>E-mail: <%= usuario.getEmail() %></p>
				<p>Cidade: <%= usuario.getCidade() %></p>
				
			</body>
		</html>

<% } %>
