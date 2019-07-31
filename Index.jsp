<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String em=request.getParameter("email");
String pa=request.getParameter("password");

Class.forName("com.mysql.jdbc.Driver");
Connection conn=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/jsp", "root", "root");
Statement st1=conn.createStatement();
String str1="select * from userinfo where email='"+em+"' and password='"+pa+"'";
ResultSet rs=st1.executeQuery(str1);
if(rs.next())
{
	%>
	<jsp:forward page="Welcome.html"></jsp:forward>
<% }
else
{
	%><h2>Invalid Email/Password</h2>
	<jsp:forward page="Index.html"></jsp:forward>
<%}
%>

</body>
</html>