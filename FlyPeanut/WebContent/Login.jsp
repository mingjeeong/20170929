<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>�α���</title>
<script type="text/javascript">
function loginchk() {
	var regx = /^[a-zA-Z0-9]*$/;
	var memberid = document.form.m_id.value;
	var memberpw = document.form.m_pw.value;
	if (id.length == 0 || memberid == null) {
		alert("���̵� �Է��Ͻÿ�");
		document.form.memberid.focus();
		return;
	}
	if (!regx.test(memberid)) {
		alert("���̵�� ����, ���ڸ� �Է°����մϴ�.");
		document.form.memberid.focus();
		return false;
	}
	if (memberpw.length < 6 || memberpw == null) {
		alert("��й�ȣ�� 6�����̻��Դϴ�");
		document.form.memberpw.focus();
		return;
	}
	if (!regx.test(memberpw)) {
		alert("��й�ȣ�� ����, ���ڸ� �Է°����մϴ�.");
		document.form.memberpw.focus();
		return false;
	}
	document.mLoginForm.submit();
}

function modiInfor(){
	<% if (session.getAttribute("userId") != null){%>
		location.href="Passcheck.jsp";
	<%	} else { %>
			alert("�α������ּ���");
	<% } %>
}

function modiPass(){
	<% if (session.getAttribute("userId") != null){%>
		location.href="Repass.jsp";
	<%	} else { %>
			alert("�α������ּ���");
	<% } %>
}
</script>
</head>
<body>
<table>
	<tr>
		<% if (session.getAttribute("userId") != null){ %>
		<%= session.getAttribute("userId") %><span>�� ȯ���մϴ�.</span><a href="${PATH}/MemberController?action=m_logout">�α׾ƿ�</a>
		<% } %>
	</tr>
</table>
<table width="80%">
	<tr style="font-size:22px; font-family:verdana,Courier,Monospace; text-decoration: none; width:150px;">
		<td><a href="UserMain.jsp"><img src="images/LOGO.jpg" width="250px" height="80px"></a></td>
		<td bgcolor="#ffcc33" width="150px" height="80px" align="center"><a href = "Reservation.jsp">����</a></td>
		<td bgcolor="#ffcc33" width="150px" height="80px" align="center"><a href = "${PATH}/BoardController?action=b_list">���� �� �Խ���</a></td>
		<td bgcolor="#ffcc33" width="150px" height="80px" align="center"><a href = "#">��������</a></td>
		<td bgcolor="#ffcc33" width="150px" height="80px" align="center"><a href = "javascript:modiInfor()">�������� ��ȸ</a></td>
		<td bgcolor="#ffcc33" width="150px" height="80px" align="center"><a href = "javascript:modiPass()">PW ����</a></td>
	</tr>
</table>
<table width="1200" height="500" align="center" border="0">
	<tr>
		<td width="50%" height="70%">
		<form action="${PATH}/MemberController" method="post" name="mLoginForm">
		<table align="center">
			<tr>
				<td>ȸ�� �α���</td>
			</tr>
			<tr>
				<td>&nbsp;&nbsp;</td>
			</tr>
			<tr>
				<td>&nbsp;&nbsp;</td>
			</tr>
			<tr>
				<td>ID<span style="margin: 5px"/><input type="text" size="10" maxlength="15" name="m_id" id="m_id"></span>
				</td>
				<td rowspan="2" height="10px">
					<input type="hidden" name="action" value="m_login">
					<input type="submit" value="LOGIN" onclick="loginchk()">
				</td>
			</tr>
			<tr>
				<td>
					PW<span style="margin: 5px"/><input type="password" size="10" maxlength="15" name="m_pw" id="m_pw"></span>
				</td>
			</tr>
			<tr>
				<td>&nbsp;&nbsp;</td>
			</tr>
			<tr>
				<td>&nbsp;&nbsp;</td>
			</tr>
			<tr>
				<td colspan="2" >
					<input type="button" id="bt_join" name="bt_join" value="ȸ������" onclick="location='JoinName.jsp'">
					<input type="button" id="bt_idpw" name="bt_idpw" value="���̵� ��й�ȣã��" onclick="location='Search.jsp'">
				</td>
			</tr>
		</table>
		</form>
		</td>
	</tr>
</table>
</body>
</html>