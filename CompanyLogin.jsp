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
String name=request.getParameter("name");
String password=request.getParameter("password");
Class.forName("com.mysql.jdbc.Driver");
Connection conn=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/cetpa_infotech", "root", "root");
String str1="select * from company where name='"+name+"' and password='"+password+"' ";
Statement st=conn.createStatement();
ResultSet rs=st.executeQuery(str1);
int flag=0;
while(rs.next())
{	flag=1;
	String str2="select * from admincompany where name='"+name+"'";
	Statement st2=conn.createStatement();	
	ResultSet rs2=st2.executeQuery(str2);
	if(rs2.next())
	{
	flag=2;%>
	<jsp:forward page="CompanyDashboard.html"></jsp:forward>
	<%}
}
	if(flag==0)
	{out.println("sign up first");
	
	%>
	<a href="CompanySignUp.html">CLICK HERE FOR SIGNUP</a>
	<%}
	if(flag==1)
	{out.println("You are not authorized");}%>
	




</body>
</html>