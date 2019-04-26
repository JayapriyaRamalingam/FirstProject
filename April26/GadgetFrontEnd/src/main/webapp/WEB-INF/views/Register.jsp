<%@ include file="/WEB-INF/views/Header.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>





	
<meta name="viewport" content="width=device-width, initial-scale=1.0">
		
		<!-- MATERIAL DESIGN ICONIC FONT -->
		<link rel="stylesheet" href="<c:url value="/resources/Register/fonts/material-design-iconic-font/css/material-design-iconic-font.min.css"/>">     

		<!-- STYLE CSS -->
		<link rel="stylesheet" href="<c:url value="/resources/Register/css/style.css"/>">
	</head>

	<body>

		<div class="wrapper" style="background-image: url('resources/Register/images/back1.jpg');">
			<div class="inner">
				<div class="image-holder">
					<img src="resources/Register/images/register.jpg" alt="" width="600" height="500">
				</div>
				<form action="registerUser" method="post">
					<h3>Registration Form</h3>
			
					<div class="form-wrapper">
						<input type="text" name="username" placeholder="Username" class="form-control">
						<i class="zmdi zmdi-account"></i>
					</div>
					
					<div class="form-wrapper">
						<input type="text" name="customername" placeholder="Email Address" class="form-control">
						<i class="zmdi zmdi-email"></i>
					</div>
				
					<div class="form-wrapper">
						<input type="password" name="password"  placeholder="Password" class="form-control">
						<i class="zmdi zmdi-lock"></i>
					</div>
			
					<div class="form-wrapper">
						<input type="text" name="address"  placeholder="Address" class="form-control">
						<i class="zmdi zmdi-gps-dot"></i>
					</div>
					
					<button>Register</button>
				</form>
			</div>
		</div>

</body>
</html>

