<%@page import="com.E_Commerce_Model.ProductModel"%>
<%@page import="com.E_Commerce_Model.UserModel"%>
<%@page import="com.E_Commerce_DB_Connection.DB_Connection"%>
<%@page import="com.E_Commerce_Service.IDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EDIT PRODUCT</title>
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 
<style type="text/css">


    body
    {
    background-color:#39e40e61;
    
    }
    

.container {
	
	height:150px;
	width: 300px;

	
}

h4
{


text-align: center;
margin-bottom:50px;

}
</style>
 
</head>
<body>




<%

	int productId=Integer.parseInt(request.getParameter("pid"));

	IDAO mydao=new DB_Connection();
	
	ProductModel pmodel=mydao.getProductRecordById(productId);

%>
 
			 
			 	<div class="container">
			 	
			 		<form action="Process/editProduct" method="get">
					<div >						
						<h4 >Edit Product</h4>
					</div>
					<div >					
						<div class="form-group">
							<label>ID</label>
							<input type="text" class="form-control" name="pid"  value="<%=pmodel.getP_id()%>" required  readonly="readonly">
						</div>
						
						
						
						<div class="form-group">
							<label>PRODUCT NAME</label>
							<input type="text" class="form-control" name="pname"  value="<%=pmodel.getP_name()%>" required>
						</div>
						
						
						<div class="form-group">
							<label>PRODUCT PRICE</label>
							<input type="text" class="form-control"name="price" value="<%=pmodel.getP_price()%>" required>
						</div>
						
						<div class="form-group">
							<label>PRODUCT DESCRIPTION</label>
							<input type="text" class="form-control" name="description" value="<%= pmodel.getP_description() %>" required>
						</div>
						
						<div class="form-group">
							<label>PRODUCT CATEGORY</label>
							<input type="text" class="form-control" name="category" value="<%= pmodel.getP_category() %>" required>
						</div>					
					</div>
					<div >
						<input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
						<input type="submit" class="btn btn-info" value="Save">
					</div>
				</form>
				</div>
	

</body>
</html>