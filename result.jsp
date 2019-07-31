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
<h2>
YOUR SCORE IS :
<br>
<% 
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection
("jdbc:mysql://127.0.0.1:3306/cetpa_infotech", "root", "root");
PreparedStatement st=con.prepareStatement("select * from score");
ResultSet rs=st.executeQuery();
int a=0;
while(rs.next())
{
	a=rs.getInt("marks"); 
}
out.println(a+"/10");
String grade="";
if(a>=8)
{
	grade="A";
}
else if(a>=5 && a<8)
{
   grade="B";
}
else if (a>=2 && a<5)
{	
	grade="C";
}
else if(a>=1 && a<2)
{
	grade="D";
}
else
{
	grade="E";
}
String na="";
String em="";
int ma=0;
%><br>
YOUR GRADE IS :<%=grade %><br>
<%
PreparedStatement st2=con.prepareStatement("select * from score");
ResultSet rs1=st2.executeQuery();
while(rs1.next())
{
	na=rs1.getString("name");
	em=rs1.getString("email");
	ma=rs1.getInt("marks");
}
%>
STUDENT NAME :<%=na %><br>
STUDENT EMAIL :<%=em %><br>
<%
PreparedStatement st3=con.prepareStatement("update finalinfo set marks=?,grade=? where name=?");
st3.setInt(1,ma);
st3.setString(2,grade);
st3.setString(3,na);
st3.executeUpdate();
con.close();
%>

<a href="Review.html" ><h2>Click here to give your review.</h2><br><br>
<a href="index.html">HOME.</a>

</h2>
</body>
</html>