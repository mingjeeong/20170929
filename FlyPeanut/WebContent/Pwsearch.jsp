<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>��й�ȣ ã��</title>
</head>
<body>
<form action="${PATH}/MemberController" name="pwsearchForm" method="post">
<table>
	<tr>
		<td>���̵�</td>
		<td>
			<input type="text" name="id_search">
		</td>
	</tr>
	<tr>
		<td>�̸�</td>
		<td>
			<input type="text" name="name_search">
		</td>
	</tr>
	<tr>
		<td>��ȭ��ȣ</td>
		<td>
			<select name="mobile_search1" style="width: 80px">
				<option value="0">����</option><option value="010">010</option>
				<option value="011">011</option><option value="016">016</option>
				<option value="017">017</option><option value="018">018</option>
				<option value="019">019</option>
			</select>
			<span>-</span><input type="text" name="mobile_search2" style="width: 80px" maxlength="4">
			<span>-</span><input type="text" name="mobile_search3" style="width: 80px" maxlength="4">
		</td>
	</tr>
	<% if (request.getAttribute("selectPw") != null){ %>
		<tr>
			<td colspan="2" align="center">
				<%= request.getAttribute("selectPw") %>
			</td>
		</tr>
	<% } %>
	<tr>
		<td colspan="2" align="center">
			<input type="hidden" name="action" value="m_pw">
			<input type="submit" value="��й�ȣ ã��">
			<input type="button" value="�α���" onclick="location.href='Login.jsp'">
			<input type="button" value="����" onclick="location.href='Login.jsp'">
		</td>
	</tr>
</table>
</form>
</body>
</html>