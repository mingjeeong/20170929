<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script type="text/javascript">
function reset(){
	document.resetForm.submit();
}
</script>
</head>
<body>
<form action="ResetInfo.jsp" method="post" name="resetForm">
<div style="text-align:right; width=300px; padding-right=10px"  >
   	<%= session.getAttribute("e_kname") +"�� ȯ���մϴ�." %>
	<a href="Controller?action=myPage">����������</a>
	<a href="Controller?action=logout">�α׾ƿ�</a>
</div> 
<table width="80%" align="center">
	<tr style="font-size:22px; font-family:verdana,Courier,Monospace; text-decoration: none;">
		<td width="20%"><a href="Menu1.jsp"><img src="images/LOGO.jpg" width="200px" height="80px"></a></td>
		<td bgcolor="#ffcc33" width="10%" height="80px" align="center"><a href="Menu1">�װ���</a></td>
		<td width="40%"></td>
	</tr>
</table>
<table>
  <tr>
   	<td width="20%" height="70%">
   		<table width="250px" height="400px" border="1" cellpadding="10" align="center"  >
   			<tr>
   				<td><h3>�� ����</h3><hr></td>
   			</tr>
   			<tr>
   				<td><a href="#">���� ����</a></td>
   			</tr>
   			<tr>
   				<td><a href="javascript:reset()">������ ����</a></td>
   			</tr>
   			<tr>
   				<td><a href="CheckPw.jsp">�����ȣ ����</a></td>
   			</tr>
   			<tr>
   				<td><a href="Delete.jsp">Ż���ϱ�</a></td>
   			</tr>
   		</table>
   </td>
   <td width="60%" height="70%">
  	<jsp:useBean id="dto" class="work.model.dto.EmployeeDto" scope="request" />
   	<table border="1" align="center" width="500px" height="400px" style="margin-top:30px;">
		<tr>
			<th>���</th>
			<td>${requestScope.dto.eId}</td>
		</tr>
		<tr>
			<th rowspan="2">�̸�</th>
			<td>(�ѱ�)${requestScope.dto.eKname}</td>
		</tr>
		<tr>
			<td><input type="hidden" value="${requestScope.dto.eEfname} ${requestScope.dto.eElname}" name="e_ename">
				(����)${requestScope.dto.eEfname}${requestScope.dto.eElname}
			</td>
		</tr>
		<tr>
			<th>�������</th>
			<td><input type="hidden" value="${requestScope.dto.eBirth}" name="e_birth">
				${requestScope.dto.eBirth}
			</td>
		</tr>
		<tr>
			<th>�޴��� ��ȣ</th>
			<td><input type="hidden" value="${requestScope.dto.eMobile}" name="e_mobile">
				${requestScope.dto.eMobile}
			</td>
		</tr>
		<tr>
			<th>�̸���</th>
			<td><input type="hidden" value="${requestScope.dto.eEmail}" name="e_email">
				${requestScope.dto.eEmail}
			</td>
		</tr>
		<tr>
			<th>�ּ�</th>
			<td><input type="hidden" value="${requestScope.dto.eAddress}" name="e_address">
				${requestScope.dto.eAddress}
			</td>
		</tr>
	</table>
	<div align="center" >
		<input type="submit" name="goChangInfo" id="goChangInfo" value="����"  >
	</div>	
   </td>
  </tr>
  <tr>
   <td colspan="4" width="100%" height="15%">
   </td>
  </tr>
 </table>
 </form>
</body>
</html>