<%@ include file="/WEB-INF/views/Header.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<body>
<div class="container">

<form action="InsertCategory" method="post">

<table class="table table-bordered" width="50" height="50" align="center">

	<tr bgcolor="gray">
		<td colspan="2">
			<center>Enter Category Detail</center>
		</td>
	</tr>
	<tr>
		<td>Category Name</td>
		<td><input type="text" name="catName" id="catName"/></td>
	</tr>
	<tr>
		<td>Category Desc</td>
		<td><input type="text" name="catDesc" id="catDesc"/></td>
	</tr>
	<tr>
		<td colspan="2">
		<center><input type="submit" value="Insert Category"/></center>
		</td>
	</tr>
</table>
</form>


<table align="center" class="table table-bordered">
	<tr bgcolor="pink">
		<td colspan="4"><center>Category Details</center></td>
	</tr>
	<tr bgcolor="cyan">
		<td>Category ID</td>
		<td>Category Name </td>
		<td>Category Desc </td>
		<td>Operations</td>
	</tr>
	<c:forEach items="${categories}" var="category">
	<tr>
		<td>${category.categoryId}</td>
		<td>${category.categoryName}</td>
		<td>${category.categoryDesc}</td>
		<td>
			<a href="<c:url value="/editCategory/${category.categoryId}"/>"><img src="<c:url value="/resources/images/icons8-edit-24.png"/>" alt="edit"></a>/
			<a href="<c:url value="/deleteCategory/${category.categoryId}"/>"><img src="<c:url value="/resources/images/icons8-delete-bin-24.png"/>" alt="Delete"></a>
		</td>
	</tr>	
	</c:forEach>
	
</table>
</div>
</body>
</html>

