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
   		<div style="text-align:right; width=300px; padding-right=10px"  ><%= session.getAttribute("e_kname") +"�� ȯ���մϴ�." %>
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
   				<td><a href="CancelTicket.jsp">�װ��� ���</a></td>
   			</tr>
   			<tr>
   				<td><a href="bookTicket.jsp">�װ��� ����</a></td>
   			</tr>
   		</table>
   </td>
   <td width="60%" height="70%">
   <h3 align="center">�װ��� �߱�Ȯ�μ�</h3>
   <form action="Controller" method="post">
   	<div><table align="center" width="600" >
   		<tr>
   			<td>�°���/ Passenger Name</td>
   			<td> �޾ƿ���LEE/MINJEONG</td>
   		</tr>
   		<tr>
   			<td>�����ȣ/Booking Reference</td>
   			<td>�޾ƿ���PJCFW/G</td>
   		</tr>
   	</table></div>
   	<table border="1" align="center" width="600">
   		<tr>
   			<td colspan="3" background="black">���(Flight) Operated by �ǳ��װ�</td>
   		</tr>
   		<tr>
   			<td>���(Departure)</td>
   			<td>ICN : ��õ</td>
   			<td>��߽ð� 20170928 14:20</td>
   		</tr>
   		<tr>
   			<td>����(Arrival)</td>
   			<td>SIN : �̰�����</td>
   			<td>�����ð� 20171010 22:35</td>
   		</tr>
   		<tr></tr>
   	</table>
   	<table border="1" width="600" align="center">
   		<tr>
   			<td>���� ����ð�(Flight Time)</td>
   			<td colspan="3"></td>
   		</tr>
   		<tr>
   			<td>������(class)</td>
   			<td> F �۽�Ʈ/C ����Ͻ�/Y ���ڳ��</td>
   			<td></td>
   			<td></td>
   		</tr>
   		<tr>
   			<td>�������(Status)</td>
   			<td>OK</td>
   			<td></td>
   			<td></td>
   		</tr>
   		<tr>
   			<td>����(Fare Basis)</td>
   			<td>ELEKS(�պ� EX/�� PX) </td>
   			<td>��ȭ��(Baggage)</td>
   			<td>1Piece(s)</td>
   		</tr>
   	</table>
   	<table border="1" align="center" width="600">
   		<tr>
   			<td colspan="3" background="black">���(Flight) Operated by �ǳ��װ�</td>
   		</tr>
   		<tr>
   			<td>���(Departure)</td>
   			<td>SIN : �̰�����</td>
   			<td> ��߽ð� 20170928 14:20</td>
   		</tr>
   		<tr>
   			<td>����(Arrival)</td>
   			<td>  ICN : ��õ</td>
   			<td> �����ð� 20171010 22:35</td>
   		</tr>
   		<tr></tr>
   	</table>
	<table border="1" width="600" align="center">
   		<tr>
   			<td>���� ����ð�(Flight Time)</td>
   			<td colspan="3">000</td>
   		</tr>
   		<tr>
			<td>������(class)</td>
			<td> F �۽�Ʈ/C ����Ͻ�/Y ���ڳ��</td>
			<td>�װ��� ��ȿ�Ⱓ</td>
			<td>Not Valid Before</td>
   		</tr>
   		<tr>
			<td>�������(Status)</td>
			<td>OK</td>
			<td></td>
			<td>Not Valid After �޾ƿ���20171228(��� 6�����ı���)</td>
   		</tr>
   		<tr>
   			<td>����(Fare Basis)</td>
   			<td>ELEKS(�պ� EX/�� PX) </td>
   			<td>��ȭ��(Baggage)</td>
   			<td>1Piece(s)</td>
   		</tr>
   	</table>
   	<h3 align="center">�װ��� ����(Ticket Information for Airline Staff)</h3>
   	<table align="center" border="1" width="600">
   		<tr>
   			<td>Issue Date</td>
   			<td>00</td>
   		</tr>
   		<tr>
   			<td>Fare</td>
   			<td>KRW 590000</td>
   		</tr>
   		<tr>
   			<td rowspan="2">Taxes</td>
   			<td>KRW 28000 BP(��õ�װ���)</td>
   		</tr>
   		<tr><td>KRW 32700 XT(��Ÿ �������׼�)</td></tr>
   		<tr>
   			<td>Total</td>
   			<td>KRW 650700</td>
   		</tr>
   	</table>
   	<div align="center"><input type="submit" id="issue" name="issue" value="�߱�">
   		<input type="button" id="before" name="before" value="����" onclick="location='Issue2.jsp'">
   	</div>
   		<input type="hidden" name="action" value="issue">
   	</form>
   </td>
</table>
</body>
</html>