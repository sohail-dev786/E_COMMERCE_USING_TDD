<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

<title>LOGIN PAGE</title>

<script
	src="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.11.4/sweetalert2.all.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>



</head>


<style>




</style>


<body>

	<jsp:include page="Navigation_Header.jsp"></jsp:include>



	<main class="d-flex align-items-center" style="height: 90vh">
		<div class="container">
			<div class="row">
				<div class="col-md-4 offset-md-4">
					<form action="Process/login" name="myform" method="post">


						<div class="card text-center ">
							<div class="card-header ">

								<span class="fa fa-user-circle fa-4x fa-spin "></span>
								<h2>Login</h2>

							</div>



							<div class="card-body">

								<form action="Process/login" method="post">
									<div class="form-group">
										<label for="exampleInputEmail1" class="font-weight-bold">Email address</label> <input
											type="text" class="form-control" name="uemail"
											placeholder="Enter User Email" id="exampleInputEmail1">

									</div>

									<div class="form-group">
										<label for="exampleInputPassword1" class="font-weight-bold">Password</label> <input
											type="password" class="form-control" name="password"
											id="exampleInputPassword1" placeholder="Enter Password">
									</div>

									<button type="submit"
										class="btn btn-info waves-effect waves-light ">Submit</button>
								</form>
							</div>


							<div class="card-footer">

								<div class="clearfix">
									<p class="text-center forgot">
										<a href="#">Forgot Password?</a>
									</p>
								</div>
								
								<div class="create">

									<p class="text-center">
										<a href="UserRegister.jsp">Create an Account</a>
									</p>
								</div>


							</div>


						</div>
					</form>

				</div>



			</div>


		</div>
	</main>



	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
</body>


</html>




