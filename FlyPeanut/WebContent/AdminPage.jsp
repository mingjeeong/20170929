<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">

<script type="text/javascript">
	function loginchk() {
		var regx = /^[a-zA-Z0-9]*$/;
		var memberid = document.form.memberid.value;
		var memberpw = document.form.memberpw.value;
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
		document.form.submit();
	}
</script>
<title>�α���</title>
</head>
<body>

	<table width="1400" height="650" align="center">
		<tr>
			<td colspan="2" width="100%" height="15%"><a href="#"><img
					src="images/LOGO.jpg" width="100" height="50"></a> �ǳӿ��� ���հ����� �������Դϴ�.
				<hr>
			</td>
		</tr>
		<tr>
			<td width="50%" height="70%">
				<form action="MainController" method="post" name="form1">

					<table align="center" >
						<tr>
							<td>�����α���</td>
						</tr>
						<tr>
							<td>&nbsp;&nbsp;</td>
						</tr>
						<tr>
							<td>ID(���) : <input type="text" size="10" maxlength="15"
								name="memberid" id="memberid">
							</td>
							<td rowspan="2" height="10px"><input type="submit"
								id="login" name="login" value="LOGIN" onclick="loginchk()"></td>
						</tr>
						<tr>
							<td>PW&nbsp;&nbsp; :&nbsp;&nbsp; <input type="password"
								size="10" maxlength="15" name="memberpw" id="memberpw">
							</td>
						</tr>
						<tr>
							<td>&nbsp;&nbsp;</td>
						</tr>
						<tr >
							<td colspan="2" ><input type="button" id="bt_join" name="bt_join"
								value="ȸ������" onclick="location='Join.jsp'"> <input type="button" id="bt_resetpw"
								name="bt_resetpw" value="��й�ȣã��" onclick="location='ResetPw.jsp'">
							</td>
						</tr>
					</table>
				</form>
			</td>
			<td width="50%" height="70%">
				<form action="MainController" method="post" name="form1">

					<table align="center" >
						<tr>
							<td>�����ڷα���</td>
						</tr>
						<tr>
							<td>&nbsp;&nbsp;</td>
						</tr>
						<tr>
							<td>ID : <input type="text" size="10" maxlength="15"
								name="memberid" id="memberid">
							</td>
							<td rowspan="2" height="10px">
							<input type="submit" id="login" name="login" value="LOGIN" onclick="loginchk()"></td>
						</tr>
						<tr>
							<td>PW : <input type="password"
								size="10" maxlength="15" name="memberpw" id="memberpw">
							</td>
						</tr>
						<tr>
							<td>&nbsp;&nbsp;</td>
						</tr>
						
					</table>
				</form>
			</td>
		</tr>
		<tr>
			<td colspan="2" width="100%" height="15%"></td>
		</tr>
	</table>
</body>
</html>