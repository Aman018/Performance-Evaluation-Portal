
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
String q=request.getParameter("question");
String str1="select * from Questions where question='"+q+"'";
Class.forName("com.mysql.jdbc.Driver");
Connection conn=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/cetpa_infotech", "root", "root");
Statement st1=conn.createStatement();
Statement st2=conn.createStatement();
String str2="delete from Questions where question='"+q+"'";
ResultSet rs1=st1.executeQuery(str1);
int flag1=0;
while(rs1.next())
{
	flag1=1;
}
if(flag1==0)
{
	out.println("Question is not present already");
}
else {
st2.executeUpdate(str2);
conn.close();

%>
Question deleted Successfully.
<%}
%>
<a href="index.html">HOME.</a>
</body>
</html>