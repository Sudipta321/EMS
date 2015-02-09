<!DOCTYPE html>
<#import "/spring.ftl" as spring />

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<#assign c=JspTaglibs["http://java.sun.com/jstl/core"]/>



<script src="http://code.jquery.com/jquery-1.11.2.min.js"></script>
<script type="text/javascript">
      $(document).ready(function(){

     // alert("Some");

		$("#empName").blur(function(){
			if($(this).val()=="")
			{
				$("#errorName").html("<a font style='color:red'>Employee name is required</a>");
				$(this).focus();
			}
			else{
				$("#errorName").html("");
			}
		});


         $('#submitButton').click(function(){

             if($('#empId').val() == "")
   			{
   				alert("Employee Id is required");
   				$('#empId').focus();
   				return false;
   			}
   			if($('#empName').val() == "")
   			{
   				alert("Employee name is required");
   				$('#empName').focus();
   				return false;
   			}
   			if($('#expLevel').val() == "")
   			{
   				alert("Employee experience is required");
   				$('#expLevel').focus();
   				return false;
   			}
   			if($('#organization').val() == "")
   			{
   				alert("Employee organization is required");
   				$('#organization').focus();
   				return false;
   			}
   			
   			if($('#email').val() == "")
   			{
   				alert("Employee email is required");
   				$('#email').focus();
   				return false;
   			}
   			if($('#phone').val() == "")
   			{
   				alert("Employee phone is required");
   				$('#phone').focus();
   				return false;
   			}
   			if($('#city').val() == "")
   			{
   				alert("Employee city is required");
   				$('#city').focus();
   				return false;
   			}
   			if($('#state').val() == "")
   			{
   				alert("Employee state is required");
   				$('#state').focus();
   				return false;
   			}
   			if($('#pincode').val() == "")
   			{
   				alert("Employee pincode is required");
   				$('#pincode').focus();
   				return false;
   			}
   			if($('#country').val() == "")
   			{
   				alert("Employee country is required");
   				$('#country').focus();
   				return false;
   			}

   			});

   			$(".error").blur(function(){

   				if($(this).val()=="")
				{
					$("#errorId").html("EMP ID is required");
					$(this).focus();
				}
				else{
					$("#errorId").html("");
				}

   			});
      });
</script>
<title>Employee Registration</title>
</head>
<body>


<h1>${headerMessagesg}</h1>
<h2>Employee Registration</h2>
<form action="register.do" method="POST">
<@spring.bind "employee" />

	<table>
		<!-- <tr>
			<td>Employee ID</td>
			<td><@spring.formInput 'employee.empId'  /></td>
			<td><div id="errorId"></div></td>
		</tr> -->
		<tr>
			<td>Employee Name</td>
			<td><@spring.formInput 'employee.empName' /></td>
			<td><div id="errorName"></div></td>
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
			<td>Employee Email </td>
			<td><@spring.formInput 'employee.email' /></td>
		</tr>
		<tr>
			<td>Employee Phone </td>
			<td><@spring.formInput 'employee.phone' /></td>
		</tr>
		<tr>
			<td>Employee City </td>
			<td><@spring.formInput 'employee.city' /></td>
		</tr>
		<tr>
			<td>Employee Stace </td>
			<td><@spring.formInput 'employee.state' /></td>
		</tr>
		<tr>
			<td>Employee Pincode </td>
			<td><@spring.formInput 'employee.pincode' /></td>
		</tr>
		<tr>
			<td>Employee Country </td>
			<td><@spring.formInput 'employee.country' /></td>
		</tr>
		<tr>
			<td colspan="2">
				<input type="submit" value="SUBMIT" id="submitButton" /> <input type="reset" value="RESET" />
			</td>
		</tr>
	</table>
</form>