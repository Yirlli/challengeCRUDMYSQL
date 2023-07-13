<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
<title>Ingresar usuario</title>
</head>
<body>
	<section class="d-flex flex-column justify-content-center  bg-danger-subtle vh-100">
		<h1 class=" text-center">Ingreso de usuarios nuevos</h1>
		<form action="Insert" method="post">
			<div class="d-flex flex-column justify-content-center mw-60 ">
				<div>
				<label class="form-label" for="id">Id</label>
				<input class="form-control w-30"type="text" name="id" placeholde="ingrese el id de el usuario" maxlength="7">
			
			</div>
			<div>
				<label class="form-label" for="nombre">Nombre</label>
				<input class="form-control" type="text" name="nombre" placeholder="Ingrese el nombre de el usuario" maxlength="25">
			</div>
			<div>
				<label class="form-label" for="email">Email:</label>
				<input class="form-control" type="email" name="email" placeholder="email@hola.com" maxlength="40">
			</div>
			<div>
				<label class="form-label" for="tlf">Telefono</label>
				<input  class="form-control"type="number" name="tlf" placeholder="+56(9)" maxlength="11">
			</div>
			<div class="p-5 d-flex  justify-content-center gap-5">
				<button type="submit" class="btn btn-success">Ingresar datos</button>
				<button type="reset " class="btn btn-danger">Borrar</button>
			</div>
		
			</div>
		</form>
			
			
		<div class="d-flex justify-content-center">
			<a href="index.jsp">Volver a la pagina de inicio</a>
		</div>
	</section>
	

</body>
</html>