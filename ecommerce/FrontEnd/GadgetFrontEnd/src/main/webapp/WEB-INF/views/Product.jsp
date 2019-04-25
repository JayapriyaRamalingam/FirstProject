<%@include file="Header.jsp"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
  
<div class="container">

<form:form action="InsertProduct" method="post" enctype="multipart/form-data" modelAttribute="product">

<table class="table table-bordered" width="50%" align="center">

<tr bgcolor="gray">
			<td colspan="2"><h3 align="center">Product Data</h3></td>
	</tr>
	<tr>
			<td colspan="2">
			<h3 align="center">
			<font color="red">${Error}</font></h3></td>
	</tr>
	<tr>
			<td> Product Name </td>
			<td> <form:input path="productName"/></td>
	</tr>
	<tr>
			<td> Price</td>
			<td><form:input path="price"/></td>
	</tr>
	<tr>
			<td>Stock</td>
			<td><form:input path="stock"/></td>
	</tr>
	<tr>
			<td>Category</td>
			<td>
			<form:select path="categoryId">
				<form:option value="0" label="---Select List--"/>
				<form:options items="${categoryList}"/>
			</form:select>
			</td>
	</tr>
	
	<tr>
			<td>Supplier</td>
			<td>
			<form:select path="supplierId">
				<form:option value="0" label="---Select List--"/>
				<form:options items="${supplierList}"/>
			</form:select>
			</td>
	</tr>
	
	<tr>
			<td>Product Desc</td>
			<td><form:input path="productDesc"/></td>
	</tr>
	<tr>
			<td>Product Image</td>
			<td><form:input type="file" path="pimage"/></td>
	</tr>
			
	<tr>
			<td colspan="2">
			<center>
			<input type="submit" value="Insert"/>
			</center>	
			</td>
	</tr>
	

</table>

</form:form>


<table align="center" class="table table-bordered">
	<tr bgcolor="pink">
		<td colspan="6"><center>Product Details</center></td>
	</tr>
	<tr bgcolor="skyblue">
		<td>Product ID</td>
		<td>Product Name </td>
		<td>Price </td>
		<td>Stock</td>
		<td>Image</td>
		<td>Operations</td>
	</tr>
	<c:forEach items="${listProducts}" var="product">
	<tr>
		<td>${product.productId}</td>
		<td>${product.productName}</td>
		<td>${product.price}</td>
		<td>${product.stock}</td>
		<td>
		<a href="<c:url value="/productDisplay/${product.productId}"/>">
		<img src="<c:url value="/resources/images/${product.productId}.jpg"/>"width="100" height="100"></td>
		</a>
		<td>
			<a href="<c:url value="/editProduct/${product.productId}"/>"><img src="<c:url value="/resources/images/icons8-edit-24.png"/>" alt="Edit"></a>/
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<a href="<c:url value="/deleteProduct/${product.productId}"/>"><img src="<c:url value="/resources/images/icons8-delete-bin-24.png"/>" alt="Delete"></a>/
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<a href="<c:url value="/productDisplay/${product.productId}"/>"><img src="<c:url value="/resources/images/icons8-tv-30.png"/>" alt="Display"></a>
			
		</td>
	</tr>	
	
	</c:forEach>
	
</table>

</div>
</body>
</html>