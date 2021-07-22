<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/header.css">
</head>
<body>
	<header>
		<div class="head">
			<a id="title" href="main.jsp"><img src="img/title.png"></a>
			<div class="head_left">
				<a id="write" href="write.jsp"><img src="img/write.PNG"></a>
				<img id="refresh" src="img/refresh.PNG">
				<a id="save"><img src="img/save.PNG"></a>
				<img id="profile" src="img/bambi.jpg">
	<!--		<a href="index.jsp"><span>로그아웃</span></a>  -->
				<form action="tagsearch.jsp">
					<input type="text" placeholder="검색어를 입력하세요">
				</form> 
			</div>
		</div>
	</header>
</body>
<script type="text/javascript" src="js/header.js"></script>
</html>