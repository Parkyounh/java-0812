<%@page import="dao.TinyDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String num=request.getParameter("num");

TinyDAO dao = new TinyDAO();
dao.deleteOne(num);
System.out.println(num);
response.sendRedirect("list.jsp");
%>

</body>
</html>