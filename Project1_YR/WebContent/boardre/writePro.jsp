<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="java.sql.Timestamp"%>
<%@page import="board.BoardDAO"%>
<%@page import="board.BoardBean"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="jdk.nashorn.internal.ir.ForNode"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>WebContent/Boardre/writePro.jsp</h1>
<%

request.setCharacterEncoding("utf-8");

String name=request.getParameter("name");
String pass=request.getParameter("pass");
String subject=request.getParameter("subject");
String content=request.getParameter("content");

// BoardBean 객체 생성 bb
BoardBean bb=new BoardBean();


//BoardBean 멤버변수에 파라미터값 저장
bb.setName(name);
bb.setPass(pass);
bb.setSubject(subject);
bb.setContent(content);

//bb.setReadcount(0);
//조회수는 0값으로 잡아줌

// 패키지 board 파일 BoardDAO 만들기 / insertBoard(bb) 메서드 만들기

// BoardDAO 객체 생성 bdao
BoardDAO bdao = new BoardDAO();

// insertBoard(bb) 메서드 호출
bdao.finsertBoard(bb);
%>
<script type="text/javascript">
alert("글쓰기완료");
location.href="../center/notice.jsp";
</script>

</body>
</html>