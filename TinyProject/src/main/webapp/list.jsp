<%@page import="dto.TinyDTO"%>
<%@page import="java.util.List"%>
<%@page import="dao.TinyDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <style>
        table     { width:680px; text-align:center; }
        th        { background-color:cyan; }
        
        .num      { width: 80px; }
        .title    { width:230px; }
        .writer   { width:100px; }
        .regtime  { width:180px; }
                
        a:link    { text-decoration:none; color:blue; }
        a:visited { text-decoration:none; color:gray; }
        a:hover   { text-decoration:none; color:red;  }
        
    </style>
    <style type="text/css">
table, th, td {
border: 1px solid #ccc;
border-collapse: collapse;
}
th, td {padding: 10px 20px;}
</style>
    
</head>
<body>
<table>
	<tr>
        <th class="num"    >번호    </th>
        <th class="content"  >내용    </th>
    </tr>
<%
TinyDAO dao = new TinyDAO();
List<TinyDTO> list = dao.selectList();

for(TinyDTO dto : list) {
	%>
	  <tr>
    	<td><a href="view.jsp?num=<%=dto.getNum() %>"><%=dto.getNum() %></a></td>
    	<td><%=dto.getContent()%></td>
    </tr>
	<%
}

%>
	
</table>
<button type="button" onclick="location.href='insertForm.jsp'">글쓰기</button>
</body>
</html>