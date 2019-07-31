<%@ page errorPage="ComapnySignUpErrorHandler.jsp" %>
<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 
String com=request.getParameter("company_name");
String type=request.getParameter("company_type");
String pass=request.getParameter("company_password");
String str1="insert into company values('"+com+"','"+pass+"','"+type+"')";
Class.forName("com.mysql.jdbc.Driver");
Connection conn=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/cetpa_infotech", "root", "root");
Statement st1=conn.createStatement();
st1.executeUpdate(str1);
conn.close();
out.println("company has been added");
%>
<br>
<br><a href="CompanyLogin.html"> Click Here To LogIn.</a>
</body>
</html>