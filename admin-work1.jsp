<%@ page errorPage="AdminErrorHandler.jsp" %>
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

String value=request.getParameter("choice");
if(value.equals("1"))
{%>

	<jsp:forward page="AddQuestion.html"></jsp:forward>
<%
  } else if(value.equals("2"))
  {
	%>
	<jsp:forward page="DeleteQuestion.html"></jsp:forward>
<%
  }
  else if(value.equals("3"))
  {
  %>
  <jsp:forward page="ReplaceQuestion.html"></jsp:forward>
<%}else if(value.equals("4"))
  {
	%>
	<jsp:forward page="AddCompany.html"></jsp:forward>
<%
  }  else if(value.equals("5"))
  {
	%>
	<jsp:forward page="DeleteCompany.html"></jsp:forward>
<%
  }else if(value.equals("6"))
  {
  %>
  <jsp:forward page="ApprovedReviews.jsp"></jsp:forward>
  <%
  }
  else if(value.equals("8"))
  {
  %>
  <jsp:forward page="AllCompanyData.html"></jsp:forward>
  <%
  }  else if(value.equals("7"))
  {
  %>
  <jsp:forward page="FindUserByAdmin.html"></jsp:forward>
  <%
  }  %>
  



</body>
</html>