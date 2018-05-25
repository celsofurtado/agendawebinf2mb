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
			<h1>Resultado</h1>
		</header>
		
		<%
			out.print(request.getParameter("txtNome") + "<br>");
			out.print(request.getParameter("txtSenha") + "<br>");
			out.print(request.getParameter("cidade"));
		%>
		
	</body>
</html>