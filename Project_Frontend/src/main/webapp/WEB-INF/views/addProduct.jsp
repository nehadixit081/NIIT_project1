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

<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

 <%--CSS LINK  --%>
<link rel="stylesheet" type="text/css" href="/resource/CSS ADMIN/stylecss.css">
</head>

<br><br>
 <h1>
 Add Product
</h1>

<c:url var="addproduct" value="/newProduct" ></c:url>
<form:form action="${addproduct}" commandName="product" modelAttribute="product" 
  enctype="multipart/form-data" method="post" >
  
<table>
    <c:if test="${!empty product.name}">
    
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
            <form:label path="name">
                  <spring:message text="name"/>
            </form:label>
        </td>
        <td> <form:input path="name" /></td>
         
      
    </tr>
  
    <tr>
        <td>
            <form:label path="price">
               <spring:message text="price"/> 
            </form:label>
        </td>
        <td>
            <form:input path="price" />
        </td>
       
    </tr>
    
     <tr>
        <td>
            <form:label path="category">
                 <spring:message text="category"/>
            </form:label>
        </td>
        <td>
            <form:select path="category.categoryName" items ="${categorys}" itemValue="categoryName" itemLabel="categoryName"/>
        </td>
       
    </tr>
    
  <tr>
        <td>
            <form:label path="supplier">
                 <spring:message text="supplier"/>
            </form:label>
        </td>
        <td>
            <form:select path="supplier.name" items ="${suppliers}" itemValue="name" itemLabel="name"/>
            
        </td>
       
    </tr>
    
    <tr>
        <td>
            <form:label path="image">
               <spring:message text=" Upload Image "/> 
            </form:label>
        </td>
        <td>
            <form:input type="file" path="image" />
        </td>
        </tr>
        
 <%--   </tr>--%>
    <tr>
        <td colspan="2">
            <c:if test="${!empty product.name}">
                <input type="submit"
                    value="<spring:message text="Edit Product"/>" />
            </c:if>
            <c:if test="${empty product.name}">
                <input type="submit"
                    value="<spring:message text="Add Product"/>" />
         </c:if>
        </td>
    </tr>
    
</table>  
</form:form>
<center><h3>List of Product</h3></center>

<c:if test="${not empty products}">
<div class="container">
<table class="table table-bordered">

<!-- <table class="table table-striped"> -->
<thead>
    <!-- <table class="userTable"> -->
    <!-- <tr> -->
     <tr class="info">
    
        <th width="160">Name</th>
       <th width="140">Price</th>
        <th width="120">Image</th> 
        <th width="180">Category</th>
         <th width="120">Supplier</th>
        <th width="160">Action</th>
        <th width="200">Action</th>
        	
    </tr>
    
    <c:forEach items="${products}" var="product">
        <tr>
         
            <td>${product.name}</td>
            <td>${product.price}</td>
            <td><img src="resource/images/${product.id }.jpg" class ="image-responsive" height="50" width="50"></td>
            <td>${product.category.categoryName}</td>
   
            <td>${product.supplier.name}</td>
            
            
       
             
       
           <td><a href="<c:url value='/editProduct/${product.id}'/>" >Edit</a></td>
            <td><a href="<c:url value='/deleteProduct/${product.id}'/>" >Delete</a></td>
          
        </tr>
    </c:forEach>
    </thead>
   
    </table>
    </div>
</c:if>

  
</body>

</html>
<br/><br/><br/><br/><br/><br/><br/><br/><br/>
<%@ include file="footer.jsp" %>