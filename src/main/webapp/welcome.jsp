<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="kpu.web.club.domain.*, java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel= "stylesheet" href="./resources/bootstrap.min.css">
<link rel="stylesheet" href="./resources/custom.css">
<title>Web Service Programming Homework</title>
<link rel="stylesheet" href="resources/welcome.css" type="text/css"></link>
<title>Insert title here</title>
</head>
<body>
<%@ include file="header.jsp"%>
  <section id=container>
  <div>
       <div id = "leftmenu">
         <h2 id ="leftmessage"><a href="http://localhost:8080/KangJoonHyuck_free/BoardServlet?cmd=boardlist">음식 리뷰하기</a></h2>
       </div>
       <div id = "rightmenu">
         <h2 id ="rightmenu"><a href= "http://localhost:8080/KangJoonHyuck_free/restaurant.jsp">메뉴 조회하기</a></h2>
       </div>
  </div>
  </section>
   
     <%@ include file="footer.jsp"%>
</body>
</html>