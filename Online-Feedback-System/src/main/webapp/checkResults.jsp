<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.DriverManager"%>   
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>  
<%@page import="java.sql.Connection"%>  
<%@page import="java.sql.PreparedStatement"%>       
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Results</title>
<link rel="stylesheet" type="text/css" href="Styles.css">
<% 
	String a[]=new String[100];
	
	Class.forName("com.mysql.cj.jdbc.Driver");
	java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/onlineVotingdb","root","WJ28@krhps");
	PreparedStatement preparedStatement = con.prepareStatement("select parties,count(parties) as c from vote group by parties");
	ResultSet rs =((java.sql.Statement)preparedStatement).executeQuery("select parties,count(parties) as c from vote group by parties");
	
	int i=0;
	while(rs.next()){
		
		a[i] = rs.getString("c");
		i++;
	}
%>


</head>
<%@ include file="adminNavbar.jsp" %>
<body>
<div class="checkTable">
<table>
<tr>
<th>
Parties
</th>
<th>
Names
</th>
<th>
Votes
</th>
</tr>

<tr>
<td>
<img alt="BJP" src="https://crystalpng.com/wp-content/uploads/2023/05/bjp-logo-png-1024x1024.png">
</td>
<td>BJP</td>
<td><%=a[0]==null?0:a[0]%></td> 
</tr>

<tr>
<td>
<img alt="Congress" src="https://www.dailyexcelsior.com/wp-content/uploads/2021/01/Congress-party-.jpg">
</td>
<td>Congress</td>
<td><%=a[1]==null?0:a[1]%></td>
</tr>

<tr>
<td>
<img alt="CPI" src="https://www.kindpng.com/picc/m/128-1286831_cpi-logo-communist-party-of-india-hd-png.png">
</td>
<td>CPI</td>
<td><%=a[2]==null?0:a[2]%></td> 
</tr>

<tr>
<td>
<img alt="BSP" src="https://pbs.twimg.com/media/EdTr5xoUcAAXXXU.jpg">
</td>
<td>BSP</td>
<td><%=a[3]==null?0:a[3]%></td> 
</tr>

<tr>
<td>
<img alt="AAP" src="https://www.flagcolorcodes.com/data/Flag-of-Aam-Aadmi-Party.png">
</td>
<td>Aam Aadmi Party</td>
<td><%=a[4]==null?0:a[4]%></td> 
</tr>
<tr>
<td>
</table>
</div>
</body>
</html>