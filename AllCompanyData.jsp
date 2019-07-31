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
String str1=request.getParameter("company");
String str="Select * from company where name='"+str1+"' ";
Class.forName("com.mysql.jdbc.Driver");
Connection conn=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/cetpa_infotech", "root", "root");
Statement st=conn.createStatement();
ResultSet rs=st.executeQuery(str);
int flag=0;
while(rs.next())
{
	flag=1;
	String type=rs.getString("type");
	String name=rs.getString("name");
    out.println("NAME:- "+name+ " and "+" TYPE:- "+type);
}
if(flag==0)
	out.println("no company found:");
%>
</body>
</html>