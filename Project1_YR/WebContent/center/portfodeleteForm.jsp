<%@page import="board2.BoardBean2"%>
<%@page import="board2.BoardDAO2"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>WebContent/center/portfodeleteform.jsp</h1>

<%
String id=(String)session.getAttribute("id");

if(id==null){
	response.sendRedirect("../member/login.jsp");
}

// int num=num 파라미터 가져오기
int num = Integer.parseInt(request.getParameter("num"));

BoardDAO2 bdao=new BoardDAO2();

BoardBean2 bb2=bdao.getBoard2(num);
%>

<article>
<h1>Notice delete</h1>
<form action="portfodeletePro.jsp" method="post">
<input type="hidden" name=num value="<%=num%>">
<table id="notice">
<tr><td>글쓴이</td><td><input type="text" name="name" value="<%=id%>" readonly></td></tr>
<tr><td>비밀번호</td><td><input type="password" name="pass" required="required"></td></tr>
</table>
<div id="table_search">
<input type="submit" value="글삭제" class="btn">
<input type="button" value="글목록" class="btn" onclick="location.href='Portfolio.jsp'">
</div>
</form>
</article>