<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<h2>Card Information</h2>

<form:form method="GET" modelAttribute="card" action="editResponse">
	<spring:url value="/resources/images" var="images" />
	<img src="${images}/card.png"  width="128" height="128"/>
	<table class="table2">
		<tr>

			<td><form:input type="hidden" path="id" value="${card.id}" /> <form:errors
					path="id" /></td>
		</tr>

		<tr>
			<td><form:label path="name"> Name Card </form:label></td>
			<td class="table2">${card.name}</td>
		</tr>

		<tr>

			<td><form:label path="hp"> Hit Point </form:label></td>
			<td class="table2">${card.hp}</td>
		</tr>

		<tr>
			<td><form:label path="Stage"> Stage </form:label></td>
			<td class="table2">${card.stage}</td>
		</tr>

		<tr>

			<td><form:label path="weakness"> Weakness </form:label></td>
			<td class="table2">${card.stage}</td>
		</tr>

		<tr>

			<td><form:label path="resistance"> Resistance </form:label></td>
			<td class="table2">${card.resistance}</td>
		</tr>

		<tr>

			<td><form:label path="retreat"> Retreat </form:label></td>
			<td class="table2">${card.retreat}</td>
		</tr>
		<tr>

			<td><form:label path=""> Rarity </form:label></td>
			<td class="table2">${card.rarity}</td>
		</tr>
		<tr>

			<td><form:label path="abilities"> Abilities</form:label></td>
			<td class="table2">${card.abilities}</td>
		</tr>
		<tr>

			<td><form:label path="price"> Price </form:label></td>
			<td class="table2">${card.price}</td>
		</tr>


	</table>
	<td><input type="submit" name="edit" value="EDIT" /></td>
	<tr>
		<td colspan="2"><a
			href="homepage{sessionScope.session.userName}&{sessionScope.session.password}">HOME
				PAGE</a></td>
	</tr>
	<form:errors path="*" />
</form:form>


