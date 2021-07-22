<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = request.getParameter("email");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/mypage.css"/>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<div id="body">
		<section>
			<div id="shotBoard">

			</div>
			<div id="board">
				<div id="list">
					<ul>
						<li><img src="img/게시물.PNG"></li>
						<li><img src="img/컬랙션.PNG"></li>
						<li><img src="img/태그됨.PNG"></li>
					</ul>
				</div>
				<% 
					for(int i = 0; i<=8; i++){
				%>
				<a href="#"><img src="img/thumb02.jpg"></a>
				<%}%>
			</div>
		</section>
		<nav>
			<div>
				<table>
					<tr>
						<td colspan="2"><h4>Seungho_Jo</h4> &nbsp;&nbsp;<a href="#">프로필편집</a></td>
					</tr>
					<tr>
						<td>FOLLOWER</td>
						<td>FOLLOWING</td>
					</tr>
					<tr>
						<td>3.2M</td>
						<td>285</td>
					</tr>
				</table>
				<div class="box">
    				<img class="profile" src="img/thumb02.jpg">
				</div>
			</div>
			<hr>
			<p>현직 웹 개발자 밤에 잠 좀 자고 싶습니다</p>
		</nav>
		<div style="clear:both;"></div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
<script type="text/javascript" src="js/mypage.js"></script>
</html>