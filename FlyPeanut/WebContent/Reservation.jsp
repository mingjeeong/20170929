<%@page import="work.model.dto.FlightDto"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
 pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link type = "text/css" rel = "stylesheet" href = "css/MainStyle.css">
<title>�ð�ǥ ��ȸ</title>
<script type="text/javascript">
var nation1 = new Array("==����==");
var vnation1 = new Array("");
var nation2 = new Array("����/����","��õ", "û��", "����");
var vnation2 = new Array("GMP", "ICN", "CNU","JJU");
var nation3 = new Array("����","������", "�����ī","��Ű����");
var vnation3 = new Array("TKO", "SPR", "HKO", "OKN");
var nation4 = new Array("����¡","������", "������", "�踲");
var vnation4 = new Array("BEI", "SHA", "GUG","GER");
var nation5 = new Array("����","LA", "�ػ罺", "�÷θ���");
var vnation5 = new Array("NYK", "LAG", "TEX","FRI");
var nation6 = new Array("�θ�","�ж��", "�Ƿ�ü", "���Ͻ�");
var vnation6 = new Array("ROM", "MIL", "FIO", "VEN");

function selectList(name, convey, value) {
   for(i=document.getElementById(convey).length-1; i>=0; i--){
      document.getElementById(convey).options[i] = null;
   }
   switch(value){
   case "KOR":
      for (k=0; k<nation2.length; k++) {
         document.getElementById(convey).options[k] = new Option(nation2[k],vnation2[k]);
      }
      break;
   case "JPN":
      for (k=0; k<nation3.length; k++) {
         document.getElementById(convey).options[k] = new Option(nation3[k],vnation3[k]);
      }
      break;
   case "CHI":
      for (k=0; k<nation4.length; k++) {
         document.getElementById(convey).options[k] = new Option(nation4[k],vnation4[k]);
      }
      break;
   case "USA":
      for (k=0; k<nation5.length; k++) {
         document.getElementById(convey).options[k] = new Option(nation5[k],vnation5[k]);
      }
      break;
   case "ITA":
      for (k=0; k<nation6.length; k++) {
         document.getElementById(convey).options[k] = new Option(nation6[k],vnation6[k]);
      }
      break;
   default:
      for (k=0; k<nation1.length; k++) {
         document.getElementById(convey).options[k] = new Option(nation1[k],vnation1[k]);
      }
   }
}
function ticket(){
   var obj1 = document.getElementById("two");
   var choose = document.ReserForm.fly.value;
   if (choose == "1"){
      obj1.style.display = "none";
      document.ReserForm.btn_sub.style.width = "120px";
      document.ReserForm.btn_sub.style.height = "30px";
   } else {
      obj1.style.display = "";
      document.ReserForm.btn_sub.style.width = "120px";
      document.ReserForm.btn_sub.style.height = "70px";
   }
}
function selected(){
   document.ReserForm.action.value = "a_flight";
   document.ReserForm.radio.value = document.ReserForm.fly.value;
   document.ReserForm.submit();
}
function buy(){
   document.ReserForm.fly.value;
   document.ReserForm.
   document.ReserForm.action = 'Seatchoice.jsp';
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
			<td><a href="UserMain.jsp"><img src="images/LOGO.jpg" width="250px" height="80px"></a></td>
			<td bgcolor="#ffcc33" width="180px" height="80px" align="center"><a href = "Reservation.jsp">����</a></td>
			<td bgcolor="#ffcc33" width="180px" height="80px" align="center"><a href = "${PATH}/BoardController?action=b_list">���� �� �Խ���</a></td>
			<td bgcolor="#ffcc33" width="180px" height="80px" align="center"><a href = "MainController?action=noticemain">��������</a></td>
			<td bgcolor="#ffcc33" width="180px" height="80px" align="center"><a href = "javascript:modiInfor()">�������� ��ȸ</a></td>
			<td bgcolor="#ffcc33" width="180px" height="80px" align="center"><a href = "javascript:modiPass()">PW ����</a></td>
			<td bgcolor="#ffcc33" width="180px" height="80px" align="center"><a href = "Index.jsp">������ Page</a></td>
		</tr>
	</table>
	
<form name="ReserForm" method="post" action="${PATH}/AirController">
<h3>
   <% 
      String fly = "a";
      if (request.getAttribute("radioch") != null) {
         fly = (String)request.getAttribute("radioch");
      }
      if(fly.equals("2")) {
         out.println("<input type='radio' name='fly' value='1' onchange='ticket()'>��");
         out.println("<input type='radio' name='fly' value='2' checked onchange='ticket()'>�պ�");
      } else {
         out.println("<input type='radio' name='fly' value='1' checked onchange='ticket()'>��");
         out.println("<input type='radio' name='fly' value='2' onchange='ticket()'>�պ�");
      }
       %>
</h3>
<table align="center" width="50%" border="1">
   <tr>
      <td colspan="2" align="center">�����</td>
      <td colspan="2" align="center">������</td>
      <td></td>
   </tr>
   
   <tr>
      <td align="center">
         <select id="leave_nation1" name="leave_nation1" onchange="selectList(this.name, 'leave_city1', this.value)">
            <option value="">==����==</option>
            <option value="KOR">���ѹα�</option>
            <option value="JPN">�Ϻ�</option>
            <option value="CHI">�߱�</option>
            <option value="USA">�̱�</option>
            <option value="ITA">��Ż����</option>
         </select>
      </td>
      <td align="center">
         <select id="leave_city1" name="leave_city1">
            <option value="">==����==</option>
         </select>
      </td>
      <td align="center">
         <select id="arrive_nation1" name="arrive_nation1" onchange="selectList(this.name, 'arrive_city1', this.value)">
            <option value="">==����==</option>
            <option value="KOR">���ѹα�</option>
            <option value="JPN">�Ϻ�</option>
            <option value="CHI">�߱�</option>
            <option value="USA">�̱�</option>
            <option value="ITA">��Ż����</option>
         </select>
      </td>
      <td align="center">
         <select id="arrive_city1" name="arrive_city1">
            <option value="">==����==</option>
         </select>
      </td>
      <td rowspan="2" align="center">
         <input type="hidden" name="radio">
         <input type="hidden" name="action" value="a_flight">
         <input type="button" align="middle" name="btn_sub" value="����" onclick="selected()" style="width: 120px; height: 30px">
      </td>
   </tr>
   <% if(fly.equals("2")) { %>
   <tr id="two">
   <% } else { %>
   <tr id="two" style="display: none;">
   <% } %>
      <td align="center">
         <select id="leave_nation2" name="leave_nation2" onchange="selectList(this.name, 'leave_city2', this.value)">
            <option value="">==����==</option>
            <option value="KOR">���ѹα�</option>
            <option value="JPN">�Ϻ�</option>
            <option value="CHI">�߱�</option>
            <option value="USA">�̱�</option>
            <option value="ITA">��Ż����</option>
         </select>
      </td>
      <td align="center">
         <select id="leave_city2" name="leave_city2">
            <option value="">==����==</option>
         </select>
      </td>
      <td align="center">
         <select id="arrive_nation2" name="arrive_nation2" onchange="selectList(this.name, 'arrive_city2', this.value)">
            <option value="">==����==</option>
            <option value="KOR">���ѹα�</option>
            <option value="JPN">�Ϻ�</option>
            <option value="CHI">�߱�</option>
            <option value="USA">�̱�</option>
            <option value="ITA">��Ż����</option>
         </select>
      </td>
      <td align="center">
         <select id="arrive_city2" name="arrive_city2">
            <option value="">==����==</option>
         </select>
      </td>
   </tr>
</table>
</form>
<br><br>
<%
if (request.getAttribute("list1") != null){
   ArrayList<FlightDto> list1 = (ArrayList<FlightDto>)request.getAttribute("list1");
%>
<p align="center">
   <input type="button" value="�װ��� ����" style="width: 120px; height: 80px" onclick="buy()">
</p>
<br>
<table border="1" align="center" width="80%">
   <tr>
      <th></th>
      <th width="13%">��¥</th>
      <th width="10%">������ȣ</th>
      <th width="10%">���</th>
      <th width="13%">�����</th>
      <th width="15%">��߽ð�</th>
      <th width="13%">������</th>
      <th width="15%">�����ð�</th>
      <th width="*%">����Ʈ</th>
   </tr>
   <% if(list1.isEmpty()){ %>
         <tr>
            <td colspan="9" align="center">��ϵ� ������ �����ϴ�.</td>
         </tr>
   <%   } else {
      for(int i=0; i<list1.size(); i++){
         FlightDto dto = list1.get(i);
   %>
   <tr>
      <td align="center"><input type="radio" name="start" value=""></td>
      <td align="center"><%= dto.getfDate() %></td>
      <td align="center"><%= dto.getfANum() %></td>
      <td align="center"><%= dto.getfFName() %></td>
      <td align="center"><%= dto.getfLeave() %></td>
      <td align="center"><%= dto.getfLeaveDate() %></td>
      <td align="center"><%= dto.getfArrive() %></td>
      <td align="center"><%= dto.getfArriveDate() %></td>
      <td align="center"><%= dto.getfGate() %></td>
   </tr>
   <% } } %>
</table>
<% } %>
<br><br><br>
<%
if (request.getAttribute("list2") != null){
   ArrayList<FlightDto> list2 = (ArrayList<FlightDto>)request.getAttribute("list2");
%>
<table border="1" align="center" width="80%">
   <tr>
      <th></th>
      <th width="13%">��¥</th>
      <th width="10%">������ȣ</th>
      <th width="10%">���</th>
      <th width="13%">�����</th>
      <th width="15%">��߽ð�</th>
      <th width="13%">������</th>
      <th width="15%">�����ð�</th>
      <th width="*%">����Ʈ</th>
   </tr>
   <% if(list2.isEmpty()){ %>
         <tr>
            <td colspan="9" align="center">��ϵ� ������ �����ϴ�.</td>
         </tr>
   <%   } else {
      for(int i=0; i<list2.size(); i++){
         FlightDto dto = list2.get(i);
   %>
   <tr>
      <td align="center"><input type="radio" name="end"></td>
      <td align="center"><%= dto.getfDate() %></td>
      <td align="center"><%= dto.getfANum() %></td>
      <td align="center"><%= dto.getfFName() %></td>
      <td align="center"><%= dto.getfLeave() %></td>
      <td align="center"><%= dto.getfLeaveDate() %></td>
      <td align="center"><%= dto.getfArrive() %></td>
      <td align="center"><%= dto.getfArriveDate() %></td>
      <td align="center"><%= dto.getfGate() %></td>
   </tr>
   <% } } %>
</table>
<% } %>
</body>
</html>