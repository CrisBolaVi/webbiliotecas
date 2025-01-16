<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="es.cie.repositories.*"%>
<%@page import="es.cie.negocio.Libro"%>
<%@page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="estilo.css">
</head>
<%


LibroRepository repo = new LibroRepositoryMemoria();
List<Libro> lista = repo.buscarTodos();
%>
<body>
<h1>Lista de Libros</h1>
	<table>
	<caption>Titulo de tabla</caption>
		<tr>
			<th>isbn</th>
			<th>titulo</th>
			<th>autor</th>
			<th>paginas</th>
		</tr>

		<%for (Libro libro : lista) {%>
		<!-- fila o row tr (table row) -->
		<tr>
			<td><%=libro.getIsbn()%></td>
			<td><%=libro.getTitulo()%></td>
			<td><%=libro.getAutor()%></td>
			<td><%=libro.getPaginas()%></td>
		</tr>
		<%}%>
	</table>









</body>
</html>