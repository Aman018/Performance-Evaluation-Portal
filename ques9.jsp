<%@ page errorPage="errorhandlerforquestion.jsp" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.* "%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
Class.forName("com.mysql.jdbc.Driver");
Connection conn=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/cetpa_infotech", "root", "root");
PreparedStatement st=conn.prepareStatement("select * from ques");
ResultSet rs=st.executeQuery();
while(rs.next())
{
	if((rs.getString("quesid")).equals("ques9"))
	{
		String q=rs.getString("question");
	    String op1=rs.getString("option1");
	    String op2=rs.getString("option2");
	    String op3=rs.getString("option3");
	    String op4=rs.getString("option4");
	
    %>
    <form action="ques09.jsp" method="post">
    <h2>
<feildset>
<br><%=q %><br>
  <input type="radio" name="ques9" value="<%=op1%>"> <%=op1%><br>
  <input type="radio" name="ques9" value="<%=op2%>"> <%=op2%><br>
  <input type="radio" name="ques9" value="<%=op3%>"> <%=op3%><br>
  <input type="radio" name="ques9" value="<%=op4%>"> <%=op4%><br>
  <input type="submit" value="next">
</feildset>
</h2>
</form>
<%
	
	}
}
conn.close();
%>

</body>
</html>