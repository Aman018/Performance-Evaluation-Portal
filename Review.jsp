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
String na=request.getParameter("name");
Class.forName("com.mysql.jdbc.Driver");
Connection conn=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/cetpa_infotech", "root", "root");
PreparedStatement s1=conn.prepareStatement("insert into allreviews values('"+na+"','"+re+"')");
String word2="harami";
String word3="chu";
String word1="fuck";
String word4="chod";
String word5="bloody";
if(re.toLowerCase().indexOf(word1.toLowerCase()) != -1 || re.toLowerCase().indexOf(word5.toLowerCase()) != -1 || re.toLowerCase().indexOf(word2.toLowerCase()) != -1 || re.toLowerCase().indexOf(word3.toLowerCase()) != -1 ||re.toLowerCase().indexOf(word4.toLowerCase()) != -1)
   {
	out.println("thanks");
   }
else
    {
	s1.executeUpdate();
	out.println("Review added");
	out.println("thanks");
    }
conn.close();

%>
<a href="index.html">HOME.</a>
</body>
</html>