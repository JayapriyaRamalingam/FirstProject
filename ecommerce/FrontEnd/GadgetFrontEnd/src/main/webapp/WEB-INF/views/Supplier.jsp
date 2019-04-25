<%@ include file="/WEB-INF/views/Header.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 

<div class="container">

<form action="InsertSupplier" method="post">

<table class="table table-bordered" width="50%" align="center">

	<tr bgcolor="gray"><td colspan="2"><center>Enter Supplier Detail</center></td></tr>
	<tr>
		<td>Supplier Name</td>
		<td><input type="text" name="supplierName" id="supplierName"/></td>
	</tr>
	<tr>
		<td>Supplier Address</td>
		<td><input type="text" name="supplierAddress" id="supplierAddress"/></td>
	</tr>
	<tr>
		<td colspan="2">
		<center><input type="submit" value="Insert Supplier"/></center>
		</td>
	</tr>
</table>
</form>


<table align="center" class="table table-bordered">
	<tr bgcolor="pink">
		<td colspan="4"><center>Supplier Details</center></td>
	</tr>
	<tr bgcolor="skyblue">
		<td>Supplier ID</td>
		<td>Supplier Name </td>
		<td>Supplier Address </td>
		<td>Operations</td>
	</tr>
	<c:forEach items="${suppliers}" var="supplier">
	<tr>
		<td>${supplier.supplierId}</td>
		<td>${supplier.supplierName}</td>
		<td>${supplier.supplierAddress}</td>
		<td>
			<a href="<c:url value="/editSupplier/${supplier.supplierId}"/>"><img src="<c:url value="/resources/images/icons8-edit-24.png"/>" alt="edit"></a>/
			<a href="<c:url value="/deleteSupplier/${supplier.supplierId}"/>"><img src="<c:url value="/resources/images/icons8-delete-bin-24.png"/>" alt="Delete"></a>
		</td>
	</tr>	
	</c:forEach>
	
</table>
</div>

</body>
</html>


