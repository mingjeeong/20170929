<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import="java.util.ArrayList"%>
<%@page import="work.model.dto.AirplaneDto"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link type = "text/css" rel = "stylesheet" href = "css/MainStyle.css">
<title>Insert title here</title>
<script type="text/javascript">
	function filght_check() {

		if (document.flightSelect.f_date.value == "") {
			alert("��¥�� �Է¹ٶ��ϴ�.");
			document.flightSelect.f_date.focus();
			return false;
		}

		if (document.flightSelect.f_anum.value == "") {
			alert("������ȣ�� �Է¹ٶ��ϴ�.");
			document.flightSelect.f_anum.focus();
			return false;
		}

		if (document.flightSelect.f_fname.value == "") {
			alert("�̸��� �Է¹ٶ��ϴ�");
			document.flightSelect.f_fname.focus();
			return false;
		}

		if (document.flightSelect.leave_nation.value == "") {
			alert("������� �Է¹ٶ��ϴ�.");
			document.flightSelect.leave_nation.focus();
			return false;
		}

		if (document.flightSelect.f_levdate.value == "") {
			alert("��߽ð��� �Է¹ٶ��ϴ�.");
			document.flightSelect.f_levdate.focus();
			return false;
		}

		if (document.flightSelect.arrive_nation.value == "") {
			alert("�������� �Է¹ٶ��ϴ�.");
			document.flightSelect.arrive_nation.focus();
			return false;
		}
		if (document.flightSelect.f_arridate.value == "") {
			alert("�����ð��� �Է¹ٶ��ϴ�.");
			document.flightSelect.f_arridate.focus();
			return false;
		}
		if (document.flightSelect.f_gate.value == "") {
			alert("����Ʈ ��ȣ�� �Է¹ٶ��ϴ�.");
			document.flightSelect.f_gate.focus();
			return false;
		}

		document.flightSelect.submit();
	}

	function fnStartList(value) {
		var f = document.flightSelect;
		var opt = document.flightSelect.leave_city.length;
		if(value == ""){
			nation = new Array("==����==");
			vnation = new Array("");
		}else if(value == "KOR"){
			nation = new Array("����/����","��õ", "û��", "����");
			vnation = new Array("GMP", "ICN", "CNU","JJU");
		}else if(value == "JPN"){
			nation = new Array("����","������", "�����ī","��Ű����");
			vnation = new Array("TKO", "SPR", "HKO", "OKN");
		}else if(value == "CHI"){
			nation = new Array("����¡","������", "������", "�踲");
			vnation = new Array("BEI", "SHA", "GUG","GER");
		}
		else if(value == "USA"){
			nation = new Array("����","LA", "�ػ罺", "�÷θ���");
			vnation = new Array("NYK", "LAG", "TEX","FRI");
		}
		else if(value == "ITA"){
			nation = new Array("�θ�","�ж��", "�Ƿ�ü", ":���Ͻ�");
			vnation = new Array("ROM", "MIL", "FIO", "VEN");
		}
		
		for(var i=0; i<opt; i++){
			f.leave_city.options[0] = null;
		}
		
		for(k=0; k<nation.length; k++){
			f.leave_city.options[k] = new Option(nation[k],vnation[k]);
		}
	}
	
	function fnArriveList(value2) {
		var f2 = document.flightSelect;
		var opt2 = document.flightSelect.arrive_city.length;
		if(value2 == ""){
			city = new Array("==����==");
			vcity = new Array("");
		}else if(value2 == "KOR"){
			city = new Array("����/����","��õ", "û��", "����");
			vcity = new Array("GMP", "ICN", "CNU","JJU");
		}else if(value2 == "JPN"){
			city = new Array("����","������", "�����ī","��Ű����");
			vcity = new Array("TKO", "SPR", "HKO", "OKN");
		}else if(value2 == "CHI"){
			city = new Array("����¡","������", "������", "�踲");
			vcity = new Array("BEI", "SHA", "GUG","GER");
		}
		else if(value2 == "USA"){
			city = new Array("����","LA", "�ػ罺", "�÷θ���");
			vcity = new Array("NYK", "LAG", "TEX","FRI");
		}
		else if(value2 == "ITA"){
			city = new Array("�θ�","�ж��", "�Ƿ�ü", ":���Ͻ�");
			vcity = new Array("ROM", "MIL", "FIO", "VEN");
		}
		
		for(var i=0; i<opt2; i++){
			f2.arrive_city.options[0] = null;
		}
		
		for(k=0; k<city.length; k++){
			f2.arrive_city.options[k] = new Option(city[k],vcity[k]);
		}
	}

</script>
</head>
<body>

	<table>
		<tr>
			<td colspan="7" width="1536px" height="20px" align="right"><a href="Login.jsp">���Ǻκ�</a> </a></td>
		</tr>
	</table>
	<table width="100%">
		<tr style="font-size:22px; font-family:verdana,Courier,Monospace; text-decoration: none;">
			<td><a href="MainPage.jsp"><img src="images/LOGO.jpg"
					width="250px" height="80px"></a></td>
			<td bgcolor="#ffcc33" width="150px" height="80px" align="center"><a href = "#">Ƽ��</a></td>
			<td bgcolor="#ffcc33" width="150px" height="80px" align="center"><a href = "MainController?action=airplanemain">�����</a></td>
			<td bgcolor="#ffcc33" width="150px" height="80px" align="center"><a href = "FilghtMain.jsp">��������</a></td>
			<td bgcolor="#ffcc33" width="150px" height="80px" align="center"><a href = "MainController?action=noticemain">��������</a></td>
			<td bgcolor="#ffcc33" width="150px" height="80px" align="center"><a href = "#">Peanut Talk</a></td>
			<td bgcolor="#ffcc33" width="150px" height="80px" align="center"><a href = "#">MyPage</a></td>
			<td bgcolor="#ffcc33" width="150px" height="80px" align="center"><a href = "AdminPage.jsp">FlyPeanut</a></td>
		</tr>
	</table>
	
<table style = "float:left; width:300px;">
		
		<tr><td><h2> �װ��� �ȳ�</h2></td></tr>
		<tr><td><h4><a href="FlightView.jsp">�������� ��ȸ</a></h4></td></tr>
		<tr><td><h4><a href="FlightController?action=airplaneCall">�������� ���</a></h4></td></tr>
		<tr><td><h4><a href="FlightController?action=airplaneAll">�������� ����</a></h4></td></tr>
		<tr><td><h4><a href="FlightController?action=airplaneAll2">�������� ����</a></h4></td></tr>
</table>

	<form name ="flightSelect" action="FlightController" method="post">
		<table width="600px" border="1" cellpadding="0" cellspacing="0"
			align="center">
			<% if (request.getAttribute("flightCall") != null) {
				ArrayList<AirplaneDto> dto = (ArrayList<AirplaneDto>)request.getAttribute("flightCall");  %>
			<h3 align="center">�������� ���</h3>
			<tr>
				<td width="20%" align="left">��¥</td>
				<td colspan="2" width="60%" align="left"><input type="text" name="f_date"></td>
			</tr>
			<tr>
				<td width="20%" align="left">���� ��ȣ</td>
				<td colspan="2" width="60%" align="left">
				<select class="number" name="f_anum" size="1" onchange="make_month1()">
				
			
				<%for(int index=0; index<dto.size(); index++){ %>
					<option value="<%=dto.get(index).getaNum() %>"><%=dto.get(index).getaNum() %></option>
				<%}
				}%>
				</select>
				</td>
			</tr>
			<tr>
				<td width="20%" align="left">�̸�</td>
				<td colspan="2" width="60%" align="left"><input type="text" name="f_fname"></td>
			</tr>
			<tr>
				<td width="20%" align="left">�����</td>
				<td colspan="2" width="60%" align="left">
				
				<select id="leave_nation" name="leave_nation" size="1" onchange="fnStartList(this.value)">
				<option value="">==����==</option>
				<option value="KOR">���ѹα�</option>
				<option value="JPN">�Ϻ�</option>
				<option value="CHI">�߱�</option>
				<option value="USA">�̱�</option>
				<option value="ITA">��Ż����</option>
				</select>
				<select id="leave_city" name="leave_city" size="1" >
				<option value="">==����==</option>
				
				</select></td>
				
			</tr>
			<tr>
				<td width="20%" align="left">��߽ð�</td>
				<td colspan="2" width="60%" align="left"><input type="text"
					name="f_levdate">(ex. yyyy.mm.dd hh:mi)</td>
			</tr>
			<tr>
				<td width="20%" align="left">������</td>
				<td colspan="2" width="60%" align="left">
				<select id="arrive_nation" name="arrive_nation" size="1" onchange="fnArriveList(this.value)">
				<option value="">==����==</option>
				<option value="KOR">���ѹα�</option>
				<option value="JPN">�Ϻ�</option>
				<option value="CHI">�߱�</option>
				<option value="USA">�̱�</option>
				<option value="ITA">��Ż����</option>
				</select>
				<select id="arrive_city" name="arrive_city" size="1" >
				<option value="">==����==</option>
				
				</select></td></td>
			</tr>
			<tr>
				<td width="20%" align="left">�����ð�</td>
				<td colspan="2" width="60%" align="left"><input type="text"
					name="f_arridate">(ex. yyyy.mm.dd hh:mi)</td>
			</tr>
			<tr>
				<td width="20%" align="left">����Ʈ</td>
				<td colspan="2" width="60%" align="left"><input type="text"
					name="f_gate">(1~30)</td>
			</tr>

			<tr>
				<td colspan="3" width="100%" align="center" colspan="2">
					<table>
						<tr>
							<td width="50%" align="center">
							<input type="reset" value="�ʱ�ȭ"></td>
							<td colspan="2" width="50%" align="center"><input
								type="hidden" name="action" value="flightWrite"> <input
								type="button" value="���" onClick="filght_check()"></td>

						</tr>
					</table>

				</td>
			</tr>
		</table>
		
	</form>
</body>
</html>