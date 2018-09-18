
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ page isELIgnored ="false" %>

<%@ include file="AdminHome.jsp" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<br><br><br><br>
 <h1>
 Add Category
</h1>

<c:url var="addcategory" value="/newCategory" ></c:url>
<form:form action="${addcategory}" commandName="category" modelAttribute="category"   method="post" >
<table>
    <c:if test="${!empty category.categoryName}">
    
    <tr>
        <td>
            <form:label path="id">
                <spring:message text="ID"/>
            </form:label>
        </td>
        <td>
            <form:input path="id" readonly="true" size="8"  disabled="true" />
            <form:hidden path="id" />
        </td> 
    </tr>
    </c:if> 
     <tr>
        <td>
            <form:label path="categoryName">
                  <spring:message text="name"/>
            </form:label>
        </td>
        <td> <form:input path="categoryName" /></td>
         
      
    </tr>
  
    <tr>
        <td>
            <form:label path="description">
                <spring:message text="description"/>
            </form:label>
        </td>
       
        <td>
            <form:input path="description" />
        </td>
        </tr>
        
        <tr>
        <td>
        <form:label path="type">
        <spring:message text ="type"/>
        </form:label>
        </td>
        
        <td>
       <form:input path="type"/>
        </tr>
        
        
       
        
        
      
 <%--   </tr>--%>
    <tr>
        <td colspan="2">
            <c:if test="${!empty category.categoryName}">
                <input type="submit"
                    value="<spring:message text="Edit Category"/>" />
            </c:if>
            <c:if test="${empty category.categoryName}">
                <input type="submit"
                    value="<spring:message text="Add Category"/>" />
         </c:if>
        </td>
    </tr>
    
</table>  
</form:form>
<center><h3>List of Category</h3></center>

<c:if test="${not empty categorys}">
<div class="container">
<table class="table table-bordered">

<!-- <table class="table table-striped"> -->
<thead>
    <!-- <table class="userTable"> -->
    <!-- <tr> -->
     <tr class="info">
    
        <th width="160">Name</th>
       <th width="100">Description</th>
        <th width="120">Action</th><!-- <span class="glyphicon glyphicon-edit"></span></th> -->
        <th width="140">Action</th><!-- <span class="glyphicon glyphicon-trash"></span></th> -->
       
    </tr>
    
    <c:forEach items="${categorys}" var="category">
        <tr>
         
            <td>${category.categoryName}</td>
            
       
             <td>${category.description}</td>
       
           <td><a href="<c:url value='/editCategory/${category.id}'/>" >Edit</a></td>
            <td><a href="<c:url value='/deleteCategory/${category.id}'/>" >Delete</a></td>
          
        </tr>
    </c:forEach>
    </thead>
   
    </table>
    </div>
</c:if>

  
</body>
</html>










<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="/resource/CSS ADMIN/stylecss.css">
</head>

<%@ include file="AdminHome.jsp" %>
<body>

 <br>
      <br>  
      <br>
      <br>
      <br>
      <br>
      <br>
      <br>
      <br>
      <br>
      <br>
      <br>
      <br>
      <br>
   
   
	<form:form action="newCategory" method="POST" commandName="category">

	<table>
			<tr>
				<td>Category ID :</td>
				<td><input type="text" name="id"/></td>
			</tr>
			<tr>
				<td>Category Name :</td>
				<td><input type="text" name="categoryName" /></td>
			</tr>
			<tr>
				<td>Category Description :</td>
				<td><input type="text" name="description"/></td>
			</tr>
		
			<tr>
				<td></td>
				<td><input type="submit" value="Add Category" class="btn btn-success"/></td>
			</tr>
		</table>
	</form:form>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>

<%@ include file="footer.jsp" %>
</body>
</html> --%>







