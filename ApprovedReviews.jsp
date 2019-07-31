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
String re=request.getParameter("review");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/cetpa_infotech", "root", "root");
PreparedStatement s1=con.prepareStatement("select * from allreviews");
ResultSet rs=s1.executeQuery();
while(rs.next())
{
	String na=rs.getString("name");
	String rev=rs.getString("review");
	%> <h2><% out.println(na+ ":-"+ rev);%></h2><% 
	out.println("<br>");
}


%>
</body>
</html>