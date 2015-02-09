<!DOCTYPE html>
<#import "/spring.ftl" as spring />

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<#assign c=JspTaglibs["http://java.sun.com/jstl/core"]/>
<title>Employee Record</title>
</head>
<body>
<h1>${headerMessagesg}</h1>
<h2>Employee Details</h2>
<@spring.bind "employee" />
<table border="1">
	<th>ID</th>
	<th>Employee name</th>
	<th>Experience level</th>
	<th>Organization</th>
	<th>Email</th>
	<th>Phone</th>
	<th>City</th>
	<th>State</th>
	<th>Pincode</th>
	<th>Country</th>
	<th>Operation</th>
	<#list employeeList as employee>
		<tr>
			<td>${employee.empId}</td>
			<td>${employee.empName}</td>
			<td>${employee.expLevel}</td>
			<td>${employee.organization}</td>
		   	<td>${employee.email}</td>
			<td>${employee.phone}</td>
			<td>${employee.city}</td>
			<td>${employee.state}</td>
			<td>${employee.pincode}</td>
			<td>${employee.country}</td>
			<td>
			<a href="edit_employee/${employee.empId}">Edit</a>
  		    /
  		    <a href="delete_employee/${employee.empId}">Delete</a>
  		   </td>
		</tr>
	</#list>
</table>
</body>
</html>