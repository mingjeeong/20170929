<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%@page import="java.util.HashMap"%> 
<%@page import="java.util.ArrayList"%>
    
<%@page import="work.model.dto.AddressDto"%>
<%@page import="work.model.dto.AddressDto"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>�����ȣ</title>
<script>
function useAdd(){
	var radio = document.postForm.posted.value;
	var select = document.getElementById("post"+radio).innerText;
	window.opener.document.getElementById("modi_Post").value = select;
	window.opener.document.getElementById("modi_Add1").value = document.getElementById(radio).innerText;
	self.close();
}
</script>
</head>
<body>
<form name="postForm" method="post" action="${PATH}/AddressController">
<table border="1" width="100%">
	<tr>
		<th colspan="6">ã�� �ּ� �Է�(����/���θ� �Է�)</th>
	</tr>
	<tr>
		<td colspan="6" align="center">
			<input type="text" name="dong">
			<input type="submit" value="�˻�">
			<input type="hidden" name="action" value="searchPost">
		</td>
	</tr>
	<tr>
		<td width="5%"></td>
		<td width="30%">�����ȣ</td>
		<td width="70%">�ּ�</td>
	</tr>
	
	<%
		HashMap<Integer, AddressDto> dto = (HashMap)request.getAttribute("selectpost");
		if ((dto != null) && (!dto.isEmpty())) {
			for(int i=0; i<dto.size(); i++){
	%>
		<tr>
			<td align="center">
				<input type="radio" id="posted" name="posted" value="<%= i %>" onclick="useAdd()">
			</td>
			<td>
				<!-- �����ȣ �ҷ����� -->
				<span name="post<%= i %>" id="post<%= i %>"><%= dto.get(i).getPost() %></span>
			</td>
			<td><span id="<%= i %>">
				<%= dto.get(i).getSi()+" "+dto.get(i).getGu()+" "+dto.get(i).getRoad()+" "
			+dto.get(i).getRoadNum()+"("+dto.get(i).getDong()+", "+dto.get(i).getBuild()+")" %><br>
			<%= dto.get(i).getSubdong()+" "+dto.get(i).getDongNum() %></span>
			</td>
		</tr>
	<% 
			}
		} else {
	%>
		<tr>
			<td colspan="3">��ϵ� ������ �����ϴ�.</td>
		</tr>
	<% } %>
</table>
</form>
</body>
</html>