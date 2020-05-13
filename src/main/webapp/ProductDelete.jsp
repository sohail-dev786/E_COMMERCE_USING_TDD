<%@page import="com.E_Commerce_DB_Connection.DB_Connection"%>
<%@page import="com.E_Commerce_Service.IDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


	<%
		int productId = Integer.parseInt(request.getParameter("ProductId"));

		IDAO mydao = new DB_Connection();

		int ProductDeleted = mydao.DeleteProduct(productId);

		if (ProductDeleted > 0) {
	%>
	
	
	<script type="text/javascript">

	console.log("inside deleted script");
	
	alert("Record Delete Successfully !!!");
	
	location="http://localhost:8080/E_COMMERCE_USING_TDD/Admin.jsp";
		
	</script>


	<%
		}
	%>

</body>
</html>