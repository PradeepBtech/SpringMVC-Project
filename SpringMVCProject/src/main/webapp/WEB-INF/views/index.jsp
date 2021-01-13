<html>
<head>
<%@page isELIgnored="false" %>
<%@ include file="./base.jsp"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
</head>
<body>
	<div class="container mt-3">

		<div class="row">
			<div class="col-md-12">
				<h1 class="text-center mb-3">Welcome to Product Service</h1>
				<table class="table">
					<thead class="thead-dark">
						<tr>
							<th scope="col">S.No.</th>
							<th scope="col">Product Name</th>
							<th scope="col">Product Description</th>
							<th scope="col">Product Price</th>
							<th scope="col">Action</th>
						</tr>
					</thead>
					<tbody>
					<c:forEach items="${products }" var="p">
						<tr>
							<th scope="row">PRODUCT ${p.id }</th>
							<td>${p.name }</td>
							<td>${p.description }</td>
							<td class="font-weight-bold"> &#x20B9; ${p.price}</td>
							<td>
							<a href="delete/${p.id }"><i class="far fa-trash-alt"></i></a>
							<a href="update/${p.id }"><i class="fas fa-user-edit"></i></a>
							</td>
						</tr>
						</c:forEach>
					</tbody>
				</table>
				
				<div class="container text-center">
				<a href="add-product" class="btn btn-outline-info">Add Product</a>
				</div>

			</div>

		</div>

	</div>
</body>
</html>
