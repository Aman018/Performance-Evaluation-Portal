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

String ma3=request.getParameter("marks1");
int ma1=Integer.parseInt(ma3);
String ma4=request.getParameter("marks2");
int ma2=Integer.parseInt(ma4);
String qa=request.getParameter("qualification");
String su=request.getParameter("subject");
String pa=request.getParameter("year");
String ge=request.getParameter("gender");
Class.forName("com.mysql.jdbc.Driver");
Connection conn=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/cetpa_infotech", "root", "root");
String str1="select * from finalinfo where qualification='"+qa+"' and subject='"+su+"' and year='"+pa+"' and gender='"+ge+"'";
Statement st=conn.createStatement();
ResultSet rs=st.executeQuery(str1);
int ma=0;
int flag=0;
while(rs.next())
{
	ma=rs.getInt("marks");
	if(ma>=ma1 && ma<=ma2)
	{
		flag=1;
	%>
	NAME        : <%=rs.getString("name") %><br>
   EMAIL        : <%=rs.getString("email") %><br>
  MOBILE        : <%=rs.getString("mobile") %><br>
  QUALIFICATION : <%=qa %><br>
    MARKS       : <%=ma %><br><br>
    <%
}
}if(flag==0)
{
	out.println("NO SUCH STUDENT");
}
conn.close();

%>
</body>
</html>