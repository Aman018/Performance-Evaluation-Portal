<%@page import="jdk.internal.org.objectweb.asm.tree.TryCatchBlockNode"%>
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
String na = request.getParameter("name");
String em = request.getParameter("email");
String ps = request.getParameter("password");
String mb = request.getParameter("mobile");
String ct = request.getParameter("city");

Class.forName("com.mysql.jdbc.Driver");
Connection conn=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/jsp", "root", "root");
Statement st=conn.createStatement();
String str="insert into userinfo values('"+na+"' , '"+em+"' , '"+ps+"' , '"+mb+"' , '"+ct+"')";
st.executeUpdate(str);
conn.close();

%>
Information saved inside database.
<a href=Index.html>Click here for log in.</a>

</body>
</html>