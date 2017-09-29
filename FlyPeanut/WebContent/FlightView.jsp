<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import="work.model.dto.FlightDto"%>
<%@page import="java.util.ArrayList"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link type = "text/css" rel = "stylesheet" href = "css/MainStyle.css">
<title>Insert title here</title>
<script type="text/javascript">
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

<table style = "height:100px;">

	<tr>
		<td colspan ="2">�����</td>
		<td colspan = "2">������</td>
	</tr>
	<tr>
		<td><select id="leave_nation" name="leave_nation" size="1" onchange="fnStartList(this.value)">
				<option value="">==����==</option>
				<option value="KOR">���ѹα�</option>
				<option value="JPN">�Ϻ�</option>
				<option value="CHI">�߱�</option>
				<option value="USA">�̱�</option>
				<option value="ITA">��Ż����</option>
				</select></td>
		<td><select id="leave_city" name="leave_city" size="1" >
				<option value="">==����==</option>
				
				</select></td>
		<td><select id="arrive_nation" name="arrive_nation" size="1" onchange="fnArriveList(this.value)">
				<option value="">==����==</option>
				<option value="KOR">���ѹα�</option>
				<option value="JPN">�Ϻ�</option>
				<option value="CHI">�߱�</option>
				<option value="USA">�̱�</option>
				<option value="ITA">��Ż����</option>
				</select></td>
		<td><select id="arrive_city" name="arrive_city" size="1" >
				<option value="">==����==</option>
				
				</select></td>
				
		
	
	<input type = "hidden" name = "action" value="flightSelect">
	<td><input type="submit" value="����"></td>
	</tr>
</form>
</table>
<table style="width:800px;" border="1">

<tr>
	<th>��¥</th>
	<th>������ȣ</th>
	<th>���</th>
	<th>�����</th>
	<th>��߽ð�</th>
	<th>������</th>
	<th>�����ð�</th>
	<th>����Ʈ</th>
</tr>

<% if (request.getAttribute("flightview") != null) {
		ArrayList<FlightDto> dto = (ArrayList<FlightDto>)request.getAttribute("flightview");%> 
     	
     	<%for(int i=0; i<dto.size(); i++){ %>
		<tr>
			<td align="center"><%= dto.get(i).getfDate() %></td>
			<td align="center"><%= dto.get(i).getfANum() %></td>
			<td align="center"><%= dto.get(i).getfFName() %></td>
			<td align="center"><%= dto.get(i).getfLeave() %></td>
			<td align="center"><%= dto.get(i).getfLeaveDate() %></td>
			<td align="center"><%= dto.get(i).getfArrive() %></td>
			<td align="center"><%= dto.get(i).getfArriveDate() %></td>
			<td align="center"><%= dto.get(i).getfGate()%></td>
		</tr>
<%}
}
 %>

	
</table>
</body>
</html>