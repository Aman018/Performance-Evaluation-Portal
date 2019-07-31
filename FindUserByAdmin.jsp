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
String na=request.getParameter("name");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/cetpa_infotech", "root", "root");
PreparedStatement s1=con.prepareStatement("select * from userinfo where name='"+na+"'");
ResultSet rs=s1.executeQuery();
int flag=0;
while(rs.next())
{
	flag=1;
	String name=rs.getString("name");
	String email=rs.getString("email");
	String gender=rs.getString("gender");
	String mobile=rs.getString("mobile");
	String subject=rs.getString("subject");
	String qualification=rs.getString("qualification");
	String year=rs.getString("year");

%><h2>
NAME           : <%=name %><br>
EMAIL          : <%=email %><br>
GENDER         : <%=gender %><br>
MOBILE         : <%=mobile %><br>
SUBJECT        : <%=subject %><br>
QUALIFICATION  : <%=qualification %><br>
YEAR OF PASSING: <%=year %><br>
</h2>


<% 
}
if(flag==0)
	out.println("no record found");
   con.close();
%>

<a href="index.html">HOME.</a>
</body>
</html>