<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<h2><b>View card</b></h2>
<h3>Card information</h3>
<spring:url value="/resources/images" var="images" />


<script type="text/javascript">
	var url = document.URL;
	var a = window.location.pathname.split('/');
	var id = a[a.length - 1];
	function getCard() {
		return $.ajax({
			type : "GET",
			url : "/pokemon/service/cards/" + id,
			dataType : "json",
			success : function(data) {
				$('.results1').html(data.name);
				$('.results2').html(data.hp);
				$('.results3').html(data.stage);
				$('.results4').html(data.weakness);
				$('.results5').html(data.resistance);
				$('.results6').html(data.abilities);
				$('.results7').html(data.rarity);
				$('.results8').html(data.price);
				$('.results9').html(data.id);
			}
		});
	}
	$(document).ready(getCard);
</script>
<div class="row">
	<div class="col-sm-6">
		<div class="demo-content">
			<table class="table table-responsive" style="width: 70%">
				<tr class="bg-primary">
					<th class="table4">Name:</th>
					<td class="table-primary"><div class="results1"></div></td>
				</tr>
				<tr class="bg-success">
					<th class="table4">Hit Points:</th>
					<td class="table-success"><div class="results2"></div></td>
				</tr>
				<tr class="bg-primary">
					<th class="table4">Stage:</th>
					<td><div class="results3"></div></td>
				</tr>
				<tr class="bg-success">
					<th class="table4">Weakness:</th>
					<td><div class="results4"></div></td>
				</tr>
				<tr class="bg-primary">
					<th class="table4">Resistance:</th>
					<td><div class="results5"></div></td>
				</tr>
				<tr class="bg-success">
					<th class="table4">Abilities:</th>
					<td><div class="results6"></div></td>
				</tr>
				<tr class="bg-primary">
					<th class="table4">Rarity:</th>
					<td><div class="results7"></div></td>
				</tr>
				<tr class="bg-success">
					<th class="table4">Price:</th>
					<td><div class="results8"></div></td>
				</tr>
				<tr class="bg-primary">
					<th class="table4">ID:</th>
					<td><div class="results9"></div></td>
				</tr>

			</table>
		</div>
	</div>
	<div class="col-sm-6">
		<div class="demo-content bg-alt"> <img src="${images}/card.png" class="img-responsive" alt="Circular Image"></div>
	</div>
</div>


<a href="../addcard" class="btn btn-primary">Add more cards</a>
<a
	href="../homepage{sessionScope.session.userName}&{sessionScope.session.password}" class="btn btn-success">Home page</a>

