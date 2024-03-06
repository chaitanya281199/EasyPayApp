<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="spr"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
 td{
    font-size: 27px;
 }
.c{
		display: flex;
		align-items:center;
		justify-content:center;
		 margin-top: 320px;
	
	}
	.b{
		
		margin-right: 100px;
		margin-top: 150px;
	}
	.d{
		box-shadow: 5px 5px 2px blue;
		border-radius: 20px;
		background:;	
		opacity: 0.7;
		font-size: 25px;
	}
	.d:hover {
	opacity: 1.0;
}
body{
background-image: url('37.jpg');
 background-size:cover;
 background-position:center; 
 background-repeat:no-repeat; 
 background-origin: content-box;
 background-attachment: fixed;
 
}
.c1{
   font-size: 25px;
}
table{
		text-align: center;
		border: 2px solid black;
		 margin-top: 50px;
	 margin-left:50px;
	 margin-top:12px;
	 margin-right:330px; 
	 border-collapse: separate; 
	 border-spacing: 15px;
	 border-radius: 20px;
	 box-shadow: 5px 5px 2px black;
	align-items:center;
		justify-content:center;
		margin-left: 340px;
		background: rgba(0, 0, #fff, 0.1);
}
</style>
</head>
<body>

<div class="c" >
 
 
  <spr:form action="Adm_offer_update.htm" method="post" commandName="offer" >
	<spr:hidden path="offerId" />
	<table align="center" >
		<tr>
			<td>
				Plan :
			</td>
			<td>
				<spr:input path="plan" class="c1"/>
			</td>
		</tr>
		<tr>
			<td>
				Validity:
			</td>
			<td>
				<spr:input path="validity" class="c1"/>
			</td>
		</tr>
		<tr>
			<td>
				Benefits:
			</td>
			<td>
				<spr:input path="Benefits" class="c1"/>
			</td>
		</tr>
		<tr>
			<td>
				<a class="c1" href="AdminHome.jsp" >Back</a>
			</td>
			<td>
				<input class="d" type="submit"  value="Update Offer" >
			</td>
		</tr>
	</table>
	</spr:form>
	</div>
</body>
</html>