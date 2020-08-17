<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Upload Post</title>
<style type="text/css">
body {
	text-align: center;
}
h2 {
	margin-top: 50px;
}
.hidden {
	display: none;
}
.card {
	font-size: 30px;
	margin: 50px;
	border-style: ridge;
	padding: 8px;
	border-radius: 50px;
	width: 290px;
	margin-left: auto;
	margin-right: auto;
}
.botton {
	cursor: pointer;
	background-color: #009ffd;
	font-size: 20px;
	color: white;
	border: 0;
	border-radius: 10px;
}
</style>
</head>
<body>

	<h2>Add Photo</h2>
	<form:form action="/post/add-post" class="card" modelAttribute="userPost" method="POST">
			<div class="hidden">
				<label>_Id: </label> <br>
					<form:input path="id" />
			</div>
			<br>
			<br>
			<tr>
				<form:input type="file" path="postimg" />
			</tr>
			<br>
			<br>
			<label>Add caption: </label>
			<br>
			<tr>
				<form:input path="caption" />
			</tr>
			<br>
			<button type="submit" class="botton">Save</button>
		</form:form>

</body>
</html>