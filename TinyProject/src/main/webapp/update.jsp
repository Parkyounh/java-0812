<%@page import="dao.TinyDAO"%>
<%@page import="dto.TinyDTO"%>
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
request.setCharacterEncoding("utf-8"); 
String num = request.getParameter("num");
String content = request.getParameter("content");
System.out.print(num+content);
TinyDAO dao = new TinyDAO();

dao.updateOne(num,content);
response.sendRedirect("list.jsp");
%>
</body>
</html>