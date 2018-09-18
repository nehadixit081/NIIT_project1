<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
     <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
     <%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<link href ="/webapp/resource/CSS CONTACT/CSS.css" rel ="stylesheet" type="text/css">

<link href="https://fonts.googleapis.com/css?family=Oswald:700|Patua+One|Roboto+Condensed:700" rel="stylesheet">
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">

<%--BOOTSTRAP CDN --%>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
          <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
         <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 
 <section id="contact" class="content-section text-center">
        
</head>
<body>
<form:form action="savecontact" method="post" commandName="contact" modelAttribute="contact1">
<div class="contact-section">
            <div class="container">
              <h2>Feedback</h2>
              
              <div class="row">
                <div class="col-md-8 col-md-offset-2">
                  <form class="form-horizontal">
                    <div class="form-group">
                      <label for="Name">Name</label>
              <input type="text" class="form-control" name="Name" id="Name"  placeholder="Enter your Name"/>
                    </div>
                    <div class="form-group">
                      <label for="Email">Email</label>
                     <input type="text" class="form-control" name="email" id="email"  placeholder="Enter your Email"/>
                    </div>
                    <div class="form-group ">
                      <label for="Your Feedback">Your Feedback</label>
                     
                <textarea  class="form-control"name="description" id="description" placeholder="Description"></textarea>
                    </div>
                    <button type="submit" class="btn btn-default">Send Feedback</button>
                  </form>
                  

                  <hr>
                    <h3>Our Social Sites</h3>
                     <ul class="list-inline banner-social-buttons">
                    <li><a href="#" class="btn btn-default btn-lg"><i class="fa fa-twitter"> <span class="network-name">Twitter</span></i></a></li>
                    <li><a href="#" class="btn btn-default btn-lg"><i class="fa fa-facebook"> <span class="network-name">Facebook</span></i></a></li>
                    <li><a href="#" class="btn btn-default btn-lg"><i class="fa fa-youtube-play"> <span class="network-name">Youtube</span></i></a></li>
                  </ul>
                </div>
              </div>
            </div>
        </div>
      </section>
</form:form>
</body>
</html>
