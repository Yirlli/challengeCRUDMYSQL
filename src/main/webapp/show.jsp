<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form>
		<input type="hidden" name="id" value="<%=request.getParameter("id") %>>">
		<div>
			<p></p>
			<p></p>
			<p>Nombre : <%=request.getParameter("nombre") %></p>
			<p>Email: <%=request.getParameter("email") %></p>
			<p>Telefono <%=request.getParameter("telefono") %></p>
			
		</div>
	</form>

</body>
</html>