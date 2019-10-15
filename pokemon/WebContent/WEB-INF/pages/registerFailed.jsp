<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<h2>Register</h2>
<h4> Username is unavailable. Please Try again </h4>
<form:form method="POST" modelAttribute="user" action="registerSuccess">
	<table>

		<tr>
			<td><form:label path="userName"> Username</form:label></td>
			<td><form:input path="userName" /> <form:errors path="userName" /></td>
		</tr>
		
		<tr>

			<td><form:label path="Password"> Password </form:label></td>
			<td><form:input path="Password" />
				<form:errors path="Password" /></td>
		</tr>
		
		<tr>

			<td><form:label path="Email"> Email </form:label></td>
			<td><form:input path="Email" />
				<form:errors path="Email" /></td>
		</tr>

		<tr>

			<td><form:label path="firstName"> First Name </form:label></td>
			<td><form:input path="firstName" /> <form:errors
					path="firstName" /></td>
		</tr>

		<tr>

			<td><form:label path="lastName"> Last Name </form:label></td>
			<td><form:input path="lastName" /> <form:errors path="lastName" /></td>
		</tr>
		
		<tr>
			<td><form:label path="gender"> Gender </form:label></td>
			<td><form:radiobutton path="gender" value="0" /> Female <form:radiobutton
					path="gender" value="1" /> Male</td>
		</tr>
		
		</table>
		
		

		<tr>
			<td colspan="2"><input type="submit" value="Register" /></td>

		</tr>
	
	<form:errors path="*" />
</form:form>