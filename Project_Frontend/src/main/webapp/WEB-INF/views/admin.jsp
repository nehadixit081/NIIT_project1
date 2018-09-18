<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<%@include file ="header.jsp" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<!-- Spring Form tag. -->
<!-- http://localhost:8080/E-commerce_frontend/saveproduct -->


<c:url var="addAction" value ="/admin/add"></c:url>
 <form:form action="${addAction}"  commandName="product" modelAttribute="product" enctype="multipart/form-data" method ="post">
 
<%-- <div class ="form-group">
<form:hidden path="Id" class="form-control"/>
</div> --%>
<br>

<c:if test="${!empty product.name}">
   <tr>
        <td>
            <form:label path="Id">
                <spring:message text="Id"/>
            </form:label>
        </td>
        <td>
            <form:input path="Id" readonly="true" size="8"  disabled="true" />
            <form:hidden path="Id" />
        </td> 
    </tr>
    </c:if>

  
<div class ="form-group">
Enter Product Name 
<form:input path="name" class="form-control"/>
</div>

<div class ="form-group">
Enter Price 
<form:input path="price" class="form-control"/>

</div>
<br>
<div class ="form-group">
Enter Quantity 
<form:input path="quantity" class="form-control"/>

</div>
<br>

<div class ="form-group">
Enter Description
<form:textarea path="description" class="form-control"/>
</div>

 <!--  <div class ="form-group">
Select Category
<c:forEach items="${categories }" var="c">
<form:radiobutton path="category.id" value="${c.id }" />${c.categoryName }

</c:forEach> 
</div>-->

<tr>
        <td>
            <form:label path="image">
                <spring:message text="Photo to upload"/>
            </form:label>
        </td>
        <td>
            <form:input type="file" path="image" />
        </td></tr>

<br>
 <%--<div class ="form-group">
Select Category
<c:forEach items="${categories }" var="c">
<form:radiobutton path="category.id" value="${c.id }" />${c.categoryName }

</c:forEach>
</div>--%>

<br>
<div class ="form-group">
<table>
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
    
<!--  <input type ="submit" value ="Add Product">-->
</div>
<br>
</form:form>

<h3>List of Products</h3>

<c:if test="${not empty listproduct}">
    <table class="userTable">
    <%--  <table class="tg">--%>
    <thead>
    <tr>
          <th width="120">Id</th>
        <th width="160">Name</th>
        <th width="120">Quantity</th>
        <th width="140">price</th>
      <!--    <th width="120">Category</th>-->
        <th width="180">Description</th>
       <th width="200">Image</th>
         <th width="220">Action <span class="glyphicon glyphicon-edit"></span></th>
          <th width="240">Action<span class="glyphicon glyphicon-trash"></span></th>
    </tr>
    </thead>
  
    <c:forEach items="${listproduct}" var="product">

<tbody>
        <tr>
         <td>${product.id}</td>
         <td>${product.name}</td>
           
           <td> ${product.quantity } </td>
            <td>${product.price}</td>
            
             <td>${product.description}</td>
          
             
            <td> <img src="resource/images/${product.id}.jpg" class="ïmage-responsive" height="60" width="60"/></td>
              
            <!--  <td><c:url value ="/resources/images/${p.id }.png" var="imageUrl"/></td>-->
            
           <td><a href="<c:url value='/edit/${product.id}'/>" >Edit</a></td>
            <td><a href="<c:url value='/remove/${product.id}'/>" >Delete</a></td>
            
           <!--  <td><img src ="${imageUrl }" height="50" width="50"></td>-->
</tr>
        </tbody>
   </c:forEach>
 </table>
  ​</c:if>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.2/jquery.min.js"></script>
 <script src="resource/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>