<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Registration Page</title>


<h2>Browse Pokémon Cards</h2>
<h3>Card Information</h3>
<table>
	<tr>

		<th><label>Card Name </label></th>
		<th><label>Hit Point </label></th>
		<th><label>Stage </label></th>
		<th><label>Weakness</label></th>
		<th><label>Resistance </label></th>
		<th><label>Rarity </label></th>
		<th><label>Ability </label></th>
		<th><label>Price </label></th>
	</tr>
	<tr></tr>
	<c:forEach var="card" items="${cards}">
		<tr>

			<td><label>${card.name}</label></td>
			<td><label>${card.hp}</label></td>
			<td><label>${card.stage}</label></td>
			<td><label>${card.weakness}</label></td>
			<td><label>${card.resistance}</label></td>
			<td><label>${card.rarity}</label></td>
			<td><label>${card.abilities}</label></td>
			<td><label>${card.price}</label></td>
			
			
			<td><form:form action="viewCard" method="get">
				<input type="hidden" name="id" value="${card.id}" />
				<input class="btn btn-primary" type="submit" name="view" value="VIEW" />
			</form:form></td>
			<td><form:form action="editResponse" method="get">
				<input type="hidden" name="id" value="${card.id}" />
				<input class="btn btn-info" type="submit" name="edit" value="EDIT" />
			</form:form></td>
			<td><form:form action="delete" method="post">
				<input  type="hidden" name="name" value="${card.name}" />
				<input class="btn btn-danger" type="submit" name="delete" value="DELETE" />
			</form:form></td>
			
		</tr>
	</c:forEach>

</table>

<a href="addcard">Add more cards </a>

<a
	href="homepage{sessionScope.session.userName}&{sessionScope.session.password}">Home Page</a>