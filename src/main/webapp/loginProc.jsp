<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	String pwd = request.getParameter("pass");
	String url = "login.jsp";
	String msg = "로그인에 실패 하였습니다.";

	
	if(id.equals("jsh95320@naver.com")&&pwd.equals("1111")){
		session.setAttribute("idKey" ,id);
		msg = "로그인에 성공 하였습니다.";
		url = "main.jsp";
	}
%>
<script>
	alert("<%=msg%>");
	location.href="<%=url%>";
</script>