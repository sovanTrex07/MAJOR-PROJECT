<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome Voter</title>
</head>
<%@ include file="navbar.jsp" %>
<body>
<div class="form-container">

<form action="Vote" method="post">
<h3>Please Fill The Details:</h3>
<br>
<br>
<label for="voterNumber">Voter ID</label>

<input name="voterNumber" id="voterNumber" type="number" placeholder="">
<br>
<label for="partie">Choose a partie:</label>

<select name="partie" id="partie">

  <option value="aap">Aam Admi Party</option>
  <option value="bjp">BJP</option>
  <option value="bsp">BSP</option>
  <option value="cong">Congress</option>
  <option value="cpi">CPI</option>
  
</select>
<br>
<button type="submit">submit</button>
</form>
</div>

</body>
</html>