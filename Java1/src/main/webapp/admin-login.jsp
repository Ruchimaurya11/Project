<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <div id="login-page">
	  	<div class="container">
	  	
		   <form class="form-login" action="AdminController" method="post">
				<h2 class="form-login-heading">sign in now</h2>
				<div class="login-wrap">
					<input type="text" class="form-control" name="email" placeholder="email"
						autofocus> <br> 
					<input type="password" class="form-control" name="password" placeholder="Password"> 
					
					<button class="btn btn-theme btn-block" type="submit" name="action" value="login">
						<i class="fa fa-lock"></i> SIGN IN
					</button>
					<hr>

				</div>
			</form> 	
	  	
	  	</div>
	  </div>


</body>
</html>