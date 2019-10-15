<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

	<h2>Login</h2>
	<form:form method="POST" modelAttribute="user" action="login">
		<table>
			<tr>
					<td> <form:label path="userName"> First Name </form:label> </td>
					<td><form:input path="userName" /> <form:errors path ="userName"/></td>
			</tr>

			<tr>
			
				<td> <form:label path="Password"> Last Name </form:label> </td>
				<td><form:input type="password" path="Password"/> <form:errors path ="Password"/></td>
			</tr>
			<h3>Wrong Username or Password </h3>
			
		</table>
		<tr>
				<td colspan="2"><input type="submit" value="Submit" /></td>
				
			    <td><a href="http://localhost:8080/pokemon/user/register" class="btn btn-danger">Register</a></td>
			</tr>
		<form:errors path = "*"/> 
	</form:form>
