<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <title>LOGIN PAGE</title>
    
    <script src="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.11.4/sweetalert2.all.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    
    
<style type="text/css">
	.login-form {
		width: 340px;
    	margin: 50px auto;
	}
	
    .login-form form {
    	margin-bottom: 15px;
        background: #f7f7f7;
        box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
        padding: 30px;
    }
    .login-form h2 {
        margin: 0 0 15px;
    }
    .form-control, .btn {
    	margin-top:36px;
        min-height: 38px;
        border-radius: 20px;
    }
    .btn {        
        font-size: 20px;
        font-weight: bold;
        border-radius:20px;
        background-color:#39e40e61;
    	cursor: pointer;
   
    }
    
    .btn:hover
    {
   
    	cursor: pointer;
        font-size: 20px;
        font-weight: bold;
        border-radius:20px;
        background-color:#ffffff;
    	color:#000000;
    	border:2px solid #39e40e61;
    
    }
    
    .forgot
    {
    margin-top:25px;
    }
    
    body
    {
    background-color:#39e40e61;
    
    }
    
    .create
    {
    
    margin-top:30px;
    }
    
    
</style>   
  </head>
  
  
  <body>
	
<div class="login-form">
    <form action="Process/login"  name="myform" method="post">
      
        <h2 class="text-center">LOGIN</h2>       
        <div class="form-group">
            <input type="text" class="form-control" placeholder="UserEmail" name="uemail" required="required" >
        </div>
        <div class="form-group">
            <input type="password" class="form-control" placeholder="Password" name="password" required="required">
        </div>
        <div class="form-group">
            <button type="submit" class="btn  btn-block" ">Login</button>
        </div>
        <div class="clearfix">
            <p class="text-center forgot"><a href="#" >Forgot Password?</a></p>
        </div>        
		<div  class="create">
		
		    <p class="text-center"><a href="UserRegister.jsp">Create an Account</a></p>
		</div>
    </form>

</div>


    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  </body>
  
  
  
  
  
  
  
 <!--  <script>  

onclick="validateform()
function validateform(){  
	
	
	
	console.log("inside scritp")
var name=document.myform.uemail.value;  
var password=document.myform.password.value; 


if(name=="ADMIN" && password=="ADMIN")
	{
	
	//alert("USER NAME  && PASSWORD IS CORRECT !!");
	swal ( "WELCOME" ,  "U HAVE SUCCCESSFULLY REGISTER" ,  "success" ,10000);
	
	location="http://localhost:8080/E_COMMERCE_USING_TDD/Admin.jsp";
	
	}
else
	{
	//alert("USER NAME  && PASSWORD IS CORRECT !!");

	swal ( "SORRY" ,  "USER && PASSWORD IS WRONG " ,  "error" );

	window.location="http://localhost:8080/E_COMMERCE_USING_TDD/Login.jsp";
	
	}

  
}  
</script>  
 -->
 
 
 </html>




