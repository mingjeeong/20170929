<%@page import="work.model.dto.ReplyDto"%>
<%@page import="work.model.dto.BoardDto"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>�Խ���</title>
<script>
function modify(){
	document.detailForm.action = "Boardwrite.jsp";
	document.detailForm.submit();
}
</script>
</head>
<body>
<form name="detailForm" method="post" action="${PATH}/BoardController">
<table border="1" width="80%" align="center">
	<%
		BoardDto dto = (BoardDto)request.getAttribute("dto");
		if (dto != null) {
	%>
	<tr>
		<td align="center">
			<%= dto.getbTitle() %><input type="hidden" name="mo_title" value="<%= dto.getbTitle() %>">
		</td>
	</tr>
	<tr>
		<td align="right">
			<%= dto.getbDate() %><input type="hidden" name="mo_date" value="<%= dto.getbDate() %>">
		</td>
	</tr>
	<tr>
		<td>
			<%= dto.getbContext() %><input type="hidden" name="mo_context" value='<%= dto.getbContext() %>'>
		</td>
	</tr>
	<tr>
		<td align="right">
			<input type="hidden" name="mo_num" value=<%= dto.getbNum() %>>
			<input type="hidden" name="action" value=b_delete>
			<input type="button" value="����" name="btn_modify" onclick="modify()">
			<input type="submit" value="����" name="btn_delete">
		</td>
	</tr>
	<% } else { %>
	<tr>
		<td align="center">��ϵ� ���� �����ϴ�.</td>
	</tr>
	<% } %>
</table>

<br>

<!-- if �亯�� ���� ��� -->
<%
	if (request.getAttribute("rdto") != null){
		ReplyDto rdto = (ReplyDto)request.getAttribute("rdto");
%>
	<h3>�亯</h3>
	<table border="1" width="80%" align="center">
		<tr>
			<td align="right"><%= rdto.getrDate() %></td>
		</tr>
		<tr>
			<td><%= rdto.getrContent() %></td>
		</tr>
	</table>
	</td>
</tr>
<script>document.getElementById("btn_modify").disabled = true;</script>
<% } %>
</form>
</body>
</html>