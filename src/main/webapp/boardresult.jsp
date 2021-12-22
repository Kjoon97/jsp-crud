<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="kpu.web.club.domain.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel= "stylesheet" href="./resources/bootstrap.min.css">
<link rel="stylesheet" href="./resources/custom.css">
</head>
<body>
   <%@ include file="header.jsp"%>
  <br>
  <div>
     <%
        BoardVO board = (BoardVO)request.getAttribute("board");
     %>
  </div>
  <section class="container">
   <h3><%=request.getAttribute("greetings") %></h3>
  <div class="card bg-light mt-3">    <!-- 배경 흰색, 위쪽으로 3만큼 여백주기 -->
       <div class="card-header bg-light">
           <div class="row">
              <div class="col-8 text-left"><%= board.getRestaurantname() %>&nbsp;<small><%= board.getFoodname() %></small></div>
           </div>
       </div>
       <div class="card-body">
           <h5 class="card-title"><%= board.getTitle() %></h5>
           <p class="card-text"><%= board.getContent() %></p>
           <div class="row">
              <div class="col-9 text-left">
                  맛 <span style="color: red;"><%= board.getTastesatisfy() %>점</span>
                  가격 <span style="color: red;"><%= board.getPricesatisfy() %>점</span>
                  위생 <span style="color: red;"><%= board.getCleansatisfy() %>점</span>
              </div>
           </div>
       </div>
     </div>
     <Br><Br>
     <div>
	<a href="http://localhost:8080/KangJoonHyuck_free/BoardServlet?cmd=boardlist" target="_self"><h4>전체 리뷰 목록 보기</h4></a>
	</div>
	<br><br><br><br><Br><Br>
     </section>
	<%@ include file="footer.jsp"%>
</body>
</html>