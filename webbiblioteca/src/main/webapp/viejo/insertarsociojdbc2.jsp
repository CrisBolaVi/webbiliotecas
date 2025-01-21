<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap demo</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
  </head>
   
<body><script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
  
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="es.ascender.biblioteca.negocio.Socio"%>
<%@ page import="es.ascender.biblioteca.repositories.SocioRepository"%>
<%@ page import="es.ascender.biblioteca.repositories.jdbc.SocioRepositoryJDBC"%>
<%
String dni= request.getParameter("dni");
String nombre= request.getParameter("nombre");
String apellidos= request.getParameter("apellidos");

Socio s= new Socio(dni,nombre,apellidos);
SocioRepository repo= new SocioRepositoryJDBC();
repo.insertar(s);
response.sendRedirect("listasociosjdbc.jsp");
%>
</body>

