<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>   
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
"http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

		
		 <link href ="/webapp/resource/CSS REG/CSS.css" rel ="stylesheet" type="text/css">
		
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
          <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
         <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


	<!-- Website Font style -->
	    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css">
		<link rel="stylesheet" href="style.css">
		<!-- Google Fonts -->
		<link href='https://fonts.googleapis.com/css?family=Passion+One' rel='stylesheet' type='text/css'>
		<link href='https://fonts.googleapis.com/css?family=Oxygen' rel='stylesheet' type='text/css'>
		
         <title>Registration</title>
           </head>

		
	<body>
		<div class="container">
			<div class="row main">
				<div class="main-login main-center">
				<center>
				<strong>
				<h3>Registration</h3>
				</strong>
				</center>
				   <%--   <c:url var="saveuser" value ="url8"></c:url>
            <form:form action="${url8}"  commandName="user" modelAttribute="user1" enctype="multipart/form-data" method ="post"> 	--%>
 
 <%--  <form:form action="saveuser" method="post" commandName="user" modelAttribute="user1"enctype="multipart/form-data">--%> 
 <form:form action="saveuser" method="post" commandName="user" modelAttribute="user1">

        <table border="0">
						
						<div class="form-group">
							<label for="name" class="cols-sm-2 control-label">Your Name</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
									<input type="text" class="form-control" name="Name" id="Name"  placeholder="Enter your Name"/>
									<form:errors path="Name" cssStyle="color:#FF0000;" />
								</div>
							</div>
						</div>

						<div class="form-group">
							<label for="email" class="cols-sm-2 control-label">Your Email</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-envelope-o" aria-hidden="true"></i></span>
									<input type="text" class="form-control" name="email" id="email"  placeholder="Enter your Email"/>
									<form:errors path="email" cssStyle="color:#FF0000;"/>
								</div>
							</div>
						</div>

						<div class="form-group">
							<label for="username" class="cols-sm-2 control-label">Username</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-users fa" aria-hidden="true"></i></span>
									<input type="text" class="form-control" name="Username" id="Username"  placeholder="Enter your Username"/>
									<form:errors path="Username" cssStyle="color:#FF0000;" />
								</div>
							</div>
						</div>

						
						

						<div class="form-group">
							<label for="password" class="cols-sm-2 control-label">Password</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
									<input type="password" class="form-control" name="password" id="password"  placeholder="Enter your Password "/>
								</div>
							</div>
						</div>
						
						<div class="form-group">
							<label for="Address" class="cols-sm-2 control-label">Address</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-address-book " aria-hidden="true"></i></span>
									<input type="text" class="form-control" name="address" id="address"placeholder="Enter your Address"/>
									<form:errors path="Address" cssStyle="color:#FF0000;" />
								</div>
							</div>
						</div>
						
						<div class="form-group">
							<label for="State" class="cols-sm-2 control-label">State</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
									<input type="text" class="form-control" name="state" id="state"placeholder="Enter your State"/>
									<form:errors path="State" cssStyle="color:#FF0000;" />
								</div>
							</div>
						</div>
						
						<%--<div class="form-group">
						<label for="Upload an image" class="cols-sm-2 control-label">Upload an image</label>
                        
                         <input type="file" name="image">
                          </div> --%>
						
						<div class="form-group ">
							<button type= target="_blank" type="button" id="button" class="btn btn-primary btn-lg btn-block login-button">Register</button>
						</div>
						
						</table>
                        
						</form:form>
						</div>
						</div>
						</div>
						
						</body>
						</html>
						


































<%--<body>
<div align="center">
<form:form action="saveuser" method="post" commandName="user" modelAttribute="user1">

<table border="0">

<tr>
<td colspan="2" align="center"><h2>Registration</h2></td>
</tr>

<!-- cssStyle="color:#FF0000; RED COLOR -->
<tr>
<td>Your Name:<span class="input-group-addon"><i class="fa fa-user fa" ></i></span></td>
<td><form:input path="Name" /></td>
<td><form:errors path="Name" cssStyle="color:#FF0000;" /></td>
</tr>


<tr >
<td> Your E-mail:</td>
<td><form:input path="email" /></td>
 <td><form:errors path="email" cssStyle="color:#FF0000;"/></td> 
</tr>




<tr>
<td>UserName:</td>
<td><form:input path="Username" /></td>
<td><form:errors path="Username" cssStyle="color:#FF0000;" /></td>
</tr>




<tr>
<td>Password:</td>
<td><form:password path="Password" /></td>
<td><form:errors path="Password" cssStyle="color:#FF0000;" /></td>
</tr>







<tr>
<td>Address:</td>
<td><form:input path="Address" /></td>
<td><form:errors path="Address" cssStyle="color:#FF0000;" /></td>
</tr>


<tr>
<td>State:</td>
<td><form:input path="State" /></td>
<td><form:errors path="State" cssStyle="color:#FF0000;" /></td>
</tr>



<tr>
<td colspan="2" align="center"><input type="submit" value="Register" /></td>
</tr>
</table>
</form:form>
</div>
</body> --%>
​
























































































































































<!--  <style>
.error {
    color: #ff0000;
    font-style: italic;
}
</style>
</head>
<body bgcolor="pink">
 
<form:form action="saveuser" method="post" commandName="user1" modelAttribute="user1">
    <table>
        <tr>
            <td>Enter Ur Name :</td>
            <td><form:input path="Name" /></td>
            <td><form:errors path="Name" cssClass="error" /></td>
        </tr>
       
 
        <tr>
            <td colspan="3"><input type="submit" value="Register"></td>
        </tr>
    </table>
</form:form>-->
 
