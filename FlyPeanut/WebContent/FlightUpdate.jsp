
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import="work.model.dto.FlightDto"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link type = "text/css" rel = "stylesheet" href = "css/MainStyle.css">
<title>Insert title here</title>
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
<% 
	if (request.getAttribute("flightUpView") != null) {
		FlightDto fdto = (FlightDto)request.getAttribute("flightUpView"); 
	
%>

<table align="center">
<form name ="flightUpdate" action="FlightController" method="post">
<h3 align="center">�������� ����</h3>
			<tr>
				<td width="20%" align="left">��¥</td>
				<td colspan="2" width="60%" align="left"><input type="text" name="f_date" value="<%=fdto.getfDate() %>" readonly></td>
			</tr>
			<tr>
				<td width="20%" align="left">���� ��ȣ</td>
				<td colspan="2" width="60%" align="left">
				<input type="text" name="f_anum" value="<%=fdto.getfANum() %>" readonly>
				</td>
			</tr>
			<tr>
				<td width="20%" align="left">�̸�</td>
				<td colspan="2" width="60%" align="left"><input type="text" name="f_fname" value="<%= fdto.getfFName() %>" readonly></td>
			</tr>
			<tr>
				<td width="20%" align="left">�����</td>
				<td colspan="2" width="60%" align="left">
				<input type="text" name="f_leave" value="<%= fdto.getfLeave() %>" readonly>
				</td>
				
			</tr>
			<tr>
				<td width="20%" align="left">��߽ð�</td>
				<td colspan="2" width="60%" align="left"><input type="text"
					name="f_levdate" value="<%=fdto.getfLeaveDate()%>">(ex. yyyy.mm.dd hh:mi)</td>
			</tr>
			<tr>
				<td width="20%" align="left">������</td>
				<td colspan="2" width="60%" align="left">
				<input type="text" name = "f_arrive" value="<%= fdto.getfArrive() %>" readonly>
			</tr>
			<tr>
				<td width="20%" align="left">�����ð�</td>
				<td colspan="2" width="60%" align="left"><input type="text"
					name="f_arridate" value="<%= fdto.getfArriveDate()%>">(ex. yyyy.mm.dd hh:mi)</td>
			</tr>
			<tr>
				<td width="20%" align="left">����Ʈ</td>
				<td colspan="2" width="60%" align="left"><input type="text" name="f_gate" value=<%=fdto.getfGate() %>>(1~30)</td>
			</tr>
			
			
			<%} %>

</table>
<table align="center">
	<tr>
		<td><input type="hidden" name="action" value="flightUpdate"><input type="submit" value="����"></td>
	</tr>
</table>
</form>
</body>
</html>