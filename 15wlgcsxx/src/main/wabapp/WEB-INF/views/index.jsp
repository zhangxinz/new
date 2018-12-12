<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<meta name="description" content="">
		<meta name="author" content="">
		<title>Sign in</title>
		<!-- Bootstrap core CSS -->
		<link href="static/css/bootstrap.min.css"  rel="stylesheet">
		<!-- Custom styles for this template -->
		<link href="static/css/signin.css"  rel="stylesheet">
	</head>

	<body class="text-center">
		<form class="form-signin" action="login" method="post">
			<img class="mb-4" src="static/img/bootstrap-solid.svg"  alt="" width="72" height="72">
			<h1 class="h3 mb-3 font-weight-normal">Please sign in</h1>
			<label class="sr-only">12312323</label>
			<input type="text" name="username" class="form-control" placeholder="Username" required="" autofocus="">
			<label class="sr-only"></label>
			<input type="password" name="password" class="form-control" placeholder="Password"  required="">
			
			<button class="btn btn-lg btn-primary btn-block" type="submit" >Sign in</button>
			<button  class="btn btn-lg btn-primary btn-block" type="reset" onclick="register()" >Register</button>
			<c:if test="${not empty msg}">
			<p style="color: red">
				${msg}
			</p>
			</c:if>
			
			<p class="mt-5 mb-3 text-muted">© 2017-2018</p>
			<a class="btn btn-sm" >English</a>
			<a class="btn btn-sm" >中文</a>
		</form>
<script type="text/javascript">
     function register(){
    	 window.location.href="toresign";
     }
</script>
	</body>

</html>