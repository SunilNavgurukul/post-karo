<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
a {
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
button {
	border: none;
	background-color: white;
	color: #2a2a72;
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
</style>
</head>
<body>
<div class="row">
		<h4>
			<a href="/post/all-upload"><i class="fa fa-angle-left"></i> Home</a>
		</h4>
	</div>
	<div>
		<c:forEach items="${userList}" var="userList">
			<div class="card">
				<div class="header">
					<br> <br>
				</div>
				<img
					src="https://icatcare.org/app/uploads/2018/07/Thinking-of-getting-a-cat.png"
					width="60%" height="140px" />
				<h5 class="caption">${userList.caption}</h5>
				<h6>
					<button>
						<i class="fa fa-thumbs-up"></i>
					</button>
					: ${userList.likes}
				</h6>
				<div class="footer">
					<br> <br>
				</div>
			</div>

		</c:forEach>
	</div>
</body>
</html>