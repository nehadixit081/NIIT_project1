<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
  
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<link href="/WEB-INF/CSS/CSS FOR LOGIN" rel="stylesheet" type="text/css">

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<title>Login Form</title>
</head>
<body>
<jsp:include page="header.jsp"/>


<c:if test ="${not empty error }">
<div class="error">${error}</div>
</c:if>
<c:if test ="${not empty msg }">
<div class="msg">${msg }</div>
</c:if>

 <form name='/loginform'action="<c:url value='/Loginform'/>" method='POST'>
 
<div class="container">
    <div class="row">
        <div class="col-sm-6 col-md-4 col-md-offset-4">
           <!--  <h1 class="text-center login-title"> LOGIN </h1> -->
          
             <center> <h3><span class="glyphicon glyphicon-lock"></span> Login</h3></center>
             
            <div class="account-wall">
            
            <center>
                <%-- <img class="img-circle" src="resource/images/img_avatar2.png"alt="Avatar" class="avatar"width="200" height="auto">--%> 
               <img class="img-circle" src="resource/images/img_avatar6.png"alt="Avatar" class="avatar"width="200" height="auto">
               </center>
                    <form class="form-Login">
              
              
                <label for="username"><span class="glyphicon glyphicon-user"></span> Username</label>
                <input type="text" class="form-control" name="Username" placeholder="Email" required autofocus>
               
                <label for="password"><span class="glyphicon glyphicon-eye-close"></span> Password</label>
                <input type="password" class="form-control"  name="Password" placeholder="Password" required>
                
                <button type="submit" class="btn btn-lg btn-primary btn-block" >
               <span class="glyphicon glyphicon-off"></span> Login</button>
                 
                 </div>
                  
              <label class="checkbox pull-left">
                    <input type="checkbox" value="remember-me">Remember me</label>
                
                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                <a href="#" class="pull-right need-help">Forget Password ? </a><span class="clearfix"></span>
                <a href="RegistrationForm" class="text-center new-account">Create an account </a>
               
                </div>
                </div>
                </div>
                </form> 

</body>
</html>