<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home page</title>


<h2>Hello, ${sessionScope.session.firstName}  ${sessionScope.session.lastName} </h2>

<div class="container bootstrap snippet">
	<div class="panel-body inf-content">
		<div class="row">
			<div class="col-md-4">
				<img alt="" style="width: 600px;" title=""
					class="img-circle img-thumbnail isTooltip"
					src="https://www.ssbwiki.com/images/2/28/Pok%C3%A9mon_Trainer_%28solo%29_SSBU.png"
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
				<h3>User Information</h3>
				<br>
				<div class="table-responsive">
					<table
						class="table table-condensed table-responsive table-user-information">
						<tbody>

							<tr>
								<td><strong> <span
										class="glyphicon glyphicon-user  text-primary"></span> Name
								</strong></td>
								<td class="text-primary">${sessionScope.session.firstName}</td>
							</tr>
							<tr>
								<td><strong> <span
										class="glyphicon glyphicon-cloud text-primary"></span> Last
										name
								</strong></td>
								<td class="text-primary">${sessionScope.session.lastName}</td>
							</tr>

							<tr>
								<td><strong> <span
										class="glyphicon glyphicon-bookmark text-primary"></span>
										Username
								</strong></td>
								<td class="text-primary">${sessionScope.session.userName}</td>
							</tr>
							<tr>
								<td><strong> <span
										class="glyphicon glyphicon-envelope text-primary"></span>
										Email
								</strong></td>
								<td class="text-primary">${sessionScope.session.email}</td>
							</tr>

							<tr>
								<td><strong> <span
										class="glyphicon glyphicon-envelope text-primary"></span>
										Gender
								</strong></td>
								<td class="text-primary"><c:if
										test="${sessionScope.session.gender==1}">
							Male
						</c:if> <c:if test="${sessionScope.session.gender==0 }">
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

<a href="index" class="btn btn-danger">Go Back </a>

<a href="showcards" class="btn btn-info">Show Your Cards </a>

