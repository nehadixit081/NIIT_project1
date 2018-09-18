<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
   <%@ taglib prefix="security" uri="http://www.springframework.org/security/tags"%>
    <%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ page isELIgnored ="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- 

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">-->

<!-- jQuery library
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script> -->

<!-- Latest compiled JavaScript 
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>-->

<title>Insert title here</title>
</head>
<body>
 <jsp:include page="header.jsp"/>

  <!-- CAROUSEL BAR CODING !! -->

<div class="container">
   
      <div id="myCarousel" class="carousel slide" data-ride="carousel">
 
   <!-- <div class="carousel fade-carousel slide" data-ride="carousel" data-interval="4000" id="bs-carousel">-->
    
    <!-- Indicators -->
    
     <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
     </ol>

    <!-- Wrapper for slides -->
    
   <!--<div class="carousel-inner" role ="listbox"> --> 
   
      <!--FIXED THE SIZE OF CAROUSEL IMAGES  -->
   <div class="carousel-inner" role="listbox" style=" width:100%; height: 600px !important;">


  
      <div class="item active">
       
     
  <img src="resource/images/img1.jpg" class="img-responsive" alt="Product1" max-width="200%" height="auto">
      </div>

      <div class="item">
   <img src="resource/images/img2.jpg" class="img-responsive" alt="Product2" max-width="100%" height="auto">
      </div>
    
      <div class="item">
   <img src="resource/images/img3.jpg"  class="img-responsive" alt="Product3" max-width="100%" height="auto">
      </div>
      <div class="item">
   <img src="resource/images/img4.jpg"  class="img-responsive" alt="Product4" max-width="100%" height="auto">
      </div> 
      
    </div>
    

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>


<%-- BY THIS CODE IMAGE IS SHOWING BELOW THE CAROUSEL --%>

  <br/><br/><br/><br/>
<c:forEach var="prod" items="${listProduct}">
<td><%-- <c:if test="${prod.category.categoryName =='watch'}"> --%><a href="showproduct/${prod.id}">
<div class="col-md-4">
<img src = "<c:url value ='/resource/images/${prod.id}.jpg'/>" height="200" width="200"/></a><br>
<c:url var="action" value="/product1"></c:url>

<form:form action="${action}" modelAttribute="cart">
<td id="td1"><i>Product name is<c:out value="${prod.name}" />
<td id="td1"><i>product price is<c:out value="${prod.price}" />
<input type="submit" class="btn btn-primary" value="Add To Cart" />
</form:form></td>
</div>





<%-- <a href="<c:url value='/viewDetails?id=${prod.id}' />" class ="btn btn-success" >View</a> --%><%-- </c:if> --%></td>


</c:forEach>​


</body>
</html>



   <%--   <%-- <div class="item active">--%> 
      <!-- Media bottom -->
    <%-- <div class="media">
  <div class="media-left media-bottom">
  <a class="media-left media-bottom" href="#">
    <img src="/resource/images/${product.id}.jpg" class="media-object" style="width:60px">
    <img src="resource/images/${product.id}.jpg" class="media-object" style="width:60px">
    <img src="resource/images/${product.id}.jpg" class="media-object" style="width:60px">
     <img src="resource/images/${product.id}.jpg" class="media-object" style="width:60px">
       </a>
  </div>

<img src="resource/images/${product.id}.jpg" class="ïmage-responsive" height="60" width="60"/>
<img src="resource/images/${product.id}.jpg" class="ïmage-responsive" height="60" width="60"/>
<img src="resource/images/${product.id}.jpg" class="ïmage-responsive" height="60" width="60"/>
<img src="resource/images/${product.id}.jpg" class="ïmage-responsive" height="60" width="60"/>
</div> --%>



