<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script type="text/javascript">
function init() {
	document.joinform.e_id.focus();
}
function join(){
	var id = document.joinform.e_id.value;
	var kname = document.joinform.e_kname.value;
	var efname = document.joinform.e_efname.value;
	var elname = document.joinform.e_elname.value;
	var pw = document.joinform.e_pw.value;
	var birthyear = document.joinform.e_birthyear.value;
	var birthmonth = document.joinform.e_birthmonth.value;
	var birthdate = document.joinform.e_birthdate.value;
	var sex = document.joinform.e_sex.value;
	var email1 = document.joinform.e_email1.value;
	var email2 = document.joinform.e_email2.value;
	var mobile1 = document.joinform.e_mobile1.value;
	var mobile2 = document.joinform.e_mobile2.value;
	var mobile3 = document.joinform.e_mobile3.value;
	var address = document.joinform.e_address.value;
	
	if(id.trim().length==0){
		alert("����� �Է��� �ּ���");
		document.joinform.e_id.focus();
	}else if(kname.trim().length==0){
		alert("�̸��� �Է��� �ּ���");
		document.joinform.e_kname.focus();
	}else if(efname.trim().length==0){
		alert("���� �̸��� �Է��� �ּ���");
		document.joinform.e_efname.focus();
	}else if(elname.trim().length==0){
		alert("���� �̸��� �Է��� �ּ���");
		document.joinform.e_elname.focus();
	}else if(pw.trim().length==0){
		alert("��й�ȣ�� �Է��� �ּ���");
		document.joinform.e_pw.focus();
	}else if(birthyear.trim().length==0){
		alert("  ������� ���� �Է��� �ּ���");
		document.joinform.e_birthyear.focus();
	}else if(birthmonth.trim().length==0){
		alert("  ������� ���� �Է��� �ּ���");
		document.joinform.e_birthmonth.focus();
	}else if(birthdate.trim().length==0){
		alert("  ������� ���� �Է��� �ּ���");
		document.joinform.e_birthdate.focus();
	}else if(sex.trim().length==0){
		alert("������ �Է��� �ּ���");
		document.joinform.e_sex.focus();
	}else if(email1.trim().length==0){
		alert("�̸����� �Է��� �ּ���");
		document.joinform.e_email1.focus();
	}else if(email2.trim().length==0){
		alert("�̸����� �Է��� �ּ���");
		document.joinform.e_email2.focus();
	}else if(mobile1.trim().length==0){
		alert("����ó�� �Է��� �ּ���");
		document.joinform.e_mobile1.focus();
	}else if(mobile2.trim().length==0){
		alert("����ó�� �Է��� �ּ���");
		document.joinform.e_mobile2.focus();
	}else if(mobile3.trim().length==0){
		alert("����ó�� �Է��� �ּ���");
		document.joinform.e_mobile3.focus();
	}else if(address.trim().length==0){
		alert("�ּҸ� �Է��� �ּ���");
		document.joinform.e_address.focus();
	}
	document.joinform.submit();
}

function idcheck() {
	var url = 'Idcheck.jsp';
	var winName = 'idCheck';
	var winConfig = 'top=100,left=100,height=250,width=520,resizable=no,scrollbar=no';
	var childWin = window.open(url, winName, winConfig);
	var e_id = document.getElementById("e_id").value.trim();
}

function checkpw2() {
	var e_pwElement = document.getElementById("e_pw");
	var e_pw2Element = document.getElementById("e_pw2");
	
	if (e_pwElement.value != e_pw2Element.value) {
		alert("��й�ȣ�� �������� �ʽ��ϴ�. �ٽ� Ȯ�����ּ���");
		e_pwElement.focus();
	}
}

function selectEmail(email) {
	
	if (joinform.e_email1.value.trim().length == 0) {
		alert("�̸����� �Է����ּ���");
		document.joinform.e_email1.focus();
		console.log(email);
		console.log(email.options[0].values);
		joinform.e_email3.value = email.options[0].value;
	} else {
		if (email.value == "�����Է�") {
			joinform.e_email2.value = "";
			document.joinform.e_email2.readOnly = false;
			joinform.e_email2.style.background = "#ffffff";
		} else {
			joinform.e_email2.value = email.value;
			document.joinform.e_email2.readOnly = true;
		}
	}
}

function checkPw() {
	var pw = document.getElementById("e_pw").value;
	var length = pw.trim().length;

	if (length < 6) {
		alert("��й�ȣ�� 6�ڸ��̻� �Է��� �ּ���");
		documetn.joinform.e_pw.focus();
	} 
}

window.onload = function() {
	init();
}
</script>
</head>
<body>
<table width="1340" height="650" border="1">
  <tr>
  <td rowspan="3" width="10%" ></td>
   <td colspan="4" width="80%" height="15%">
   		<a href="Index.jsp"><img src="images/logo.jpg" width="200" height="100"></a>
		�ǳӿ��� ���հ����� �������Դϴ�.<hr>
	</td>
   <td rowspan="3" width="10%" ></td>
  </tr>
  <tr>
   <td width="80%" height="70%">
    <h3>ȸ������</h3><hr>
	>��� �׸���
	<u><b>�ʼ� �Է�</b></u>�Դϴ�. ��Ȯ�� �Է��Ͻø� ���� ���ϰ� �̿��Ͻ� �� �ֽ��ϴ�.<br><br>
   	<form name="joinform" action="Controller" method="post">
	<table border="1"  align="center" >
		<tr>
			<th >���</th>
			<td><input type="text" name="e_id" id="e_id" size="20" maxlength="20" >
				<input type="button" name="checkId" id="checkId" value="�ߺ�Ȯ��" onclick="idcheck()" >
			</td>
		</tr>
		<tr>
			<th rowspan="2">�̸�</th>
			<td>(�ѱ�) <input type="text" name="e_kname" id="e_kname"
				size="20" maxlength="20"></td>
		</tr>
		<tr>
			<td>(����) ��(family name)<input type="text" name="e_efname" id="e_efname"
				size="15" maxlength="20">�̸�(last name)<input type="text" name="e_elname" id="e_elname"
				size="15" maxlength="20">
			</td>
		</tr>
		<tr>
			<th class="thcolor">����</th>
			<td><input type="radio" value="e" checked id="e_state" name="e_state" >E
			</td>
		</tr>
		<tr>
		<th>��й�ȣ</th>
		<td><input type="password" name="e_pw" id="e_pw" size=20 maxlength="20" >
			<span>*6~20�ڸ� �Է��� �ּ���</span>
		</td>
		</tr>
		<tr>
		<th>��й�ȣ Ȯ��</th>
		<td><input type="password" name="e_pw2" id="e_pw2" size=20 maxlength="20" onblur="checkpw2()" >
			<span>*���� ��й�ȣ�� �ѹ� �� �Է��� �ּ���</span>
		</td>
		</tr>
		<tr>
			<th>�������</th>
			<td><input  type ="text" name="e_birthyear" id="e_birthyear" size="10" maxlength="4">��
				 <select name="e_birthmonth" id="e_birthmonth"><option value="">����</option>
					<option value="1">01</option>
					<option value="2">02</option>
					<option value="3">03</option>
					<option value="4">04</option>
					<option value="5">05</option>
					<option value="6">06</option>
					<option value="7">07</option>
					<option value="8">08</option>
					<option value="9">09</option>
					<option value="10">10</option>
					<option value="11">11</option>
					<option value="12">12</option>
				</select>�� 
				<select name="e_birthdate" id="e_birthdate"><option value="">����</option>
					<option value="1">01</option>
					<option value="2">02</option>
					<option value="3">03</option>
					<option value="4">04</option>
					<option value="5">05</option>
					<option value="6">06</option>
					<option value="7">07</option>
					<option value="8">08</option>
					<option value="9">09</option>
					<option value="10">10</option>
					<option value="11">11</option>
					<option value="12">12</option>
					<option value="13">13</option>
					<option value="14">14</option>
					<option value="15">15</option>
					<option value="16">16</option>
					<option value="17">17</option>
					<option value="18">18</option>
					<option value="19">19</option>
					<option value="20">20</option>
					<option value="21">21</option>
					<option value="22">22</option>
					<option value="23">23</option>
					<option value="24">24</option>
					<option value="25">25</option>
					<option value="26">26</option>
					<option value="27">27</option>
					<option value="28">28</option>
					<option value="29">29</option>
					<option value="30">30</option>
					<option value="31">31</option>
			</select>��  
		</td>
	</tr>
	<tr>
		<th>����</th>
		<td><input type="radio" name="e_sex" id="e_sex" value="��">��
			<input type="radio" name="e_sex" id="e_sex" value="��">��
		</td>
	</tr>
	<tr>
		<th>�̸���</th>
		<td><input type="text" name="e_email1" id="e_email1" size=10 maxlength="20">@
			<input type="text" name="e_email2" id="e_email2" size=10 maxlength="20">
			<select name="e_email3" id="e_email3" onchange="selectEmail(this)" >
				<option value="�����Է�">�����Է�</option>
				<option value="naver.com">naver.com</option>
				<option value="nate.com">nate.com</option>
				<option value="hanmail.net">hanmail.net</option>
				<option value="daum.com">daum.com</option>
				<option value="gamil.com">gmail.com</option>
			</select>
		</td>
	</tr>
	<tr>
		<th class="thcolor">����ó</th>
		<td><input type="text" name="e_mobile1" id="e_mobile1" size="10" maxlength="3" value="010">- 
			<input type="text" name="e_mobile2" id="e_mobile2" size="10" maxlength="4">- 
			<input type="text" name="e_mobile3" id="e_mobile3" size="10" maxlength="4">
		</td>
	</tr>
	<tr>
		<th class="thcolor">�ּ�</th>
		<td><input type="text" name="e_address" id="e_address" size="100"></td>
		</tr>
	</table>
	<div align="center" >
		<input type="hidden" name="action" value="join">
		<input type="button" name="go" id="go" value="Ȯ��" onclick="join()">
		<input type="reset" name="reset" id="reset" value="�ʱ�ȭ">
		<input type="button" name="cancel" id="cancel" value="���" onclick="location='Index.jsp'">
	</div>
	</form>
   </td>
  </tr>
  <tr>
   <td colspan="4" width="100%" height="15%">
   </td>
  </tr>
 </table>
</body>
</html>