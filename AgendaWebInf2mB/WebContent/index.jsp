<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@page import="br.senai.sp.jandira.modelo.Usuario"%>
<%@page import="br.senai.sp.jandira.dao.ContatoDAO" %>
<%@page import="br.senai.sp.jandira.modelo.Contato" %>
<%@page import="java.util.ArrayList" %>

<%
	Usuario usuario = new Usuario();
	usuario = (Usuario) session.getAttribute("usuario");

	if (usuario == null) {
		response.sendRedirect("login.html");
	} else {
		ArrayList<Contato> contatos = new ArrayList<>();
		ContatoDAO contatoDao = new ContatoDAO();
		contatos = contatoDao.getContatos(usuario.getId());
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
		<div class="navbar navbar-default">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<h1>Uai.Contatos</h1>
					</div>
				</div>
			</div>
		</div>
	</header>

	<div class="container">
		<div class="row">
			<div class="col-md-3">
				<div class="panel panel-primary">
					<div class="panel-heading">
						<h3 class="panel-title"><img style="margin-right:10px;" src="imagens/userB24.png">Usuário</h3>
					</div>
					<div class="panel-body">
						<p><strong>Usuário:</strong> <%= usuario.getNome() %></p>
						<p><strong>Cidade:</strong> <%= usuario.getCidade() %></p>
						<p><strong>Dt. Nasc.:</strong> <%= usuario.getDtNasc() %></p>
						<p>&nbsp</p>
						<p><img src="imagens/exit128.png" style="height: 24px; width:24px; margin-right:10px;"><a href="sair.jsp">Sair do sistema</a></p>
					</div>
				</div>
				<div class="panel panel-primary">
					<div class="panel-heading">
						<h3 class="panel-title"><img style="margin-right:10px;" src="imagens/menuB24.png">Menu</h3>
					</div>
					<div class="panel-body">Panel content</div>
				</div>
			</div>
			<div class="col-md-9">
				<div class="panel panel-primary">
					<div class="panel-heading">
						<h3 class="panel-title"><img style="margin-right:10px;" src="imagens/usersB24.png">Meus Contatos</h3>
					</div>
					<div class="panel-body">
						<table class="table table-hover">
							<thead>
								<tr>
									<th>ID</th>
									<th>Nome</th>
									<th>E-mail</th>
								</tr>
							</thead>
							
							<% for (Contato c : contatos){ %>
								
								<tr>
									<td><%= c.getId() %></td>
									<td><%= c.getNome() %></td>
									<td><%= c.getEmail() %></td>
								</tr>
								
							<%	
								}
							%>
							
						</table>
					</div>
					<div class="panel-footer"></div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>

<%
	}
%>
