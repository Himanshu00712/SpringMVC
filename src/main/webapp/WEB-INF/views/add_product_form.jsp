<%@page import="java.util.ArrayList"%>
<html>
<body>
	<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1"
	crossorigin="anonymous">
<%@include file="./base.jsp"%>

</head>
<body background="${pageContext.request.contextPath}/resources/images/watercolor-background.jpg">

	<div class="container mt-3">
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<h1 class="text-center mb-3">Fill the Product details</h1>
				<form action="handel-product" method="post">
					<div class="form-group">
						<label for="name"><b>Product Name</b></label> <input type="text"
							class="form-control" id="name" aria-describedby="emailHelp"
							name="name" placeholder="Enter the product name here">
					</div>


					<div class="form-group">
						<label for="description"><b>Product Description</b></label> <textarea 
							class="form-control" id="description" rows="5"
							name="description" placeholder="Enter the product description"></textarea>
					</div>


					<div class="form-group">
						<label for="name"><b>Product Price</b></label> <input type="text"
							class="form-control" id="price" 
							name="price" placeholder="Enter the product price">
					</div>
					
					
					<div class="container text-center">
					<a href="${pageContext.request.contextPath}/" class="btn btn-outline-danger">Back</a>
					<button type="submit" class="btn btn-primary">Add</button>
					</div>

				</form>


			</div>



		</div>
	</div>




</body>
</html>
