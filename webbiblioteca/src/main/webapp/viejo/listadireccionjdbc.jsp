<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="es.ascender.biblioteca.negocio.Direccion"%>
<%@ page import="es.ascender.biblioteca.repositories.jdbc.DireccionRepositoryJDBC"%>
<%@ page import="es.ascender.biblioteca.repositories.DireccionRepository"%>
<%@ page import="java.util.List"%>



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Lista de direcciones</title>
</head>
<h3>Direcciones</h3>
<body>
	<%
	DireccionRepository repo = new DireccionRepositoryJDBC();
	List<Direccion> lista = null;

	if (request.getParameter("orden") != null) {
		out.println("ordenar por " + request.getParameter("orden"));
		lista = repo.buscarTodosOrdenados(request.getParameter("orden"));
	} else {
		out.println("!!No está ordenado¡¡");
		lista = repo.buscarTodos();
	}
	%>
	<table>
		<thead>
			<tr>
				<th><a href="?orden=dni">Dni</a></th>
				<th><a href="?orden=calle">Calle</a></th>
				<th><a href="?orden=numero">Numero</a></th>
				<th><a href="?orden=codigo">Código</a></th>
				<th>Borrar</th>
			</tr>
		</thead>

		<%
		for (Direccion d : lista) {
		%>

		<tr>
			<td><%=d.getDni()%></td>
			<td><%=d.getCalle()%></td>
			<td><%=d.getNumero()%></td>
			<td><%=d.getCodigo()%></td>
			<td><a href="borrardireccionjdbc.jsp?calle=<%=d.getCalle()%>&numero=<%=d.getNumero()%>">borrar</a></td>
		</tr>
		<%
		}
		%>
	</table>

	<a href="formulariodireccion.html">insertar</a>




</body>
</html>