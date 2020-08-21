<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.card {
	margin: 45px;
	margin-left: 8px;
	border-style: ridge;
	padding: 8px;
	border-radius: 50px;
	width: 290px;
	margin-left: auto;
	margin-right: auto;
}

img {
	border-radius: 50%;
}

body {
	text-align: center;
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
</style>
</head>
<body>
	<a class="PostButton" href="/post/all-upload">Posts</a>

	<div class="card">


		<div>
			<img
				src="https://icatcare.org/app/uploads/2018/07/Thinking-of-getting-a-cat.png"
				width="60%" height="140px" />
		</div>
		<div>
			<h3>Id :&nbsp;&nbsp;${user.id}</h3>
			<p>
				<b>First name :</b>&nbsp;&nbsp;${user.firstname}
			</p>
			<p>
				<b>Last name :</b>&nbsp;&nbsp;${user.lastname}
			</p>
			<p>
				<b>Address :</b>&nbsp;&nbsp;${user.adress}
			</p>
			<p>
				<b>Phone :</b>&nbsp;&nbsp;${user.phone}
			</p>
			<p>
				<b>Email :</b>&nbsp;&nbsp;${user.email}
			</p>
			<p>
				<b>Gender :</b>&nbsp;&nbsp;${user.gender}
			</p>
			<p>
				<b>Languages :</b>&nbsp;&nbsp;${user.language}
			</p>
			<p>
				<b>City :</b>&nbsp;&nbsp;${user.city}
			</p>
			<p>
				<b>Pin :</b>&nbsp;&nbsp;${user.pin}
			</p>
			<p>
				<b>Relation :</b>&nbsp;&nbsp;${user.relation}
			</p>
		</div>
	</div>

</body>
</html>