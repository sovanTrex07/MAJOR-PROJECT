<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Login</title>
<link rel="stylesheet" type="text/css" href="Styles.css">
</head>
<%@ include file="navbar.jsp" %>
<body>

<div class="form-container">

<form action="AdminLogin" method="post">
<h3>Please Fill The Details:</h3>
<br>
<label for="aName">Name</label>

<input name="aName" id="aName" type="text" placeholder="">
<br>
<label for="aPassword">Password</label>

<input name="aPassword" id="Password" type="password" placeholder="">
<br>

<button type="submit">Login</button>

</form>
</div>

</body>
</html>