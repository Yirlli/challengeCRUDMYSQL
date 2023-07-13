<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="index.jsp">
		<h3>
		<%=request.getParameter("msg") %>
		realizado con éxito
		</h3>
		</br><input type ="submit" value="Volver a la página de inicio">
	</form>

</body>
</html>