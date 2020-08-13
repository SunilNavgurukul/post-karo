<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="webjars/jquery/3.0.0/jquery.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<style>
body {
	margin: 0;
}

.row {
	display: flex;
	background-color: #2a2a72;
}

.search-container input {
	font-size: 20px;
	position: absolute;
	color: white;
	right: 0;
	margin-right: 30px;
	right: 0;
	border: 0;
}

.a {
	width: 50%;
	float: left;
	margin-left: 30px;
	color: white;
}

.search-container {
	width: 50%;
	float: right;
	margin-top: 25px;
}

.addButton {
	cursor: pointer;
	background-color: #2a2a72;
	color: white;
	padding: 15px 32px;
	text-align: left;
	border: none;
	font-size: 16px;
	margin: 4px 2px;
	float: right;
}

.addButton:hover {
	background-color: #e7e7e7;
}

.submit1 {
	cursor: pointer;
	background-color: #009ffd;
	font-size: 20px;
	position: absolute;
	color: white;
	right: 0;
	margin-right: 30px;
	right: 0;
	border: 0;
}

.submit1:hover {
	background-color: #e7e7e7;
	font-size: 20px;
	position: absolute;
	color: white;
	right: 0;
	margin-right: 30px;
	right: 0;
	border: 0;
}

select {
	background: white;
	border: none;
	cursor: pointer;
	appearance: none;
	-webkit-appearance: none;
	-moz-appearance: none;
}

table {
	font-family: arial, sans-serif;
	border-collapse: collapse;
	width: 100%;
}

td, th {
	border: 1px solid #dddddd;
	text-align: left;
	padding: 8px;
}

a {
	text-decoration: none
}

th {
	text-align: Center;
}

tr:nth-child(even) {
	background-color: #dddddd;
}
</style>

</head>
<body>
	<div class="container">
		<div class="row">
			<div class="a">
				<h1>Students Details</h1>
			</div>
			<div class="search-container">

				<form action="home">
					<input type="text" style="color: black"
						placeholder="Search by name" name="name">
					<button type="submit" class="submit1">Search</button>
				</form>
			</div>
		</div>
		<br>
		<c:url value="/user/add" var="addUser" />
		<a href="${addUser }">
			<button class="addButton">
				<b>Add +</b>
			</button>
		</a>

		<div id="userList">
			<table>
				<thead>

					<tr>

						<th><form>
								USER ID &nbsp<select name="option" onchange='this.form.submit()'>
									<option>+</option>
									<option value="normal">Normal</option>
									<option value="asc_id">ASC</option>
									<option value="dac_id">DES</option>

								</select>

							</form></th>
						<th><form>
								USER NAME &nbsp<select name="option"
									onchange='this.form.submit()'>
									<option>+</option>
									<option value="normal">Normal</option>
									<option value="asc_name">ASC</option>
									<option value="dac_name">DES</option>

								</select>
							</form></th>
						<th>DATE OF BIRTH</th>
						<th>PHONE NUMBER</th>
						<th>PAN/AADHAR</th>
						<th colspan="2">ACTION</th>
					</tr>
				</thead>
				<tbody>

					<c:forEach items="${userList}" var="userList">
						<tr>
							<td>${userList.id}</td>
							<td>${userList.name}</td>
							<td>${userList.dateOfBirth}</td>
							<td>${userList.phoneNum}</td>
							<td>${userList.uniqueId}</td>
							<td><c:url value="update/${userList.id}" var="updateUser" />
								<a href="${updateUser }">Update</a></td>
							<td><c:url value="delete/${userList.id}" var="deleteUser" />
								<a href="${deleteUser }">Delete</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>


