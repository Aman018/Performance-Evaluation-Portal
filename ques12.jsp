<%@ page errorPage="errorhandlerforquestion.jsp" %>
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
String ans=request.getParameter("ques12");
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection
("jdbc:mysql://127.0.0.1:3306/cetpa_infotech", "root", "root");
PreparedStatement st=con.prepareStatement("select * from ques");
ResultSet rs=st.executeQuery();
PreparedStatement st1=con.prepareStatement("update score set marks=?");
PreparedStatement st2=con.prepareStatement("select * from score");
ResultSet r1=st2.executeQuery();
int m=0;
while(rs.next())
{
if(rs.getString("quesid").equals("ques12"))
{
if(ans.equals(rs.getString("answer")))
{
	while(r1.next())
	{
	m=r1.getInt("marks");
	}
	st1.setInt(1,m+1);
	st1.executeUpdate();
%>
<h2>
CORRECT ANSWER
</h2>
<%
}
else{
%>
<h2>
INCORRECT ANSWER
</h2>

<% 
}
}
}
%>
<jsp:include page="ques130.jsp"></jsp:include>

</body>
</html>