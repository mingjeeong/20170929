<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>��й�ȣ ����</title>
</head>
<body>
<div align="right">
	<% if (session.getAttribute("userId") != null){ %>
	<%= session.getAttribute("userId") %><span>�� ȯ���մϴ�.</span><a href="${PATH}/MemberController?action=m_logout">�α׾ƿ�</a>
	<% }else{%>
	<a href="Login.jsp">�α���</a>
	<% }%>
	</div>
	
	

	<table width="90%">
		<tr style="font-size:22px; font-family:verdana,Courier,Monospace; text-decoration: none; width:150px;">
			<td><a href="UserMain.jsp"><img src="images/LOGO.jpg"
					width="250px" height="80px"></a></td>
			<td bgcolor="#ffcc33" width="180px" height="80px" align="center"><a href = "Reservation.jsp">����</a></td>
			<td bgcolor="#ffcc33" width="180px" height="80px" align="center"><a href = "${PATH}/BoardController?action=b_list">���� �� �Խ���</a></td>
			<td bgcolor="#ffcc33" width="180px" height="80px" align="center"><a href = "#">��������</a></td>
			<td bgcolor="#ffcc33" width="180px" height="80px" align="center"><a href = "javascript:modiInfor()">�������� ��ȸ</a></td>
			<td bgcolor="#ffcc33" width="180px" height="80px" align="center"><a href = "javascript:modiPass()">PW ����</a></td>
			<td bgcolor="#ffcc33" width="180px" height="80px" align="center"><a href = "Index.jsp">������ Page</a></td>

		</tr>
	</table>
<form name="rePass" action="${PATH}/MemberController" method="post">
<table>
	<tr>
		<td>���� ��й�ȣ</td>
		<td width="220px" align="right">
			<input type="password" name="gu_pw">
		</td>
	</tr>
	<tr>
		<td>�� ��й�ȣ</td>
		<td width="220px" align="right">
			<input type="password" name="new_pw">
		</td>
	</tr>
	<tr>
		<td>��й�ȣ Ȯ��</td>
		<td width="220px" align="right">
			<input type="password" name="new_confirm">
		</td>
	</tr>
	<tr><td><br></td></tr>
	<tr>
		<td colspan="2" align="right">
			<input type="hidden" name="action" value="re_pass">
			<input type="submit" value="��й�ȣ ����">
		</td>
	</tr>
</table>
</form>
</body>
</html>