<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link type = "text/css" rel = "stylesheet" href = "css/MainStyle.css">
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
			<td bgcolor="#ffcc33" width="180px" height="80px" align="center"><a href = "MainController?action=noticemain">��������</a></td>
			<td bgcolor="#ffcc33" width="180px" height="80px" align="center"><a href = "javascript:modiInfor()">�������� ��ȸ</a></td>
			<td bgcolor="#ffcc33" width="180px" height="80px" align="center"><a href = "javascript:modiPass()">PW ����</a></td>
			<td bgcolor="#ffcc33" width="180px" height="80px" align="center"><a href = "Index.jsp">������ Page</a></td>

		</tr>
	</table>
	<table>
		<tr>
			<td><img src="images/Seoul.JPG" width="320px" height="546px">
			</td>
			<td><img src="images/Busan.JPG" width="320px" height="546px">
			</td>
			<td><img src="images/Japan.JPG" width="320px" height="546px"></td>
			<td><img src="images/Moldiv.JPG" width="320px" height="546px">
			</td>
		</tr>

	</table>
</body>
</html>