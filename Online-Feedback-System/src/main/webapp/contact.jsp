<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ConatctUs</title>
<link rel="stylesheet" type="text/css" href="Styles.css">
</head>
<%@ include file="navbar.jsp" %>
<body>
<div class="form-container">

<form action="Contact" method="post">
<h3>Please Fill The Details:</h3>
<br>
<label for="uName">Name</label>

<input name="uName" id="uName" type="text" placeholder="">
<br>
<label for="pNumber">Phn.Number</label>

<input name="pNumber" id="pNumber" type="number" placeholder="">
<br>

<label for="email">Email</label>

<input name="email" id="email" type="email" placeholder="">
<br>

<label for="comment">Comment</label>

<textarea name="comment" id="comment" placeholder="" rows="4" cols="5"></textarea>
<br>

<button type="submit">Submit</button>

</form>
</div>

</body>
</html>