<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>post</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style type="text/css">
body {
	margin: 0;
	text-align: center;
}

.row {
	display: flex;
	background-color: #2a2a72;
}

.row input {
	font-size: 20px;
	position: absolute;
	color: white;
	right: 0;
	margin-right: 30px;
	border: 0;
}

.search-container {
	margin-top: 15px;
}

.submit1 {
	cursor: pointer;
	background-color: #009ffd;
	font-size: 20px;
	position: absolute;
	color: white;
	right: 0;
	margin-right: 30px;
	border: 0;
}

img {
	padding-top: 20px;
	border-radius: 50%;
}

.navTools {
	margin-left: 150px;
	color: white;
	text-decoration: none;
}

.card {
	font-size: 20px;
	margin: 50px;
	border-style: ridge;
	border-radius: 50px;
	width: 290px;
	margin-left: auto;
	margin-right: auto;
}

.caption {
	width: 100%;
}

.button1 {
	border: none;
	background-color: white;
	color: #2a2a72;
}

.button1:hover {
	cursor: pointer;
	font-size: 20px;
}

.footer {
	background-color: #2a2a72;
	margin-bottom: 40px;
}
</style>
</head>
<body>

	<div class="row">

		<h4>
			<a class="navTools" href="add">Add Post</a>
		</h4>

		<h4>
			<a class="navTools" href="/user/update">Update profile</a>
		</h4>
		<h4>
			<a class="navTools" href="/post/my-own-post">My own post</a>
		</h4>

		<h4>
			<a class="navTools" href="/logout">logout</a>
		</h4>

		<form action="/user/userbyname" class="search-container">
			<input type="text" style="color: black" placeholder="Search by name"
				name="name">
			<button type="submit" class="submit1">Search</button>
		</form>
	</div>
	<div>
		<c:forEach items="${userList}" var="userList">
			<div class="card">
				<img
					src="https://icatcare.org/app/uploads/2018/07/Thinking-of-getting-a-cat.png"
					width="60%" height="140px" />
				<h5 class="caption">${userList.caption}</h5>
				<h6>
					<a class="button1" href="/post/like/${userList.id}"> <i
						class="fa fa-thumbs-up"></i>
					</a> : ${userList.likes}
				</h6>
				<div class="footer">
					<h2 style="color: white;">${userList.userDetails.firstname}
						${userList.userDetails.lastname}</h2>

				</div>
			</div>

		</c:forEach>
	</div>

</body>
</html>