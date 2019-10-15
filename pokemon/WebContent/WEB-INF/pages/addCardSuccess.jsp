<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Registration Page</title>


<h2>WELLCOME TO POKEMON BROWSE CARD. ADD NEW CARD SUCCESFUL</h2>
<h3>CARD INFORMATION</h3>
<table>
	<tr>
		<th><label>Card ID </label></th>
		<th><label>Card Name </label></th>
		<th><label>Hit Point </label></th>
		<th><label> Stage </label></th>
		<th><label>Weakness</label></th>
		<th><label>Resistance </label></th>
		<th><label>Rarity </label></th>
		<th><label>Ability </label></th>
		<th><label>Price </label></th>
	</tr>
	<tr></tr>
	<c:forEach var="card" items="${cards}">
		<tr>
			<td><label>${card.id}</label></td>
			<td><label>${card.name}</label></td>
			<td><label>${card.hp}</label></td>
			<td><label>${card.stage}</label></td>
			<td><label>${card.weakness}</label></td>
			<td><label>${card.resistance}</label></td>
			<td><label>${card.rarity}</label></td>
			<td><label>${card.abilities}</label></td>
			<td><label>${card.price}</label></td>

			<form:form action="viewCard" method="get">
				<input type="hidden" name="id" value="${card.id}" />
				<td><input class="btn btn-success"  type="submit" name="view" value="VIEW" /></td>
			</form:form>
			<form:form action="editResponse" method="get">
				<input type="hidden" name="id" value="${card.id}" />
				<td><input class="btn btn-primary" type="submit" name="edit" value="EDIT" /></td>
			</form:form>
			<form:form action="delete" method="post">
				<input type="hidden" name="name" value="${card.name}" />
				<td><input class="btn btn-danger"  type="submit" name="delete" value="DELETE" /></td>
			</form:form>
			
		</tr>
	</c:forEach>

</table>

<a href="addcard">ADD MORE CARD </a>

<a
	href="homepage{sessionScope.session.userName}&{sessionScope.session.password}">HOME
	PAGE</a>