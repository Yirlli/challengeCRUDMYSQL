<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>Inicio de sesi�n</h1>
	<form action="Login" method="post">
		<label>Usuario</label>
		<input type="text" name="user" placeholder="Ingrese el usuario">
		<label>Contrase�a</label>
		<input type="password" name="password" placeholder="Ingresa tu contrase�a">
		<button type="submit">Enviar</button>
		<button type="reset">Borrar</button>
	</form>

</body>
</html>