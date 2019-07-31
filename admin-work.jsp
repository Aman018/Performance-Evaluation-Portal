<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="admin-work.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div>
<p> hi Admin!!!<p>
<p>What you want to do!!!</p>
</div>
<form action="admin-work1.jsp">
<fieldset class="fieldset" ><legend>Admin-tasks</legend>
<input type="radio" name="choice" value="1">ADD A QUESTION<br/><br/>
<input type="radio" name="choice" value="2">DELETE A QUESTION<br/><br/>
<input type="radio" name="choice" value="3">REPLACE A QUESTION<br/><br/>
<input type="radio" name="choice" value="4">ADD A COMPANY<br/><br/>

<input type="radio" name="choice" value="5">DELETE A COMPANY&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
<input type="submit" value="PROCEED"/><br/><br/>
<input type="radio" name="choice" value="6">APPROVED REVIEWS<br/><br/>
<input type="radio" name="choice" value="7">FIND A USER<br/><br/>
<input type="radio" name="choice" value="8">FIND A COMPANY<br/><br/>
</fieldset></form>

</body>
</html>