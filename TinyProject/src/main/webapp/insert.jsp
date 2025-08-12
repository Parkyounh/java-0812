<%@page import="dto.TinyDTO"%>
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
String str = request.getParameter("content");

TinyDAO dao = new TinyDAO();
dao.insertOne(new TinyDTO(0,str));
response.sendRedirect("list.jsp");
%>

</body>
</html>