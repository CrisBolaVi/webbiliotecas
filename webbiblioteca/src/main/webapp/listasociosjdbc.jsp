<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="es.ascender.biblioteca.negocio.Socio"%>

<%@ page import="java.util.List"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Lista de socio</title>
</head>

<h3>Socios</h3>

<body>
	<%
	
	List<Socio> lista=(List<Socio>) request.getAttribute("lista");
	
	%>

	<table>
	<thead>
	<tr>
	<th><a href="?orden=dni">Dni</a></th>
	<th><a href="?orden=nombre">Nombre</a></th>
	<th><a href="?orden=apellidos">Apellidos</a></th>
	<th>Borrar</th>
	</tr>
	</thead>	
	
	<%for (Socio s:lista) {%>
	
		<tr>
			<td><%=s.getDni()%></td>
			<td><%=s.getNombre()%></td>
			<td><%=s.getApellidos()%></td>
			<td><a href="borrarsociojdbc.jsp?dni=<%=s.getDni()%>">borrar</a></td>
		</tr>
		<%} %>
	</table>

<a href="formulario.html">insertar</a>

</body>
</html>