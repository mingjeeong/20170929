
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

<% if (request.getAttribute("flightAll") != null) {
		ArrayList<FlightDto> dto = (ArrayList<FlightDto>)request.getAttribute("flightAll");%> 
     	
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

<table>
	<tr><td> �����Ͻ� ���������� ������ȣ�� �Է��ϼ��� : <input type="text" name="updateNum"><input type="button" value="����"></td>
	</tr>
</table>
</body>
</html>