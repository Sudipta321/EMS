<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="/WEB-INF/views/includes.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Employee Management</title>
</head>
<body>
<h1>Employee Management System</h1>
<form:form action="employee.do" method="POST" commandName="employee">
	<table>
		<tr>
			<td>Employee ID</td>
			<td><form:input path="empId" /></td>
		</tr>
		<tr>
			<td>Employee name</td>
			<td><form:input path="empName" /></td>
		</tr>
		<tr>
			<td>Experience Level</td>
			<td><form:input path="expLevel" /></td>
		</tr>
		<tr>
			<td>Organization</td>
			<td><form:input path="organization" /></td>
		</tr>
		<tr>
			<td colspan="2">
				<input type="submit" name="action" value="Add" />
				<input type="submit" name="action" value="Edit" />
				<input type="submit" name="action" value="Delete" />
				<input type="submit" name="action" value="Search" />
			</td>
		</tr>
	</table>
</form:form>
<br>
<table border="1">
	<th>ID</th>
	<th>Employee name</th>
	<th>Experience level</th>
	<th>Organization</th>
	<c:forEach items="${employeeList}" var="employee">
		<tr>
			<td>${employee.empId}</td>
			<td>${employee.empName}</td>
			<td>${employee.expLevel}</td>
			<td>${employee.organization}</td>
		</tr>
	</c:forEach>
</table>
</body>
</html>