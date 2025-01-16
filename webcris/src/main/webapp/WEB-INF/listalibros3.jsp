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

</head>
<%


LibroRepository repo = new LibroRepositoryMemoria();

String titulo= request.getParameter("titulo");
String autor= request.getParameter("autor");
List<Libro> lista=null;
if (titulo!=null) {
	
	lista=repo.buscarPorTitulo(titulo);
}else if (autor!=null) {
	
	lista=repo.buscarPorAutor(autor);
}else {

	lista = repo.buscarTodos();
}
%>
<body>
	<form method="get">
		titulo:<input type="text" name="titulo" /> <input type="submit"
			value="buscar titulo" />
	</form>
	<form method="get">
		autor:<input type="text" name="autor" /> <input type="submit"
			value="buscar autor " />
	</form>

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