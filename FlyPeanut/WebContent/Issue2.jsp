<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<table width="1340" height="650" border="1">
  <tr>
  <td rowspan="3" width="10%" ></td>
   <td colspan="4" width="80%" height="15%">
   		<div style="text-align:right; width=300px; padding-right=10px"><%= session.getAttribute("e_kname") +"�� ȯ���մϴ�." %>
			<a href="Controller?action=myPage">����������</a>
			<a href="Controller?action=logout">�α׾ƿ�</a>
		</div> 
   		<a href="Menu1.jsp"><img src="images/logo.jpg" width="200" height="100"></a>
		�ǳӿ��� ���հ����� �������Դϴ�.<hr>
	</td>
   <td rowspan="3" width="10%" ></td>
  </tr>
  <tr>
   <td width="20%" height="70%">
   		<table width="250" height="200" border="1" cellpadding="10" align="center" >
   			<tr>
   				<td><h3>���� �޴�</h3><hr></td>
   			</tr>
   			<tr>
   				<td>><a href="Issue.jsp">�װ��� �߱�</a></td>
   			</tr>
   			<tr>
   				<td><a href="SearchTicket.jsp">�װ��� ��ȸ</a></td>
   			</tr>
   			<tr>
   				<td>><a href="CancelTicket.jsp">�װ��� ���</a></td>
   			</tr>
   			<tr>
   				<td><a href="bookTicket.jsp">�װ��� ����</a></td>
   			</tr>
   		</table>
   </td>
   <td width="60%" height="70%">
	<form action="Controller" method="post">
   	<table align="center" >
   		<tr>
   			<td><%= request.getAttribute("rname") %>�� ���Ϲ� �߰�</td>
   		</tr>
   		<tr>
   			<td><input type="radio" value="1" id="t_bagnum" name="t_bagnum" checked> 1Piece (�⺻) </td>
   		</tr>
   		<tr>
   			<td><input type="radio" value="2" id="t_bagnum" name="t_bagnum"  > 2Pieces </td>
   		</tr>
   		<tr>
   			<td><input type="radio" value="3" id="t_bagnum" name="t_bagnum" > 3Pieces </td>
   		</tr>
   	</table>
   		<div align="center"><input type="submit" id="nextIssue" name="nextIssue" value="����">
   			<input type="button" id="cancel" name="cancel" value="���" onclick="location='Menu1.jsp'">
   		</div>
   		<input type="hidden" name="action" value="nextIssue">
   	</form>
   </td>
</table>
</body>
</html>