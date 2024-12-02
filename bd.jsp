<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
String fecha=request.getParameter("fecha");
String novedad=request.getParameter("novedades");

Class.forName("com.mysql.cj.jdbc.Driver");

java.sql.Connection miconexion=java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3306/gestion_restaurante","root","");

java.sql.Statement miStatement=miconexion.createStatement();

String instruccionSql="INSERT INTO novedades(fecha,novedad) VALUES('" + fecha +"','"+novedad +"')";

miStatement.executeUpdate(instruccionSql);

out.print("SE HA GUARDADO SU NOVEDAD");


%>









</body>
</html>