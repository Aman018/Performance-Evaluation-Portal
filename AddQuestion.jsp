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
String qu=request.getParameter("question");
String o1=request.getParameter("option1");
String o2=request.getParameter("option2");
String o3=request.getParameter("option3");
String o4=request.getParameter("option4");
String ans=request.getParameter("answer");

Class.forName("com.mysql.jdbc.Driver");
Connection conn=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/cetpa_infotech", "root", "root");
Statement st1=conn.createStatement();
Statement st2=conn.createStatement();
String str1="select * from Questions where question='"+qu+"'";

ResultSet rs1=st1.executeQuery(str1);
int flag=0;
while(rs1.next())
{
	flag=1;
}
if(flag==0)
{
String str2="insert into Questions values('"+qu+"' , '"+o1+"' , '"+o2+"' , '"+o3+"' , '"+o4+"','"+ans+"')";
//String str2="insert into ques values('"+qu+"' ,'"+ans+"', '"+o1+"' , '"+o2+"' , '"+o3+"' , '"+o4+"')";

st2.executeUpdate(str2);
out.println("Question added inside database.");
conn.close();
%>
<a href="AddQuestion.html">Click Here to add more questions.</a>
<%
}
else {out.println("question is already present ...");
conn.close();
%>
<a href="AddQuestion.html">Click Here to add again.</a>
<%} %>
 


<a href="index.html">HOME.</a>
</body>
</html>