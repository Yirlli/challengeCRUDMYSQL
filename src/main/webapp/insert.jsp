<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
<title>Ingresar usuario</title>
</head>
<body>
	<section class="d-flex flex-column justify-content-center p-5">
		<h1>Ingreso de usuarios nuevos</h1>
		<form action="Insert" method="post">
			<div class="d-flex flex-column justify-content-center vw-80 ">
				<div>
				<label class="form-label">Id</label>
				<input class="form-control"type="text" name="id" placeholde="ingrese el id de el usuario" maxlength="7">
			
			</div>
			<div>
				<label class="form-label">Nombre</label>
				<input class="form-control" type="text" name="nombre" placeholder="Ingrese el nombre de el usuario" maxlength="25">
			</div>
			<div>
				<label class="form-label">Email:</label>
				<input class="form-control" type="email" name="email" placeholder="email@hola.com" maxlength="40">
			</div>
			<div>
				<label class="form-label">Telefono</label>
				<input  class="form-control"type="number" name="tlf" placeholder="+56(9)" maxlength="11">
			</div>
			<div class="p-5 d-flex  justify-content-center gap-5">
				<button type="submit">Ingresar datos</button>
				<button type="reset">Borrar datos</button>
			</div>
		
			</div>
		</form>
			
			
		<div>
			<a href="index.jsp">Volver a la pagina de inicio</a>
		</div>
	</section>
	

</body>
</html>