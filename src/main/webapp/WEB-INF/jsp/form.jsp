<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User details</title>
</head>
<style>
.hidden {
	display: none;
}

input {
	width: 90%;
	height: 30px;
	color: #2a2a72;
}

button {
	background-color: blue;
	color: white;
	padding: 10px 40px;
	text-align: center;
	display: inline-block;
	border-radius: 20px;
	cursor: pointer;
	border-color: black;
}

h2 {
	background: #2a2a72
}

fieldset {
	font-size: 30px;
	margin-top: 60px;
	text-align: center;
	background: #e7e7e7;
	border-style: ridge;
	border-radius: 50px;
}

body {
	margin: auto;
	width: 50%;
	color: white;
}
</style>
<body>
	<fieldset>
		<h2>USER DETAILS FORM</h2>
		<form:form action="/user/add-account" modelAttribute="userForm"
			method="POST">
			<div class="hidden">
				<label>_Id: </label> <br>
				<form:input path="id" />
			</div>
			<br>
			<br>
			<label>Your Image: </label>
			<br>
			<tr>
				<form:input type="file" path="userPhoto" />
			</tr>
			<br>
			<br>
			<label>First Name: </label>
			<br>
			<tr>
				<form:input path="firstname" />
			</tr>
			<br>
			<br>
			<label>Last Name: </label>
			<br>
			<tr>
				<form:input path="lastname" />
			</tr>
			<br>
			<br>
			<label>Address: </label>
			<br>
			<tr>
				<form:input path="adress" />
			</tr>
			<br>
			<br>
			<label>Phone Number: </label>
			<br>
			<tr>
				<form:input path="phone" />
			</tr>
			<br>
			<br>
			<label>Email: </label>
			<br>
			<tr>
				<form:input path="email" />
			</tr>
			<br>
			<br>
			<label>Gender: </label>
			<br>
			<tr>
				<form:input path="gender" />
			</tr>
			<br>
			<br>
			<label>Language: </label>
			<br>
			<tr>
				<form:input path="language" />
			</tr>
			<br>
			<br>
			<label>City:</label>
			<br>
			<tr>
				<form:input path="city" />
			</tr>
			<br>
			<br>
			<label>Pin:</label>
			<br>
			<tr>
				<form:input path="pin" />
			</tr>
			<br>
			<br>
			<label>Relation:</label>
			<br>
			<tr>
				<form:input path="relation" />
			</tr>
			<br>
			<br>
			<label>Password:</label>
			<br>
			<tr>
				<form:input path="password" />
			</tr>
			<br>
			<br>
			<button type="submit">Save</button>
		</form:form>
	</fieldset>

</body>
</html>