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
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection
("jdbc:mysql://127.0.0.1:3306/cetpa_infotech", "root", "root");
PreparedStatement st2=con.prepareStatement("select * from score");
ResultSet rs=st2.executeQuery();
String na="";
int flag=0;
while(rs.next())
{
	na=rs.getString("name");
	

PreparedStatement st=con.prepareStatement("select * from finalinfo");
ResultSet r=st.executeQuery();
while(r.next())
{
	if(na.equals(r.getString("name")) && r.getInt("marks")!=0)
	{
		out.println("YOU HAVE GIVEN THE EXAM");
        flag=1;
	}
}
}
if(flag==0)
{
%>
		<jsp:forward page="ques1.jsp"></jsp:forward>
<%
}
con.close();
%>
</body>
</html>