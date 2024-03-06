<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>password change</title>
</head>
<body style="background-image: url('41.jpg');
 background-size:cover;
 background-position:center; 
 background-repeat:no-repeat; 
 background-origin: content-box;
 background-attachment: fixed;">
 
	<table align="center" style="border: 2px solid black; margin-top:200px;
	   border-radius:15px; padding:10px;">
		<tr>
			<td><h1 style="color: red"><%=request.getAttribute("msg")%></h1></td>
		</tr>
		<tr>
			<td> <a href="index.jsp" style="background:green; margin-left:130px; font-size: 30px;color:black" >Sign In</a> </td>
		</tr>
	</table>
</body>
</html>