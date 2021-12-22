<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel= "stylesheet" href="./resources/bootstrap.min.css">
<link rel="stylesheet" href="./resources/custom.css">
<link rel = "stylesheet" href ="resources/student.css" type="text/css"></link>
<title>Insert title here</title>
</head>
<body>
   <%@ include file="header.jsp"%>
  <div align="center">
  <section class="container">
    <form action="http://localhost:8080/KangJoonHyuck_free/BoardServlet?cmd=registerboard" method="post">
     <br>
     <br>
     <fieldset>
        <header>food review</header>
        <ul class="myul">
          <li>식당 :<input type="text" name="restaurantname" style="width:400px;" autofocus required placeholder="공백없이 입력하세요"></li><br>
          <li>음식 :<input type="text" name="foodname" style="width:400px;" autofocus required placeholder="공백없이 입력하세요"></li><br>
          <li>제목 :<input type="text" name="title" style="width:400px;" autofocus required placeholder="공백없이 입력하세요"></li><br>
          <li>내용 :<input type="text" name="content" style="width:400px; height:150px;" autofocus required placeholder="공백없이 입력하세요"></li><br>
          <li>
            <label for="tastesatisfy">맛 점수</label>
            <select name="tastesatisfy">
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
       <input type="submit" name="submit" value="작성 완료">
       <input type="reset" name="reset" value="다시 작성">
     </fieldset>
     </form>
    </section> 
    
  </div>
  <br><br><br>
   <%@ include file="footer.jsp"%>
</body>
</html>