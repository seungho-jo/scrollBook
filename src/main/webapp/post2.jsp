<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String path = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/main.css"/>
<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
<style>
</style>
<script type="text/javascript">
</script>
</head>
<body>
	<div class="main-wrap">
		<section>
			<div class="post_info">
				<div class="writer_img">
					<img src="img/cat.jpeg">
					<div class="writer_id">
						<span>jeongdoo_1</span>
					</div>
				</div>
				<div class="write_date">
					<span>2021.7.15&nbsp08:29</span>
				</div>
			</div>
			<div class="post_content">
				<img src="img/catcat.jpeg">
				<div class="post_under_img">
					<div class="post_icons">
						<div class="like" onclick="changeColor()">
							<i class="far fa-heart fa-lg"></i>
						</div>
						<i class="far fa-comment fa-lg"></i>
						<i class="fas fa-share-alt fa-lg"></i>
					</div>
					<div class="post_likes">
						<span>좋아요&nbsp245개</span>
					</div>
					<div class="post_under_icon">
						<div class="post_writer">
							<span>jeongdoo_1</span>
						</div>
						<div class="post_text">
							<span>혀 수납 못하는 중😺</span>
						</div>
					</div>
				</div>
				<div class="post_comment">
					<a href="mypage.jsp" id="comment_profile"><img src="img/bambi.jpg"></a>
					<div class="comment">
						<form action="#">
							<input name="comment" type="text" placeholder="댓글 달기..">
							<input name="submit" type="button" value="게시">
						</form>
				</div>
			</div>
		</section>
	</div>
</body>
<script type="text/javascript">
	var chImg = true;
	function changeColor(){
		var like = document.querySelector(".like");
		var cnt = document.querySelector(".post_likes");
		var full = '<i class="fas fa-heart fa-lg"></i>';
		var nfull = '<i class="far fa-heart fa-lg"></i>';
		var cnt1 = '<span>좋아요&nbsp246개</span>';
		var cnt0 = '<span>좋아요&nbsp245개</span>';
		if(chImg){
			like.innerHTML=full;
			cnt.innerHTML=cnt1;
		}else{
			like.innerHTML=nfull;
			cnt.innerHTML=cnt0;
		}
		
		chImg=!chImg;
		console.log(chImg);
	}
</script>
</html>