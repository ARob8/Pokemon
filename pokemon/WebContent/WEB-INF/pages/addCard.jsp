<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<h2>Add card page</h2>

<form:form method="POST" modelAttribute="card" action="addCardSuccess2">
	<table class="table2">
		<tr>
			<td class="table2"><form:label path="name"> Name of Pokémon card  </form:label></td>
			<td class="table2"><form:input path="name" /> <form:errors path="name" maxlength="30"/></td>
		</tr>
		
		<tr>

			<td class="table2"> <form:label path="hp"> Hit Points </form:label></td>
			<td class="table2"><form:input path="hp" maxlength="30"/>
				<form:errors path="hp" /></td>
		</tr>
		
		<tr>

			<td class="table2"><form:label path="Stage"> Stage </form:label></td>
			<td class="table2"><form:input path="Stage" maxlength="30" />
				<form:errors path="Stage" /></td>
		</tr>

		<tr>

			<td class="table2"><form:label path="weakness"> Weakness </form:label></td>
			<td class="table2"><form:input path="weakness" maxlength="30"/> <form:errors
					path="weakness" /></td>
		</tr>

		<tr>

			<td class="table2"> <form:label path="resistance"> Resistance </form:label></td>
			<td class="table2"><form:input path="resistance" maxlength="30"/> <form:errors path="resistance" /></td>
		</tr>
		
		<tr>

			<td class="table2"><form:label path="retreat"> Retreat </form:label></td>
			<td class="table2"><form:input path="retreat" maxlength="30" /> <form:errors path="retreat" /></td>
		</tr>
		<tr>

			<td class="table2"><form:label path=""> Rarity </form:label></td>
			<td class="table2"><form:input path="rarity" maxlength="30"/> <form:errors path="rarity" /></td>
		</tr>
		<tr>

			<td class="table2"><form:label path="abilities"> Abilities</form:label></td>
			<td class="table2"><form:input path="abilities" maxlength="30"/> <form:errors path="abilities" /></td>
		</tr>
		<tr>

			<td class="table2"><form:label path="price"> Price </form:label></td>
			<td class="table2"><form:input path="price" maxlength="30"/> <form:errors path="price" /></td>
		</tr>
		</table>

		<tr >
			<td class="table2" colspan="2"><input type="submit" class = "btn btn-primary" value="Add New Card" /></td>
		</tr>	
			
		<tr>
			<td colspan="2"><a
			href="homepage{sessionScope.session.userName}&{sessionScope.session.password}" class="btn btn-success">Home page</a></td>
		</tr>
	
	<form:errors path="*" />
</form:form>


