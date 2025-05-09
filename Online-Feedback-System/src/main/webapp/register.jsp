<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>New Registration</title>
</head>
<%@ include file="adminNavbar.jsp" %>
<body>

<div class="form-container">

<form action="RegisterVoter" method="post">
<h3>Please Fill The Details:</h3>
<br>
<label for="uName">Name</label>

<input name="uName" id="uName" type="text" placeholder="">
<br>
<label for="pNumber">Phn.Number</label>

<input name="pNumber" id="pNumber" type="number" placeholder="" >
<br>

<label for="email">Email</label>

<input name="email" id="email" type="email" placeholder="">
<br>

<label for="address">Address</label>

<textarea name="address" id="address" placeholder="" rows="4" cols="5"></textarea>
<br>

<label for="vnum">Voter Number</label>
<input name="vnum" id="vnum" type="text" placeholder="">
<br>

<label for="dob">Date Of Birth</label>
<input name="dob" id="dob" type="date" max="2007-05-09" min="1920-01-01" placeholder="">
<br>

<button type="submit">Register</button>

</form>
</div>

</body>
</html>