<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");
	String pwd = request.getParameter("pass");
	String url = "login.jsp";
	String msg = "�α��ο� �����Ͽ����ϴ�.";
	
	MemberDao dao = new MemberDao();
	System.out.println(id);
	System.out.println(pwd);
	
	if( id !=null){
		Member m = dao.getMember(id,pwd);
		if(id.equals(m.getEmail())&&pwd.equals(m.getPass())){
		session.setAttribute("idKey",id);
		msg = "�α��ο� �����Ͽ����ϴ�.";
		url = "main.jsp";
	}
	}
%>
<script>
	alert("<%=msg%>");
	location.href="<%=url%>";
</script>
