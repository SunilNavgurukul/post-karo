<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My posts</title>
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

.button1 {
	border: none;
	background-color: white;
	color: #2a2a72;
}

.button1:hover {
	cursor: pointer;
	font-size: 20px;
}

.caption {
	width: 100%;
}

.header {
	background-color: #2a2a72;
	margin-top: 40px;
}

.footer {
	background-color: #2a2a72;
	margin-bottom: 40px;
}

i {
	margin-top: 8px;
	color: #2a2a72;
}
</style>
</head>
<body>
	<div class="row">
		<h4>
			<a class = "navTools" href="/post/all-upload"><i class="fa fa-angle-left" style="color: white; font-size: 20px;"></i> Home</a>
		</h4>
	</div>
	<div>
		<c:forEach items="${userList}" var="userList">
			<div class="card">
				<c:url value="/post/update/${userList.id}" var="UpdateUser" />
				<a class="icon" style="float: left; margin-left: 2rem;"
					href="${UpdateUser }"><i style="font-size: 2rem"
					class="fa fa-edit"></i></a>
				<c:url value="/post/delete/${userList.id}" var="deleteUser" />
				<a class="icon" style="float: right; margin-right: 2rem;"
					href="${deleteUser }"><i style="font-size: 2rem"
					class="fa fa-trash"></i></a> <img
					src="https://icatcare.org/app/uploads/2018/07/Thinking-of-getting-a-cat.png"
					width="60%" height="140px" />
				<h5 class="caption">${userList.caption}</h5>
				<h6>
					<a class="button1" href="/post/like/${userList.id}"> <i
						class="fa fa-thumbs-up"></i>
					</a> : ${userList.likes}

				</h6>
				<div class="footer">
					<br>
				</div>
			</div>

		</c:forEach>
	</div>
</body>
</html>