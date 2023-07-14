<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form>
		<input type="hidden" name="id" value="<%=request.getParameter("id") %>">
		<div>
			<p></p>
			<p></p>
			<p>Nombre : <%=request.getParameter("nombre") %></p>
			<p>Email: <%=request.getParameter("email") %></p>
			<
			
		</div>
	</form>
	<input type="button" value="update " onclick='update()'/>
	<script language="javascript" type="text/javascript">

        function update() {
         
         var id = document.forms[0].elements['id'].value;
         window.location.href = "update.jsp?id=" +id;
        }
	
		
	
	</script>

</body>
</html>