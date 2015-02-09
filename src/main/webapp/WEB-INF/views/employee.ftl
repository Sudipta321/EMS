<!DOCTYPE html>
<#import "/spring.ftl" as spring />

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<#assign c=JspTaglibs["http://java.sun.com/jstl/core"]/>
<title>Employee Management</title>
</head>
<body>
<h1>Employee Management System</h1>
<form action="employee.do" method="POST">
<@spring.bind "employee" />
	<table>
		<tr>
			<td>Employee ID</td>
			<td><@spring.formInput 'employee.empId' /></td>
		</tr>
		<tr>
			<td>Employee name</td>
			<td><@spring.formInput 'employee.empName' /></td>
		</tr>
		<tr>
			<td>Experience Level</td>
			<td><@spring.formInput 'employee.expLevel' /></td>
		</tr>
		<tr>
			<td>Organization</td>
			<td><@spring.formInput 'employee.organization' /></td>
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
</form>
<br>
<table border="1">
	<th>ID</th>
	<th>Employee name</th>
	<th>Experience level</th>
	<th>Organization</th>
	<#list employeeList as employee>
		<tr>
			<td>${employee.empId}</td>
			<td>${employee.empName}</td>
			<td>${employee.expLevel}</td>
			<td>${employee.organization}</td>
		</tr>
	</#list>
</table>
</body>
</html>