<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="kpu.web.club.domain.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel= "stylesheet" href="./resources/bootstrap.min.css">
<link rel="stylesheet" href="./resources/custom.css">
<title>Insert title here</title>
<link rel = "stylesheet" href ="resources/student.css" type="text/css"></link>
</head>
<body>
    <%@ include file="header.jsp"%>
    <div align="center">
    <header>Review Update</header>
    <hr>
    <form action="http://localhost:8080/KangJoonHyuck_free/BoardServlet?cmd=update" method="post">
       <%
          BoardVO board = (BoardVO)request.getAttribute("board");
       %>
       <fieldset>
          <ul>
             <li>번호: <input type="text" name="bid" style="width:400px;" value =${param.bid} readonly ></li><br>     <%--표현 언어 사용. --%>
             <li>식당: <input type="text" name="restaurantname" style="width:400px;" value = <%= board.getRestaurantname() %>></li><Br>
             <li>음식: <input type="text" name="foodname" style="width:400px;" value= <%=board.getFoodname() %> ></li><Br>
             <li>제목: <input type="text" name="title" style="width:400px;" value= <%=board.getTitle() %> ></li><Br>
             <li>내용: <input type="text" name="content" style="width:400px; height:150px;" value= <%=board.getContent() %> ></li><Br>
             <li>
            <label for="tastesatisfy">맛 점수</label>
            <select name="tastesatisfy" >
               <option value="5"> 5점 </option>
               <option value="4"> 4점 </option>
               <option value="3"> 3점 </option>
               <option value="2"> 2점 </option>
               <option value="1"> 1점 </option>
            </select>
          </li>
          <li>
            <label for="pricesatisfy">가격 점수</label>
            <select name="pricesatisfy">
               <option value="5"> 5점 </option>
               <option value="4"> 4점 </option>
               <option value="3"> 3점 </option>
               <option value="2"> 2점 </option>
               <option value="1"> 1점 </option>
            </select>
          </li>
          <li>
            <label for="cleansatisfy">위생 점수</label>
            <select name="cleansatisfy">
               <option value="5"> 5점 </option>
               <option value="4"> 4점 </option>
               <option value="3"> 3점 </option>
               <option value="2"> 2점 </option>
               <option value="1"> 1점 </option>
            </select>
           </li>
           </ul>
       </fieldset>
       <br>
       <fieldset>
          <input type ="submit" name="submit" value ="최종수정">
          <input type="reset" name="reset" value="다시 작성">
       </fieldset>
       <br><Br>
    </form>
    </div>
     <%@ include file="footer.jsp"%>
</body>
</html>