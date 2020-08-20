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
	height: 1100px;
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

			<label>Your Image: </label>
			<form:input type="file" path="userPhoto" />
			<label>First Name: </label>
			<form:input path="firstname" />
			<label>Last Name: </label>
			<form:input path="lastname" />
			<label>Address: </label>
			<form:input path="adress" />
			<label>Phone Number: </label>
			<form:input path="phone" />
			<label>Email: </label>
			<form:input path="email" />
			<label>Gender: </label>
			<form:input path="gender" />
			<label>Language: </label>
			<form:input path="language" />
			<label>City:</label>
			<form:input path="city" />
			<label>Pin:</label>
			<form:input path="pin" />
			<label>Relation:</label>
			<form:input path="relation" />
			<label>Password:</label>
			<form:input path="password" />
			<br>
			<br>
			<button type="submit">Save</button>
		</form:form>
	</fieldset>

</body>
</html>