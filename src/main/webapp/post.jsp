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
	.writer_img img, #comment_profile img{
		width:30px;
		height:30px;
		border-radius: 70%;
		overflow: hidden;
	}
	.post_info{
	display : flex;
	align-items : flex-end;
	justify-content : space-between;
	margin-top : 50px;
	}
	.comment textarea{
	width: 460px;
	height : 25px;
    margin-left: 20px;
    font-size: 13px;
    text-align: left;
    outline: none;
    padding: 0;
    float: left;
    border:0;
    resize:none;
    line-height: 18px;
    text-align: start;
    cursor: text;
    font: 400 13.3333px Arial;

    min-height: 10px;
	}
	.comment textarea:focus{
		text-align : left;
		outline: none;
		font-size: 13px;
		caret-color: #22FF7B;
	}
	
</style>
<script type="text/javascript">
function resize(obj){
	obj.style.height = "1px";
	obj.style.height = (12+obj.scrollHeight)+"px";
}	
</script>
</head>
<body>
	<div class="main-wrap">
		<section>
			<%
			for(int cnt=0;cnt<=10;cnt++){
				String ids[] = {"bangbang23","jeoung_doo1","J0_seunghoo","0o_jin","hihimanan","ppaoppao","catangel","dogdogdog","not_y0Lo"};
				String time[] = {"02:23","23:47","18:29","00:23","08:24","10:01","14:10","17:58","19:18"};
				String img[] = {"cat.jpeg","catcat.jpeg","bambi.jpg","summer.jpg","yellow_tulip.jpg","튤립4.jpg","summer.png","튤립8.JPG","튤립6.jpg"};
				String like[] = {"2521","23","5","11","1309","34","992","3","1","0"};
			%>
			<div class="post_info">
				<div class="writer_img">
					<img src="img/cat.jpeg">
					<div class="writer_id">
						<span><%=ids[cnt] %></span>
					</div>
				</div>
				<div class="write_date">
					<span>2021.7.19&nbsp<%=time[cnt] %></span>
				</div>
			</div>
			<div class="post_content">
				<img ondblclick="dblclick()" src="img/<%=img[cnt] %>">
				<div class="post_under_img">
					<div class="post_icons">
						<div class="like"  onclick="changeColor()">
							<i class="far fa-heart fa-lg"></i>
						</div>
						<i class="far fa-comment fa-lg"></i>
						<div class="share" onclick="showPopup()">
						<i class="fas fa-share-alt fa-lg"></i>
						</div>
					</div>
					<div class="post_likes">
						<span>좋아요&nbsp<%=like[cnt] %>개</span>
					</div>
					<div class="post_under_icon">
						<div class="post_writer">
							<span>bangbang23</span>
						</div>
						<div class="post_text">
							<span>#게시글 내용</span>
						</div>
					</div>
				</div>

						<div id="comments">
							<%
							String content = request.getParameter("new_comment");
							if(content==null){content="";}
							%>
							<span><%=content %></span>
						</div>
				<div class="post_comment">
					<a href="mypage.jsp" id="comment_profile"><img src="img/bambi.jpg"></a>
					<div class="comment">
							<div class="comment-row">
							<form id="frm01">
								<textarea name="new_comment" placeholder="댓글 달기.." onkeydown="resize(this)" onkeyup="resize(this)"></textarea>
								<button type="submit" name="submit" onclick="warnEmpty()">게시</button>
							</form>
							</div>
					</div>
				</div>
			</div>
			<%} %>
		</section>
	</div>
</body>
<script type="text/javascript">
	function warnEmpty(){
		<%
		String content = request.getParameter("new_comment");
		if(content==null){
		%>
		alert("댓글을 입력해주세요");
		<%}%>
		document.querySelector("#frm01").submit();
	}
	var chImg = true;
	function changeColor(){
		var like = document.querySelector(".like");
		var cnt = document.querySelector(".post_likes");
		var full = '<i class="fas fa-heart fa-lg"></i>';
		var nfull = '<i class="far fa-heart fa-lg"></i>';
		var cnt1 = '<span>좋아요&nbsp1개</span>';
		var cnt0 = '<span>좋아요&nbsp0개</span>';
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
	function dblclick(){
		changeColor();
	}
	function showPopup() {
		if(!confirm("해당 게시물을 SNS로 공유하시겠습니까? 취소를 누르면 URL이 복사됩니다.")){
			var url = '';
			var textarea = document.createElement("textarea");
			document.body.appendChild(textarea);
			url = window.document.location.href;
			textarea.value = window.location.href;
			textarea.select();
			document.execCommand("copy");
			document.body.removeChild(textarea);
			alert("URL이 복사되었습니다.")
			return false;
		} 
		window.open("popup.jsp","팝업테스트","width=260, height=160, top=10, left=10");
	}

	
</script>
</html>