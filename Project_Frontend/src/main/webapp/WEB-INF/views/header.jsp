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
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<!-- CSS DESIGN FOR NAVBAR -->

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<!-- CSS DESIGN FOR NAVBAR -->
 <link href ="/webapp/resource/css/css.css" rel ="stylesheet" type="text/css">


<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 
<script type="text/javascript">
  

  function formSubmit()
  {
 document.getElementById("logout").submit();
  }
    </script>

</head>
<body>
<!-- Navigation Bar Coding -->

 <nav class="navbar navbar-inverse navbar- fixed-top">


<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">



  <div class="container-fluid">
  <div class="navbar-header">
    <a class="nav-btn btn-dark btn-lg accordion-toggle pull-left" 
    title="Follow Us" role="tab" id="social-collapse" data-toggle="collapse"
     data-parent="#accordion" data-target="#collapseOne" 
     aria-expanded="true" aria-controls="collapseOne">
   
    </a>
    
    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
     data-target="#navbar" aria-expanded="false" aria-controls="navbar">
			<span class="sr-only">Toggle navigation</span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
			</button>
			</div>
			
    
    
					<a id="menu-toggle" href="#" class="nav-btn btn-dark btn-lg toggle">
			
						 <i class="fa fa-bars" style="color:#fff;"></i>
						</a>
					
				<!-- NAVBAR BRAND NAME -->
				
				<div class ="container">
				<!--  <nav class = "navbar navbar-light" style = "background-color:#d9534f;">-->
				
				<!-- blue <nav class = "navbar navbar-light" style = "background-color:#73dfdc;">-->
				
				 <nav class = "navbar navbar-light" style = "background-color:#12e9ed;">
				
				
				<!-- BRAND NAME -->
  <!--   <strong><a class="navbar-brand" href="home"> Time To Shine</a></strong>-->
  
         <strong>
         <a class="navbar-brand" href="#"> Time To Shine</a>
       <!--   <img style="max-width:55px; margin-top:-15px;" src="resource/images/brandimg.jpg">-->
    
      </strong>
    
              
     
    
     <div id="navbar" class="collapse navbar-collapse">
     
        <ul class="nav navbar-nav">
      <!--<ul class ="nav nav-pills">-->
      <c:url value="/home" var="url1"> </c:url>
      <li class="active"><a href="${url1}">Home <span  class= "glyphicon glyphicon-home"></span></a></li>

  
  
       <c:url value="/admin" var="url5"></c:url>
        <li> <a href="${url5}">Admin <span class = "glyphicon glyphicon-shopping-cart"></span></a></li>
      
        <li class="dropdown">
        <c:url value="/MenCollection" var="url6"></c:url>
        <li><a href="${url6 }" class="dropdown-toogle" data-toogle="dropdown">
        Men Collection<b class="caret"></b></a></li>
        
        
        <li class="dropdown">
        <c:url value="/WomenCollection" var="url7"></c:url>
        <li><a href="${url7 }"class="dropdown-toogle" data-toogle="dropdown">
        WomenCollection<b class="caret"></b> </a></li>
      
      <c:url value="/aboutus" var="url2"></c:url>
      <li><a href="${url2}">About Us </a></li> 
      
      <!-- http://localhost:8080/E-commerce_frontend/getprpductform -->
      
      <c:url value="/getproductform" var="url3"></c:url>
      <li>
      <c:if test="${pageContext.request.userPrincipal.name !=null }">
      <security:authorize  access ="hasRole('ROLE_ADMIN')">
      <a href="${url3 }">Add Product </a>
      </security:authorize>
      </c:if>
       </li>
      
      
      <c:url value="all/product/getallproducts" var="url4"></c:url>
      <li><a href="${url4 }">Browse All Products</a></li>
      </ul> 
    
    
			
	<c:url value="/perform_logout" var="logout"/>
        <form action="${logout}"  method="post" id="logout">
        <input type="hidden" name="${_csrf.parameterName}" value="${_csfr.token}"/>
        
        </form>		  
   
        <c:if test="${pageContext.request.userPrincipal.name!=null}">
               <font size=5 color="black">welcome:${pageContext.request.userPrincipal.name}</font>
            <li class="scroll">  <a href="javascript:formSubmit()">LOGOUT</a></li>
                <security:authentication var="user" property="principal.authorities"/>
                <security:authorize var="LoggedIn" access="isAuthenticated()">
                <security:authorize access="hasRole('ROLE_ADMIN')">
               <%-- ADMIN--%>
                </security:authorize>
                 <security:authorize access="hasRole('ROLE_USER')">
               <%--USER--%>
                </security:authorize>
                </security:authorize>
                </c:if> 
               <c:if test="${pageContext.request.userPrincipal.name==null}"> 
       

               <form class="navbar-form navbar-right"> 
    <a href="RegistrationForm">Register<span class="glyphicon glyphicon-registration-mark" ></span></a>
    
   <a href="Loginform">Log In  
                    <span class="glyphicon glyphicon-user"></span> </a>
                  <br>
                  <a href="Contact">ContactUs
                  <span class="glyphicon glyphicon-earphone"></span></a>
              
              </form>
              </c:if>
              </div>
            
              
              </div>
              </nav>
             
              </nav>
               </nav> 
               
	

          
             
		
	
    <div class="container">
    <div class="row">
    <div class="col-xs-12 text-center"> 
        
        
    </div>
        
       <a href="/WEB-INF/css1/css.css" target="_blank" title="animate.css">animate.css</a> for the animations</div>
    </div>






<div class="container">
  
  <h3>
 <strong>WELCOME TO WATCH WORLD !!!!</strong>
 </h3>
</div>
</body>
</html>
              