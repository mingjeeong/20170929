<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script  type="text/javascript">
	/*�ߺ�Ȯ�� �� ����ϱ�*/
	function useId2() {
		window.opener.document.getElementById('e_id').value=document.getElementById('e_id').value;
		window.opener.document.getElementById('e_id').readOnly=true;
		window.close();
	}
	/*�ߺ�Ȯ��*/
	function isid() {
		alert("<%=request.getAttribute("result")%>");
	
	document.checkid.submit();
	}	
	function checkkeyup() {
		document.getElementById('useId').disabled = true;

	}
</script>
</head>
<body>
<h3>��� �ߺ�Ȯ��</h3><hr>
<form name="checkid" id="checkid" action="Controller" method="post">
<table align="center">
	<tr>
		<td>��� <input type="text" id="e_id" name="e_id" onkeyup="checkkeyup()" ></td>
		<td><input type="button" value="�ߺ�Ȯ��" onclick="isid()" >
		</td>
		<td><input type="button" value="����ϱ�" id="useId" name="useId" onclick="useId2()" maxlength="20" disabled></td>
		<td><input type="button" value="â�ݱ�" onclick="window.close()"></td>
	</tr>
	<tr><td align="center"><span id="text"></span></td></tr>
	
</table>
			<input type="hidden" name="action" value="idCheck">

<% 
	if(request.getAttribute("result") != null){
		if ((boolean)request.getAttribute("result")){
	%>
	<script>document.getElementById('useId').disabled = true;
	document.getElementById('text').innerHTML="�ߺ��� ���̵� ����";
	</script>
	<% } else { %>
	<script>document.getElementById('useId').disabled = false;
	document.getElementById('text').innerHTML="�ߺ��� ���̵� ���� ��밡��";</script>
	<% } %>
	<% }%>
</form>

</body>
</html>