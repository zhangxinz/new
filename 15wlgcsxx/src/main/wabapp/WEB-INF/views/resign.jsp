<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<meta name="description" content="">
		<meta name="author" content="">
		<title>Resign</title>
		<!-- Bootstrap core CSS -->
		<link href="static/css/bootstrap.min.css"  rel="stylesheet">
		<!-- Custom styles for this template -->
		<link href="static/css/signin.css"  rel="stylesheet">
	</head>

	<body class="text-center">
		<form class="form-signin" action="regist" method="post">
			<img class="mb-4" src="static/img/bootstrap-solid.svg"  alt="" width="72" height="72">
			<h1 class="h3 mb-3 font-weight-normal">Please Resign</h1>
			<label class="sr-only"></label>
			<input type="text" name="username" class="form-control" placeholder="Username" required="" autofocus="">
			<label class="sr-only"></label>
			<input type="password" name="password" class="form-control" placeholder="Password"  required="">
			<label class="sr-only"></label>
			<input type="text" name="email" class="form-control" placeholder="Email" required="" >
			
			<button class="btn btn-lg btn-primary btn-block" type="submit" >Resign</button>
			
			<p style="color: red"></p>
			<p class="mt-5 mb-3 text-muted">© 2017-2018</p>
			<a class="btn btn-sm" >English</a>
			<a class="btn btn-sm" >中文</a>
		</form>

	</body>

</html>