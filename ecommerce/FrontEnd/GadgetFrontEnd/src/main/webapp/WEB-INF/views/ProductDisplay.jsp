<%@include file="Header.jsp"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<div class="container">

<form action="<c:url value="/addToCart/${product.productId}"/>" method="get">
	<div class="row">
		
		<div>
			<a href="<c:url value="/resources/images/${product.productId}.jpg"/>">
			<img class="product_image" src="<c:url value="/resources/images/${product.productId}.jpg"/>">
			</a>
		</div>
		
		<div class="product_details" style="border:0px solid gray">
			<h3 class="product_name">${product.productName}</h3>
			
			<h5 class="product_stock">
				<b>Stock:</b> <small>${product.stock}</small>
			</h5>
			<h5 class="product_stock">
				<b>Description: </b> <small>${product.productDesc}</small>
			</h5>
			
			<h3 class="product_price"><b>Price: </b>INR ${product.price} /-</h3>
		

			<div>
					<div class="btn-minus"> 
						<button type="button" class="btn btn-dark">Add</button>
					</div>
					
					<input value="1" name="quantity"/>
		
					<div class="btn-plus"> 
						<button type="button" class="btn btn-dark">Remove</button>
					</div>
			</div>
			
			<div class="session">
				<input type="submit" class="btn btn-success" value="AddToCart"/>
			</div>
			
</div>
</div>

</form>

</body>
</html>