<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script type="text/javascript">

	function loginchk() {
		var regx = /^[a-zA-Z0-9]*$/;
		var e_id = document.form.e_id.value;
		var e_pw = document.form.e_pw.value;
		if (id.length == 0 || e_id == null) {
			alert("���̵� �Է��Ͻÿ�");
			document.form.e_id.focus();
			return;
		}
		if (!regx.test(e_id)) {
			alert("���̵�� ����, ���ڸ� �Է°����մϴ�.");
			document.form.e_id.focus();
			return false;
		}
		if (e_pw.length < 6 || e_pw == null) {
			alert("��й�ȣ�� 6�����̻��Դϴ�");
			document.form.e_pw.focus();
			return;
		}
		if (!regx.test(e_pw)) {
			alert("��й�ȣ�� ����, ���ڸ� �Է°����մϴ�.");
			document.form.e_pw.focus();
			return false;
		}
		document.employLoginForm.submit();
	}
</script>
</head>
<body>
<table width="1340" height="650" border="0">
  <tr>
  <td rowspan="3" width="10%" ></td>
   <td colspan="4" width="80%" height="15%">
   		<a href="Index.jsp">
		<img src="images/LOGO.jpg" width="200" height="100"></a>
		�ǳӿ��� ���հ����� �������Դϴ�.
		<hr>
	</td>
   <td rowspan="3" width="10%" ></td>
  </tr>
  <tr>
   <td width="80%" height="70%">
   	<table align="center">
   		<tr>
   		<td>
   		<form action="Controller" method="post" name="employLoginForm">
		<table align="right" style="padding-right:40px;" >
			<tr>
				<td>�����α���</td>
			</tr>
			<tr>
				<td>&nbsp;&nbsp;</td>
			</tr>
			<tr>
				<td>ID(���)
					<input type="text" size="10" maxlength="15" name="e_id" id="e_id">
				</td>
				<td rowspan="2" height="10px">
					<input type="hidden" name="action" value="e_login">
					<input type="submit"
						id="login" name="login" value="LOGIN" onclick="loginchk()">
				</td>
			</tr>
			<tr>
				<td>PW&nbsp;&nbsp; &nbsp;&nbsp; 
					<input type="password" size="10" maxlength="15" name="e_pw" id="e_pw">
				</td>
			</tr>
			<tr>
				<td>&nbsp;&nbsp;</td>
			</tr>
			<tr>
				<td colspan="2" >
					<input type="button" id="bt_join" name="bt_join" value="ȸ������" onclick="location='Join.jsp'"> 
					<input type="button" id="bt_resetpw" name="bt_resetpw" value="��й�ȣã��" onclick="location='FindPw.jsp'">
				</td>
			</tr>
		</table>
		</form>
   		</td>
   		<td>
   		<form action="${PATH}/Controller" method="post" name="form1">
		<table align="left" style="padding-right:40px" >
			<tr>
				<td>�����ڷα���</td>
			</tr>
			<tr>
				<td>&nbsp;&nbsp;</td>
			</tr>
			<tr>
				<td>ID &nbsp; <input type="text" size="10" maxlength="15" name="a_id" id="a_id">
				</td>
				<td rowspan="2" height="10px">
					<input type="hidden" name="action" value="a_login">
					<input type="submit" id="login" name="login" value="LOGIN" onclick="loginchk()">
				</td>
			</tr>
			<tr>
				<td>PW  <input type="password" size="10" maxlength="15" name="a_pw" id="a_pw">
				</td>
			</tr>
			<tr>
				<td>&nbsp;&nbsp;</td>
			</tr>
			<tr>
				<td>&nbsp;&nbsp;</td>
			</tr>
		</table>
		</form>
   		</td>
   		</tr>
   	</table>
   </td>
  </tr>
  <tr>
   <td colspan="4" width="100%" height="15%">
   </td>
  </tr>
 </table>
</body>
</html>