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
<%
request.setCharacterEncoding("utf-8");
String num = request.getParameter("num");
TinyDAO dao = new TinyDAO();
TinyDTO dto1 = new TinyDTO(0,"");
List<TinyDTO> list= dao.selectList();

for(TinyDTO dto : list ){
	if(dto.getNum() == Integer.parseInt(num)){
		dto1 = dto;
	}
	

}
String content =dto1.getContent();

%>
<form method="get">
    <table>
        <tr>
            <th class="num">번호</th>
            <th class="content">내용</th>
        </tr>
        <tr>
            <td>
                <%=dto1.getNum()%>
                <input type="hidden" name="num" value="<%=dto1.getNum()%>">
            </td>
            <td>
                <input type="text" name="content" value="<%=dto1.getContent()%>">
            </td>
        </tr>
    </table>

    <input type="button" value="목록보기" onclick="location.href='list.jsp'">
    <input type="submit" value="수정" formaction="update.jsp">
    <input type="submit" value="삭제" formaction="delete.jsp">
</form>

</html>