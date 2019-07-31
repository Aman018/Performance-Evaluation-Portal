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
String com=request.getParameter("company");
String str1="select * from admincompany where name='"+com+"'";
Class.forName("com.mysql.jdbc.Driver");
Connection conn=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/cetpa_infotech", "root", "root");
Statement st1=conn.createStatement();
Statement st2=conn.createStatement();
String str2="delete from admincompany where name='"+com+"'";
ResultSet rs1=st1.executeQuery(str1);
int flag1=0;
while(rs1.next())
{
	flag1=1;
}
if(flag1==0)
{
	out.println("company is not present already");
}
else {
st2.executeUpdate(str2);
conn.close();

%>
company deleted Successfully.
<%}
%>
</body>
</html>