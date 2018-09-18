<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
        <%@ include file="header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script>
	$(document).ready(function() {
		var searchCondition = '${searchCondition}';
		$('.table').DataTable({
			"lengthMenu" : [ [ 3, 5, 7, -1 ], [ 3, 5, 7, "All" ] ],
			"oSearch" : {
				"sSearch" : searchCondition
			}
		})
	});
</script>

<title>Insert title here</title>
</head>
<body>

<center><b> LIST OF PRODUCTS</b> </center> 
<div class="container">
<table class="table table-bordered">
<!-- <table class="table table-striped"> -->
<thead>
<tr><th> Product Name </th><!-- <th>Category</th> --><th> Price </th> <th>Action</th></tr>
</thead>
<tbody>

<c:forEach items ="${products}" var="p" >
<c:url value="all/product/viewproduct/${p.id }" var="viewUrl"> </c:url> 
<c:url value="/admin/product/deleteproduct/${p.id }" var="deleteUrl"></c:url>
<tr><td><a href="${viewUrl }">${p.name }</a></td><td>${p.price}</td>
 <td><a href="${viewUrl }"><span class ="glyphicon glyphicon-info-sign"></span></a> 
<a href="${deleteUrl }"> <span class="glyphicon glyphicon-trash"></span></a>
<c:url value="/admin/product/geteditform/${p.id }" var="editUrl"></c:url>
<a href="${editUrl }" ><button type="button" class="btn btn-default btn-sm">
          <span class="glyphicon glyphicon-edit"></span> Edit
        </button>
        <!--<span class="glyphicon glyphicon-pencil"></span>  --></a>
</td>
</tr>
</c:forEach>
</tbody>
</table>
</div>



</body>
</html>