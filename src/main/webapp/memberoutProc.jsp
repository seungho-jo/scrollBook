<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "project6.*"
%>
<%
	request.setCharacterEncoding("utf-8");	//요청값에 대한 한글 encoding처리.
	String id = request.getParameter("id");
	String pass = request.getParameter("pass");
	String repass = request.getParameter("repass");
	MemberDao dao = new MemberDao();
	System.out.println(id);
	System.out.println(pass);
	System.out.println(repass);
	
	boolean inDel = false;
	if(id!=null){
		inDel = dao.deleteMember(new Member(id,pass));
	
	}
	
%>

<script>
	var inDel = <%=inDel%>;
	if(inDel){
		if(confirm("회원탈퇴 되었습니다. \n이용해주셔서 감사합니다.")){
			location.href = "login.jsp";
		}
		else{
			if(confirm("회원탈퇴에 실패하였습니다.")){
				location.href = "memberout.jsp";
			}
		}
	}
</script>
