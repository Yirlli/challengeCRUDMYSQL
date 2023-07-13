<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
<link href="CCS/Style.css" rel="stylesheet">
<title>Insert title here</title>
</head>
<body class="bg-danger-subtle vh-100">
	<h2 class="p-5 text-center">Bienvenido a nuestra plataforma de gestión de perfonal</h2>
	<section class="bg-body-tertiary vh-50 p-5 m-5 d-flex flex-column justify-content-center">
		
		
		<p class="text-center">Elige la opcion a realizar</p>
		<div class=" d-flex justify-content-center ">
			<button class="btn btn-success "type="submit"><a href="insert.jsp">Ingresar usuario</a></button>
			<button class="btn btn-danger" type="submit"><a href="delete.jsp">Eliminar Usuario</a></button>
			<button class="btn btn-info" type="submit"><a href="update.jsp">Editar Usuario</a></button>
			<button class="btn btn-warning " type="submit"><a href="select.jsp">Mostrar Usuario</a></button>
		</div>
		
	</section>
	

</body>
</html>