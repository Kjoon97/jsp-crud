<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="mytag" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel= "stylesheet" href="./resources/bootstrap.min.css">
<link rel="stylesheet" href="./resources/custom.css">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<link rel="stylesheet" href="./resources/restaurant.css">
</head>
<body>
<%@ include file="header.jsp"%>
<br><br>
   <div align="center">
    <h2>식당 목록</h2>
    <br><br>
    <I><mytag:print/></I>     <%--커스텀 태그이용 --%>
    <br><br>
  <section id=container>
    
    <ul class="prod-list">
      <li>
        <c:set value ="라온식당" var="res1"/>     <%--JSTL이용 --%>
        <img class='img1' src="images/res1.jpg">
        <div class="caption">
          <a href="./res_laon.jsp"><h2> ${res1} </h2></a>
          <p>종합관 1F</p>
        </div>
      </li>
      <li>
       <c:set value ="한스델리" var="res2"/>
        <img class='img2' src="images/res2.jpg">
        <div class="caption">
          <a href="./res_hansdelli.jsp"><h2>${res2}</h2></a>
          <p>팁 지하1F</p>
        </div>
      </li>
      <li>
      <c:set value ="우쿠야" var="res3"/>
        <img class='img3' src="images/res3.jpg">
        <div class="caption">
          <a href="./res_ukuya.jsp"><h2>${res3}</h2></a>
          <p>팁 지하1F</p>
        </div>
      </li>
      <li>
      <c:set value ="나드리 김밥" var="res4"/>
        <img class='img4' src="images/res4.jpg">
        <div class="caption">
          <a href="./res_naduri.jsp"><h2>${res4}</h2></a>
          <p>경기산학융합원 1F</p>
        </div>
      </li>
      <li>
       <c:set value ="토마토 도시락" var="res5"/>
        <img class='img5' src="images/res5.jpg">
        <div class="caption">
          <a href="./res_tomato.jsp"><h2>${res5}</h2></a>
          <p>경기산학융합원 1F</p>
        </div>
      </li>
      <li>
       <c:set value ="올리브 그린" var="res6"/>
        <img class='img5' src="images/res6.jpg">
        <div class="caption">
          <a href="./res_oliveGreen.jsp"><h2>${res6}</h2></a>
          <p>팁 2층</p>
        </div>
      </li>
    </ul>
    </section>
    </div>
    <br><br><br>
    <%@ include file="footer.jsp"%>
</body>
</html>