<!DOCTYPE html>
<#import "/spring.ftl" as spring />

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<#assign c=JspTaglibs["http://java.sun.com/jstl/core"]/>
<title>Employee Registration</title>
</head>
<body>
<h1>${headerMessagesg}</h1>
<h2>Employee Registration Edit</h2>
<form action="${projectpath}/register.do" method="POST">

	<table>
	    <tr>
			<td>Employee Id</td>
			<td><@spring.formInput 'employee.empId'   /></td>
		</tr>
	   	<tr>
			<td>Employee name</td>
			<td><@spring.formInput 'employee.empName'  "text" /></td>
		</tr>
		<tr>
			<td>Experience Level</td>
			<td><@spring.formInput 'employee.expLevel' /></td>
		</tr>
		<tr>
			<td>Organization</td>
			<td><@spring.formInput 'employee.organization'  "text" /></td>
		</tr>
		<tr>
			<td>Employee Email </td>
			<td><@spring.formInput 'employee.email'  "email"/></td>
		</tr>
		<tr>
			<td>Employee Phone </td>
			<td><@spring.formInput 'employee.phone'  "phone" /></td>
		</tr>
		<tr>
			<td>Employee City </td>
			<td><@spring.formInput 'employee.city'  "text"/></td>
		</tr>
		<tr>
			<td>Employee Stace </td>
			<td><@spring.formInput 'employee.state'  "text"/></td>
		</tr>
		<tr>
			<td>Employee Pincode </td>
			<td><@spring.formInput 'employee.pincode' "number" /></td>
		</tr>
		<tr>
			<td>Employee City </td>
			<td><@spring.formInput 'employee.country'   "text"/></td>
		</tr>
		<tr>
			<td colspan="2">
				<input type="submit" value="SUBMIT" /> <input type="reset" value="RESET" />
			</td>
		</tr>
	</table>
</form>