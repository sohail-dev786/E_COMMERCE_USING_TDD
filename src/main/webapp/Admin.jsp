<%@page import="com.E_Commerce_Model.ProductModel"%>
<%@page import="com.E_Commerce_DB_Connection.DB_Connection"%>
<%@page import="com.E_Commerce_Service.IDAO"%>
<%@page import="com.E_Commerce_Model.UserModel"%>

<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>ADMIN PANEL</title>
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<style>
</style>

<style type="text/css">
#welcome {
	text-align: center;
	font-size: 60px;
	font-weight: bold;
	letter-spacing: 5px;
	margin-top: 20px;
}

body {
	color: #566787;
	background: #f5f5f5;
	font-family: 'Varela Round', sans-serif;
	font-size: 13px;
}

.table-wrapper {
	background: #fff;
	padding: 20px 25px;
	margin: 30px 0;
	border-radius: 3px;
	box-shadow: 0 1px 1px rgba(0, 0, 0, .05);
}

.table-title {
	padding-bottom: 15px;
	background: #435d7d;
	color: #fff;
	padding: 16px 30px;
	margin: -20px -25px 10px;
	border-radius: 3px 3px 0 0;
}

.table-title h2 {
	margin: 5px 0 0;
	font-size: 24px;
}

.table-title .btn-group {
	float: right;
}

.table-title .btn {
	color: #fff;
	float: right;
	font-size: 13px;
	border: none;
	min-width: 50px;
	border-radius: 2px;
	border: none;
	outline: none !important;
	margin-left: 10px;
}

.table-title .btn i {
	float: left;
	font-size: 21px;
	margin-right: 5px;
}

.table-title .btn span {
	float: left;
	margin-top: 2px;
}

table.table tr th, table.table tr td {
	border-color: #e9e9e9;
	padding: 12px 15px;
	vertical-align: middle;
}

table.table tr th:first-child {
	width: 60px;
}

table.table tr th:last-child {
	width: 100px;
}

table.table-striped tbody tr:nth-of-type(odd) {
	background-color: #fcfcfc;
}

table.table-striped.table-hover tbody tr:hover {
	background: #f5f5f5;
}

table.table th i {
	font-size: 13px;
	margin: 0 5px;
	cursor: pointer;
}

table.table td:last-child i {
	opacity: 0.9;
	font-size: 22px;
	margin: 0 5px;
}

table.table td a {
	font-weight: bold;
	color: #566787;
	display: inline-block;
	text-decoration: none;
	outline: none !important;
}

table.table td a:hover {
	color: #2196F3;
}

table.table td a.edit {
	color: #FFC107;
}

table.table td a.delete {
	color: #F44336;
}

table.table td i {
	font-size: 19px;
}

table.table .avatar {
	border-radius: 50%;
	vertical-align: middle;
	margin-right: 10px;
}

.pagination {
	float: right;
	margin: 0 0 5px;
}

.pagination li a {
	border: none;
	font-size: 13px;
	min-width: 30px;
	min-height: 30px;
	color: #999;
	margin: 0 2px;
	line-height: 30px;
	border-radius: 2px !important;
	text-align: center;
	padding: 0 6px;
}

.pagination li a:hover {
	color: #666;
}

.pagination li.active a, .pagination li.active a.page-link {
	background: #03A9F4;
}

.pagination li.active a:hover {
	background: #0397d6;
}

.pagination li.disabled i {
	color: #ccc;
}

.pagination li i {
	font-size: 16px;
	padding-top: 6px
}

.hint-text {
	float: left;
	margin-top: 10px;
	font-size: 13px;
}
/* Custom checkbox */
.custom-checkbox {
	position: relative;
}

.custom-checkbox input[type="checkbox"] {
	opacity: 0;
	position: absolute;
	margin: 5px 0 0 3px;
	z-index: 9;
}

.custom-checkbox label:before {
	width: 18px;
	height: 18px;
}

.custom-checkbox label:before {
	content: '';
	margin-right: 10px;
	display: inline-block;
	vertical-align: text-top;
	background: white;
	border: 1px solid #bbb;
	border-radius: 2px;
	box-sizing: border-box;
	z-index: 2;
}

.custom-checkbox input[type="checkbox"]:checked+label:after {
	content: '';
	position: absolute;
	left: 6px;
	top: 3px;
	width: 6px;
	height: 11px;
	border: solid #000;
	border-width: 0 3px 3px 0;
	transform: inherit;
	z-index: 3;
	transform: rotateZ(45deg);
}

.custom-checkbox input[type="checkbox"]:checked+label:before {
	border-color: #03A9F4;
	background: #03A9F4;
}

.custom-checkbox input[type="checkbox"]:checked+label:after {
	border-color: #fff;
}

.custom-checkbox input[type="checkbox"]:disabled+label:before {
	color: #b8b8b8;
	cursor: auto;
	box-shadow: none;
	background: #ddd;
}
/* Modal styles */
.modal .modal-dialog {
	max-width: 400px;
}

.modal .modal-header, .modal .modal-body, .modal .modal-footer {
	padding: 20px 30px;
}

.modal .modal-content {
	border-radius: 3px;
}

.modal .modal-footer {
	background: #ecf0f1;
	border-radius: 0 0 3px 3px;
}

.modal .modal-title {
	display: inline-block;
}

.modal .form-control {
	border-radius: 2px;
	box-shadow: none;
	border-color: #dddddd;
}

.modal textarea.form-control {
	resize: vertical;
}

.modal .btn {
	border-radius: 2px;
	min-width: 100px;
}

.modal form label {
	font-weight: normal;
}

.users {
	color: white;
	cursor: pointer;
	margin-left: 20px;
}

.products {
	color: white;
	cursor: pointer;
	margin-left: 20px;
	margin-bottom: 70px;
}

.users:hover {
	text-decoration: none;
	color: #adff2f;
}

.products:hover {
	text-decoration: none;
	color: #adff2f;
}
</style>
</head>
<body>

	<h1 id="welcome">WELC0ME TO ADMIN PAGE</h1>


	<div class="container ">
		<div class="table-wrapper">
			<div class="table-title">
				<div class="row ">
					<div class="col-sm-6 ">


						<a href="#users-list" class="users"><span
							class="fa fa-users fa-5x"></span>
							<h2>
								CLICK TO MANAGE <b>USERS</b>
							</h2></a>
					</div>

					<div class="col-sm-6">
						<a href="#product-list" class="products"><span
							class="fa fa-cart-plus fa-5x"></span></span>
						<h2>
								CLICK TO MANAGE <b>PRODUCTS</b>
							</h2></a>
					</div>

				</div>
				
				




			</div>
		</div>
	</div>
	
	
	
	
<body>


	<%
                
                
                IDAO dbConnnection=new DB_Connection();
										
				List<UserModel> userlist=dbConnnection.getUserRecord();
										
				
				if(userlist.size()>0)
				{
		
                
                %>


	<div class="container id="users-list">
		<div class="table-wrapper">
			<div class="table-title">
				<div class="row">
					<div class="col-sm-6">


						<h3>
							<span class="fa fa-user-o fa-1x "><b>Manage Users</b>
						</h3>


					</div>
					<div class="col-sm-6">

						<a href="#addEmployeeModal" class="btn btn-success"
							data-toggle="modal"><i class="material-icons">&#xE147;</i> <span>Add
								New User</span></a>

					</div>
				</div>
			</div>
			<table class="table table-striped table-hover">
				<thead>
					<tr>
						<th>ID</th>
						<th>FIRST NAME</th>
						<th>LAST NAME</th>
						<th>EMAIL</th>
						<th>PASSWORD</th>
						<th>Actions</th>
					</tr>
				</thead>
				<tbody>


					<%
                
            	for(UserModel model:userlist) {
                
                
                %>
					<tr>

						<td>
							<%
                	out.print(model.getU_id());
                	%>

						</td>


						<td>
							<%
                	out.print(model.getU_fname());
                	%>

						</td>

						<td>
							<%
                	out.print(model.getU_lname());
                	%>

						</td>

						<td>
							<%
                	out.print(model.getU_email());
                	%>

						</td>

						<td>
							<%
                	out.print(model.getU_password());
                	%>

						</td>





						<td><a href="edituser.jsp?userId=<%= model.getU_id() %>"
							class="edit"><i class="material-icons" data-toggle="tooltip"
								title="Edit">&#xE254;</i></a> <!--  <a href="#editEmployeeModal?=<% model.getU_id(); %> %>" class="edit" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i></a>
                         --> <a href="#"
							onclick="askConfirm('<%= model.getU_id() %>','<%= model.getU_fname() %>')"
							class="delete" data-toggle="modal"><i class="material-icons"
								data-toggle="tooltip" title="Delete">&#xE872;</i></a></td>
					</tr>

					<%
                 
				}
                 %>
				</tbody>
			</table>

			<%
		}
		else {
		
			out.print("<a href='#'>ADD NEW</a>");
		}
	%>




			<div class="clearfix">
				<div class="hint-text">
					Showing <b>5</b> out of <b>25</b> entries
				</div>
				<ul class="pagination">
					<li class="page-item disabled"><a href="#">Previous</a></li>
					<li class="page-item"><a href="#" class="page-link">1</a></li>
					<li class="page-item"><a href="#" class="page-link">2</a></li>
					<li class="page-item active"><a href="#" class="page-link">3</a></li>
					<li class="page-item"><a href="#" class="page-link">4</a></li>
					<li class="page-item"><a href="#" class="page-link">5</a></li>
					<li class="page-item"><a href="#" class="page-link">Next</a></li>
				</ul>
			</div>
		</div>
	</div>


	<!-- ADD User Modal  HTML -->


	<div id="addEmployeeModal" class="modal fade">
		<div class="modal-dialog">
			<div class="modal-content">
				<form action="Process/userinsert" method="post">
					<div class="modal-header">
						<h4 class="modal-title">Add User</h4>
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">&times;</button>
					</div>
					<div class="modal-body">
						<div class="form-group">
							<label>FIRST NAME</label> <input type="text" class="form-control"
								name="fname" required>
						</div>

						<div class="form-group">
							<label>LAST NAME</label> <input type="text" class="form-control"
								name="lname" required>
						</div>

						<div class="form-group">
							<label>Email</label> <input type="email" class="form-control"
								name="uemail" required>
						</div>

						<div class="form-group">
							<label>PASSWORD</label> <input type="password"
								class="form-control" name="password" required>

						</div>

						<div class="form-group">
							<label>CONFIRM PASSWORD</label> <input type="password"
								class="form-control" name="password" required>
						</div>


					</div>
					<div class="modal-footer">
						<input type="button" class="btn btn-default" data-dismiss="modal"
							value="Cancel"> <input type="submit"
							class="btn btn-success" value="Add">
					</div>
				</form>
			</div>
		</div>
	</div>








	<!-- Edit  User Modal  HTML -->


	<%-- 
	<%
	
	int userid=Integer.parseInt(("u_id"));
	IDAO mydao1=new DB_Connection();
	UserModel model=mydao1.getUserRecordByID(userid);
	
	%>
	 --%>

	<div id="editEmployeeModal" class="modal fade">
		<div class="modal-dialog">
			<div class="modal-content">
				<form action="Process/editUser">
					<div class="modal-header">
						<h4 class="modal-title">Edit User</h4>
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">&times;</button>
					</div>
					<div class="modal-body">
						<div class="form-group">
							<label>FIRST NAME</label> <input type="text" class="form-control"
								name="fname" required>
						</div>


						<div class="form-group">
							<label>LAST NAME</label> <input type="text" class="form-control"
								name="lname" required>
						</div>

						<div class="form-group">
							<label>Email</label> <input type="email" class="form-control"
								name="email" required>
						</div>

						<div class="form-group">
							<label>PASSWORD</label> <input type="password"
								class="form-control" name="pass" required>
						</div>
					</div>
					<div class="modal-footer">
						<input type="button" class="btn btn-default" data-dismiss="modal"
							value="Cancel"> <input type="submit" class="btn btn-info"
							value="Save">
					</div>
				</form>
			</div>
		</div>
	</div>




	<!-- DELETE USER RECORDS -->



	<!-- Delete Modal HTML -->
	<div id="deleteEmployeeModal" class="modal fade">
		<div class="modal-dialog">
			<div class="modal-content">
				<form>
					<div class="modal-header">
						<h4 class="modal-title">Delete Employee</h4>
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">&times;</button>
					</div>
					<div class="modal-body">
						<p>Are you sure you want to delete these Records?</p>
						<p class="text-warning">
							<small>This action cannot be undone.</small>
						</p>
					</div>
					<div class="modal-footer">
						<input type="button" class="btn btn-default" data-dismiss="modal"
							value="Cancel"> <input type="submit"
							class="btn btn-danger" value="Delete">
					</div>
					<input type="hidden" id="id">
				</form>
			</div>
		</div>
	</div>



	<script type="text/javascript" rel="javascript">
	function askConfirm(userId,userNm)
	{
				console.log("dshdgsdsds");
				var response=confirm("DO YOU WANT TO DELETE RECORD OF :\t "+userNm+"! ! !");
					if(response)
						{
						
						window.location="http://localhost:8080/E_COMMERCE_USING_TDD/UserDelete.jsp?userId="+userId;
						
						
						}
	
	}
	
	</script>































	<!-- ----------------   MANAGE PRODUCTS      ------------------- -->
<body>

	<%

		IDAO mydao=new DB_Connection();
	
		List<ProductModel> products=mydao.getProductRecord();
		
		
		if(products.size()>0)
		{
			
	



%>




	<div class="container" id="product-list">
		<div class="table-wrapper">
			<div class="table-title">
				<div class="row">
					<div class="col-sm-6">
						<h2>
							<span class="fa fa fa-plus-square fa-1x "></span><b>Manage
								Products</b>
						</h2>

					</div>
					<div class="col-sm-6">
						<a href="#addproducts" class="btn btn-success" data-toggle="modal"><i
							class="material-icons">&#xE147;</i> <span>Add New Products</span></a>

					</div>
				</div>
			</div>
			<table class="table table-striped table-hover">
				<thead>
					<tr>
						<th>ID</th>
						<th>PRODUCT NAME</th>
						<th>PRICE</th>
						<th>DESCRIPTION</th>
						<th>CATEGORY</th>
						<th>Actions</th>
					</tr>
				</thead>
				<tbody>


					<%
                    
                    	for(ProductModel pmodel:products)
                    	{
                    		
                    	
                    
                    %>

					<tr>
						<td>
							<% 
                    
                	out.print(pmodel.getP_id());
                    
                    %>

						</td>

						<td>
							<%
                    
                    out.print(pmodel.getP_name());
                    
                    %>

						</td>

						<td>
							<%
                    
                    out.print(pmodel.getP_price());
                    %>

						</td>

						<td>
							<%
                    
                    out.print(pmodel.getP_description());
                    %>

						</td>

						<td>
							<%
                    out.print(pmodel.getP_category());
                    %>

						</td>







						<td>
							<%--                 <a href="edituser.jsp?userId=<%= model.getU_id() %>"  class="edit"><i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i></a>
             --%> <a href="editProduct.jsp?pid=<%=pmodel.getP_id() %>"
							class="edit"><i class="material-icons" data-toggle="tooltip"
								title="Edit">&#xE254;</i></a> <a href=""
							onclick="askConfirm2('<%=pmodel.getP_id() %>','<%=pmodel.getP_name() %>')"
							class="delete" data-toggle="modal"><i class="material-icons"
								data-toggle="tooltip" title="Delete">&#xE872;</i></a>
						</td>

					</tr>

					<%
                    	}
                  %>
				</tbody>
			</table>


			<%
    
		}
		else
		{
			out.print("<a href='#'>ADD NEW</a>");
		}
    
    %>


			<div class="clearfix">
				<div class="hint-text">
					Showing <b>5</b> out of <b>25</b> entries
				</div>
				<ul class="pagination">
					<li class="page-item disabled"><a href="#">Previous</a></li>
					<li class="page-item"><a href="#" class="page-link">1</a></li>
					<li class="page-item"><a href="#" class="page-link">2</a></li>
					<li class="page-item active"><a href="#" class="page-link">3</a></li>
					<li class="page-item"><a href="#" class="page-link">4</a></li>
					<li class="page-item"><a href="#" class="page-link">5</a></li>
					<li class="page-item"><a href="#" class="page-link">Next</a></li>
				</ul>
			</div>
		</div>
	</div>







	<!--EDIT PRODUCTS  -->

	<!-- 
			<div class="modal-dialog">
			<div class="modal-content">
				<form action="Process/editProduct" method="get">
					<div class="modal-header">	
										
						<h4 class="modal-title">Edit Products</h4>
						<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
					</div>
					<div class="modal-body">	
					
						<div class="form-group">
							<label>PRODUCT ID</label>
							<input type="text" class="form-control" name="pid" <%-- value="<%= mypromodel.getP_id() %>" --%> required>
						</div>
					
									
						<div class="form-group">
							<label>PRODUCT NAME</label>
							<input type="text" class="form-control" name="pname" <%-- value="<%= mypromodel.getP_name() %>" --%> required>
						</div>
						
						<div class="form-group">
							<label>PRICE</label>
							<input type="text" class="form-control" name="price"  <%-- value="<%= mypromodel.getP_price() %>" --%> required>
						</div>
						
						<div class="form-group">
							<label>PRODUCT DESCRIPTION</label>
							<textarea class="form-control"  name="desc" <%-- value="<%= mypromodel.getP_description() %>" --%> required></textarea>
						</div>
						<div class="form-group">
							<label>PRODUCT CATEGORY</label>
							<input type="text" class="form-control" name="category"  <%-- value="<%= mypromodel.getP_category() %>" --%> required>
						</div>					
					</div>
					<div class="modal-footer">
						<input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
						<input type="submit" class="btn btn-info" value="Save">
					</div>
				</form>
			</div>
		</div>
	</div>
	
	 -->



	<!-- Delete Modal HTML -->

	<!-- 
	<div id="deleteEmployeeModal" class="modal fade">
		<div class="modal-dialog">
			<div class="modal-content">
				<form>
					<div class="modal-header">						
						<h4 class="modal-title">Delete Employee</h4>
						<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
					</div>
					<div class="modal-body">					
						<p>Are you sure you want to delete these Records?</p>
						<p class="text-warning"><small>This action cannot be undone.</small></p>
					</div>
					<div class="modal-footer">
						<input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
						<input type="submit" class="btn btn-danger" value="Delete">
					</div>
				</form>
			</div>
		</div>
	</div>
				
				
	 -->


	<!-- ADD PRODUCTS Modal HTML -->
	<div id="addproducts" class="modal fade">
		<div class="modal-dialog">
			<div class="modal-content">
				<form action="Process/addProduct" method="get">
					<div class="modal-header">
						<h4 class="modal-title">Add Products</h4>
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">&times;</button>
					</div>
					<div class="modal-body">
						<div class="form-group">
							<label>PRODUCT NAME</label> <input type="text"
								class="form-control" name="pname" required>
						</div>
						<div class="form-group">
							<label>PRICE</label> <input type="text" class="form-control"
								name="price" required>
						</div>
						<div class="form-group">
							<label>PRODUCT DESCRIPTION</label>
							<textarea class="form-control" name="desc" required></textarea>
						</div>
						<div class="form-group">
							<label>PRODUCT CATEGORY</label> <input type="text"
								class="form-control" name="category" required>
						</div>
					</div>
					<div class="modal-footer">
						<input type="button" class="btn btn-default" data-dismiss="modal"
							value="Cancel"> <input type="submit"
							class="btn btn-success" value="Add">
					</div>
				</form>
			</div>
		</div>
	</div>




	<script type="text/javascript" rel="javascript">
	function askConfirm2(ProductId,productName)
	{
				console.log("dshdgsdsds");
				var response=confirm("DO YOU WANT TO DELETE RECORD OF :\t "+productName+"! ! !");
					if(response)
						{
						
						window.location="http://localhost:8080/E_COMMERCE_USING_TDD/ProductDelete.jsp?ProductId="+ProductId;
						
						
						}
	
	}
	
	</script>

	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>

</body>
</html>