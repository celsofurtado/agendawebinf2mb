<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
		<!-- 	
				Coment�rio Teste 
				Testando a atuliza��o GIT 28-05-2018
		
		-->
		<%
			out.print(request.getParameter("txtNome") + "<br>");
			out.print(request.getParameter("txtSenha") + "<br>");
			out.print(request.getParameter("cidade"));
		%>
		
	</body>
</html>