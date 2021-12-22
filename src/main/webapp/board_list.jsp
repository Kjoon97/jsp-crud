<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="kpu.web.club.domain.*, java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel= "stylesheet" href="./resources/bootstrap.min.css">
<link rel="stylesheet" href="./resources/custom.css">
<title>Insert title here</title>
</head>
<body>
<%@ include file="header.jsp"%>
    <section class="container">
     <a class="btn btn-primary mx-1 mt-2" href="./foodevaluregister.jsp">리뷰하기</a>
       <%
         List<BoardVO> boardList = (List<BoardVO>)request.getAttribute("boardList");
         for(BoardVO vo : boardList){
       %>
       <div class="card bg-light mt-3">    <!-- 배경 흰색, 위쪽으로 3만큼 여백주기 -->
       <div class="card-header bg-light">
           <div class="row">
              <div class="col-8 text-left"><%=vo.getRestaurantname() %>&nbsp;<small> <%= vo.getFoodname() %> </small></div>
              <div class="col-4 text-right"><%=vo.getBid() %></div>
           </div>
       </div>
       <div class="card-body">
           <h5 class="card-title"><%=vo.getTitle() %></h5>
           <p class="card-text"><%=vo.getContent() %></p>
           <div class="row">
              <div class="col-9 text-left">
                  맛 <span style="color: red;"><%=vo.getTastesatisfy() %>점</span>
                  가격 <span style="color: red;"><%=vo.getPricesatisfy()%>점</span>
                  위생 <span style="color: red;"><%=vo.getCleansatisfy() %>점</span>
              </div>
              <div class="col-3 text-right">
                  <a href="http://localhost:8080/KangJoonHyuck_free/BoardServlet?cmd=update&bid=<%=vo.getBid() %>">수정</a>
                  <a onclick ="return confirm('삭제하시겠습니까?')" href="http://localhost:8080/KangJoonHyuck_free/BoardServlet?cmd=delete&bid=<%=vo.getBid() %>">삭제</a>
              </div>
           </div>
       </div>
     </div>
     
     <%
           }
      %>
             <br>
              <br>
   </section>
   <%@ include file="footer.jsp"%>
</body>
</html>