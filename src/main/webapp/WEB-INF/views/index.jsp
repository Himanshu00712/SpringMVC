<html>
<head>
<%@include file="./base.jsp"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<script type="text/javascript">
$(function () {
	  $('[data-toggle="tooltip"]').tooltip()
	})

</script>



</head>
<body background="${pageContext.request.contextPath}/resources/images/watercolor-background.jpg">

	<div class="container mt-3">
		<div class="row">
			<div class="col-md-12">
				<h1 class="text-center mb-3">Welcome to Product App</h1>

				<table class="table">
					<thead class="thead-dark">
						<tr>
							<th scope="col">Id</th>
							<th scope="col">Product Name</th>
							<th scope="col">Description</th>
							<th scope="col">Price</th>
							<th scope="col">Action</th>
						</tr>
					</thead>
					<tbody>
					<c:forEach items="${product }" var="p">
						<tr>
							<th scope="row">${p.id }</th>
							<td>${p.name}</td>
							<td>${p.description}</td>
							<td>&#x20B9; ${p.price }</td>
							<td>
							<a href="delete/${p.id}"><i class="fas fa-trash-alt text-danger" data-toggle="tooltip" data-placement="left" title="Delete"></i></a>
							&nbsp;&nbsp;&nbsp;
							<a href="update/${p.id}"><i class="fas fa-pen" data-toggle="tooltip" data-placement="Right" title="Update"></i></a>
							
							</td>
						</tr>
					</c:forEach>
						
					</tbody>
				</table>
				
				<div class="container text-center">
				<a href="add-product" class="btn btn-outline-success">Add Product</a>
				
				</div>

			</div>




		</div>
	</div>



</body>
</html>
