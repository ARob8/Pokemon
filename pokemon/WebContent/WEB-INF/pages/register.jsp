<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<h2>Register</h2>
<form:form method="POST" modelAttribute="user" action="registerSuccess">
	<table>
		<tr>
			<td class="table2"><form:label path="userName" > Username:   </form:label></td>
			<td class="table2"><form:input path="userName" maxlength="30" /> <form:errors path="userName" /></td>
		</tr>

		<tr>

			<td class="table2"><form:label path="Password"> Password:   </form:label></td>
			<td class="table2"><form:input type="password" path="Password" maxlength="30" /> <form:errors
					path="Password" /></td>
		</tr>

		<tr>

			<td class="table2"><form:label path="Email"> Email:   </form:label></td>
			<td class="table2"><form:input type="email" path="Email" maxlength="50" /> <form:errors path="Email" /></td>
		</tr>

		<tr>

			<td class="table2"><form:label path="firstName"> First Name:   </form:label></td>
			<td class="table2"><form:input path="firstName" maxlength="30" /> <form:errors
					path="firstName" /></td>
		</tr>

		<tr>

			<td class="table2"><form:label path="lastName"> Last Name:   </form:label></td>
			<td class="table2"><form:input path="lastName" maxlength="30"  /> <form:errors path="lastName" /></td>
		</tr>
		<tr>
			<td class="table2"><form:label path="gender"> Gender:   </form:label></td>
			<td class="table2"><form:radiobutton path="gender" value="0" /> Female <form:radiobutton
					path="gender" value="1" /> Male</td>
		</tr>

	
	</table>


<td ><input type="submit"  class="btn btn-primary btn-lg" value="Register" /></td>


	<form:errors path="*" />
</form:form>
