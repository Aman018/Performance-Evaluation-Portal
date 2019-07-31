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
String comp=request.getParameter("company");

Class.forName("com.mysql.jdbc.Driver");
Connection conn=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/cetpa_infotech", "root", "root");
PreparedStatement st1=conn.prepareStatement("select * from company");
PreparedStatement st3=conn.prepareStatement("select * from admincompany");
PreparedStatement st2=conn.prepareStatement("insert into admincompany values('"+comp+"')");
ResultSet rs = st1.executeQuery();
int c=0;
ResultSet rs1=st3.executeQuery();
while(rs.next())
{
	String n = rs.getString("name");
    if(n.equalsIgnoreCase(comp))
    { 
    	while(rs1.next())
    {
    	if(comp.equalsIgnoreCase(rs1.getString("name")))
    	{
       
    	   out.println("already present");
    	
    	c=2;
    	}
    	
       }if(c!=2){
    	 st2.executeUpdate();
    	 out.println("Added");
    	 c++;}
    }
}
if(c==0){
out.println("not found");
}
conn.close();

%><a href="index.html">HOME.</a>
</body>
</html>