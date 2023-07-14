<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
<title>Insert title here</title>
</head>
<body>
	<section class="d-flex flex-column justify-content-center  bg-danger-subtle vh-100 ">
		<h1 class="text-center">Datos registrados de usuario</h1>
		<div class=" d-flex flex-column justify-content-center p-3  ">
			<form action="Select" method="post">
				<div class="mb-3 w-50">
					<label class="form-label" for="id"><b>ID:</b></label>
					<input class="form-control w-30" placeholder="Ingresa el Id del usuario que desea listar" name="id" type="text"> 
				</div>
				
				<div class=" d-flex justify-content-center p-5">
					<button class="btn btn-danger" type="submit">Listar usuario</button>
				</div>
			
	
			</form>
		</div>
		
	</section>
	

</body>
</html>