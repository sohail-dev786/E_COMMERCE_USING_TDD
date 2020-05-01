<%@page import="com.E_Commerce_Model.UserModel"%>
<%@page import="com.E_Commerce_DB_Connection.DB_Connection"%>
<%@page import="com.E_Commerce_Service.IDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EDIT USER</title>
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

	int userid=Integer.parseInt(request.getParameter("userId"));

	IDAO mydao=new DB_Connection();
	
	UserModel model=mydao.getUserRecordByID(userid);

%>
 
			 
			 	<div class="container">
			 	
			 		<form action="Process/editUser" method="get">
					<div >						
						<h4 >Edit User</h4>
					</div>
					<div >					
						<div class="form-group">
							<label>ID</label>
							<input type="text" class="form-control" name="uid"  value="<%=model.getU_id()%>" required readonly="readonly">
						</div>
						
						
						
						<div class="form-group">
							<label>FIRST NAME</label>
							<input type="text" class="form-control" name="fname"  value="<%=model.getU_fname()%>" required>
						</div>
						
						
						<div class="form-group">
							<label>LAST NAME</label>
							<input type="text" class="form-control"name="lname" value="<%=model.getU_lname() %>" required>
						</div>
						
						<div class="form-group">
							<label>Email</label>
							<input type="email" class="form-control" name="email" value="<%=model.getU_email() %>" required>
						</div>
						
						<div class="form-group">
							<label>PASSWORD</label>
							<input type="text" class="form-control" name="pass" value="<%=model.getU_password() %>" required>
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