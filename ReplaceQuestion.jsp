<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body><% 
String ques=request.getParameter("question");
String op1=request.getParameter("option1");
String op2=request.getParameter("option2");
String op3=request.getParameter("option3");
String op4=request.getParameter("option4");
String ans=request.getParameter("answer");
String preq=request.getParameter("prequestion");
String prid=request.getParameter("preid");
Class.forName("com.mysql.jdbc.Driver");
Connection conn=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/cetpa_infotech", "root", "root");
Statement st=conn.createStatement();
//---------
String str="select * from ques";
String str1="update ques set question='"+ques+"' where question='"+preq+"'";
String str2="update ques set answer='"+ans+"' where question='"+ques+"'";
String str3="update ques set option1='"+op1+"' where question='"+ques+"'";
String str4="update ques set option2='"+op2+"' where question='"+ques+"'";
String str5="update ques set option3='"+op3+"' where question='"+ques+"'";
String str6="update ques set option4='"+op4+"' where question='"+ques+"'";
String str7="update ques set quesid='"+prid+"' where question='"+ques+"'";
//---------
ResultSet rs=st.executeQuery(str);
int c=0;
while(rs.next())
{
	if(rs.getString("question").equals(preq))
	{
	    st.executeUpdate(str1);
	    st.executeUpdate(str2);
	    st.executeUpdate(str3);
	    st.executeUpdate(str4);
	    st.executeUpdate(str5);
	    st.executeUpdate(str6);
	    st.executeUpdate(str7);
	    c=1;
	    out.println("Done");
	    break;
	}
}
if(c==0)
{
	out.println("No such question found");
}
conn.close();

%>
</body>
</html>