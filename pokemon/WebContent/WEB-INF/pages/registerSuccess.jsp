<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style>
inf-content {
	border: 1px solid #DDDDDD;
	-webkit-border-radius: 10px;
	-moz-border-radius: 10px;
	border-radius: 10px;
	box-shadow: 7px 7px 7px rgba(0, 0, 0, 0.3);
}

table, td, th {
	border: 1px solid black;
}

table {
	border-collapse: collapse;
	height: 30px;
	width: 100%;
}

th {
	height: 50px;
}
</style>
<title>Registration Page</title>

	<h2>Welcome to Pokemon deck. Register successful</h2>

	<div class="container bootstrap snippet">
		<div class="panel-body inf-content">
			<div class="row">
				<div class="col-md-4">
					<img alt="" style="width: 600px;" title=""
						class="img-circle img-thumbnail isTooltip"
						src="http://pngimg.com/uploads/pokemon/pokemon_PNG147.png"
						data-original-title="Usuario">
					<ul title="Ratings" class="list-inline ratings text-center">
						<li><a href="#"><span class="glyphicon glyphicon-star"></span></a></li>
						<li><a href="#"><span class="glyphicon glyphicon-star"></span></a></li>
						<li><a href="#"><span class="glyphicon glyphicon-star"></span></a></li>
						<li><a href="#"><span class="glyphicon glyphicon-star"></span></a></li>
						<li><a href="#"><span class="glyphicon glyphicon-star"></span></a></li>
					</ul>
				</div>
				<div class="col-md-6">
					<strong>Information</strong><br>
					<div class="table-responsive">
						<table
							class="table table-condensed table-responsive table-user-information">
							<tbody>

								<tr>
									<td><strong> <span
											class="glyphicon glyphicon-user  text-primary"></span> Name
									</strong></td>
									<td class="text-primary">${user.firstName}</td>
								</tr>
								<tr>
									<td><strong> <span
											class="glyphicon glyphicon-cloud text-primary"></span>
											Last name
									</strong></td>
									<td class="text-primary">${user.lastName}</td>
								</tr>

								<tr>
									<td><strong> <span
											class="glyphicon glyphicon-bookmark text-primary"></span>
											Username
									</strong></td>
									<td class="text-primary">${user.userName}</td>
								</tr>
								<tr>
									<td><strong> <span
											class="glyphicon glyphicon-envelope text-primary"></span>
											Email
									</strong></td>
									<td class="text-primary">${user.email}</td>
								</tr>

								<tr>
									<td><strong> <span
											class="glyphicon glyphicon-envelope text-primary"></span>
											Gender
									</strong></td>
									<td class="text-primary"><c:if test="${user.gender==1}">
							Male
						</c:if> <c:if test="${user.gender==0 }">
  Female
</c:if></td>
								</tr>

							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
	<tr>
			<td colspan="2"><a href="index">GO BACK </a></td>
		</tr>

