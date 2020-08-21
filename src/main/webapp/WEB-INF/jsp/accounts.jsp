<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>All-Users</title>
<style type="text/css">

.addButton {
	background-color: blue;
	color: white;
	padding: 10px 25px;
	text-align: center;
	border-radius: 20px;
	float: right;
	text-decoration: none;
}

.PostButton {
	background-color: blue;
	color: white;
	padding: 10px 25px;
	text-align: center;
	border-radius: 20px;
	float: left;
	text-decoration: none;
}

img {
	border-radius: 50%;
}

img:hover {
	border-color: white;
	border-style: solid;
	border-radius: 5px 80px;
}

.grid-container {
	display: grid;
	grid-template-columns: auto auto auto;
}

.card:hover {
	background-color: lightgray;
	color: white;
	border-style: solid;
	border-color: gray;
}

h3:hover {
	color: black;
	cursor: pointer;
}

p:hover {
	color: black;
	cursor: pointer;
}

.card {
	margin: 45px;
	margin-left : 8px;
	border-style: ridge;
	padding: 8px;
	border-radius: 50px;
	width: 290px;
}

i {
	color: black;
}

i:hover {
	color: gray;
}

@media only screen and (max-width: 736px) {
	body {
		margin-top: 20px;
	}
	.addButton {
		float: none;
		margin-left: 30%;
	}
	.grid-container {
		grid-template-columns: auto;
		margin-left: 0px;
	}
	.card {
		margin-left: auto;
		margin-right: auto;
	}
	img {
		margin-top: 20px;
		margin-left: 30px;
	}
}
</style>
</head>
<body>
	<a class="addButton" href="add">Add Account</a>
	<a class="PostButton" href="/post/all-upload">Posts</a>
	<div class="grid-container" style="text-align: center;">
		<c:forEach items="${userList}" var="userList">
			<div class="card">
				<c:url value="update/${userList.id}" var="UpdateUser" />
				<a class="icon" style="float: left; margin-left: 2rem;"
					href="${UpdateUser }"><i style="font-size: 2rem"
					class="fa fa-edit"></i></a>
				<c:url value="delete/${userList.id}" var="deleteUser" />
				<a class="icon" style="float: right; margin-right: 2rem;"
					href="${deleteUser }"><i style="font-size: 2rem"
					class="fa fa-trash"></i></a>
				<div>
					<img
						src="https://icatcare.org/app/uploads/2018/07/Thinking-of-getting-a-cat.png"
						width="60%" height="140px" />
				</div>
				<div>
					<h3>Id :&nbsp;&nbsp;${userList.id}</h3>
					<p>
						<b>First name :</b>&nbsp;&nbsp;${userList.firstname}
					</p>
					<p>
						<b>Last name :</b>&nbsp;&nbsp;${userList.lastname}
					</p>
					<p>
						<b>Address :</b>&nbsp;&nbsp;${userList.adress}
					</p>
					<p>
						<b>Phone :</b>&nbsp;&nbsp;${userList.phone}
					</p>
					<p>
						<b>Email :</b>&nbsp;&nbsp;${userList.email}
					</p>
					<p>
						<b>Gender :</b>&nbsp;&nbsp;${userList.gender}
					</p>
					<p>
						<b>Languages :</b>&nbsp;&nbsp;${userList.language}
					</p>
					<p>
						<b>City :</b>&nbsp;&nbsp;${userList.city}
					</p>
					<p>
						<b>Pin :</b>&nbsp;&nbsp;${userList.pin}
					</p>
					<p>
						<b>Relation :</b>&nbsp;&nbsp;${userList.relation}
					</p>
				</div>
			</div>
		</c:forEach>

	</div>
</body>
</html>