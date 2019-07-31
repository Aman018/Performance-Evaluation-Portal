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
String admin_name=request.getParameter("admin_name");
String admin_enroll=request.getParameter("admin_enroll");
String admin_pass=request.getParameter("admin_password");
Class.forName("com.mysql.jdbc.Driver");

//2# get object of connection
Connection conn = DriverManager.getConnection
		("jdbc:mysql://127.0.0.1:3306/cetpa_infotech", "root", "root");
Statement st=conn.createStatement();
String query="select * from admin";
 ResultSet rs=st.executeQuery(query);
 while(rs.next())
 {
	String admin=rs.getString("admin_name");
	String enroll=rs.getString("admin_enroll");
	String password=rs.getString("admin_password");
	int flag=0;
	if(admin.equalsIgnoreCase(admin_name))
	{
		if(enroll.equalsIgnoreCase(admin_enroll))
		{
			if(password.equals(admin_pass))
			{ flag=1;%>
			<jsp:forward page="admin-work.jsp"></jsp:forward>
			<%}
		}
	}
	if(flag==0)
	 out.println("invalid user");
 }
conn.close();
%>

</body>
</html>