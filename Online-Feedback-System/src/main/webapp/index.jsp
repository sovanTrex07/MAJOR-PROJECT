<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Online Voting System</title>
<link rel="stylesheet" type="text/css" href="Styles.css">
</head>
<%@ include file="navbar.jsp" %>
<body>


<div class="form-container">
<form action="VoterLogin" method="post">
<h3>Fill This Form</h3>
<br>
<label for="voterNumber">Voter ID</label>

<input name="voterNumber" id="voterNumber" type="number" placeholder="">
<br>

<label for="otp">Enter OTP :</label>

<input name="otp" id="otp" type="number" value="1234">
<br>

<button type="submit">login</button>
<br>
<a href="adminlogin.jsp">Admin</a>
</form>
</div>
</body>
</html>