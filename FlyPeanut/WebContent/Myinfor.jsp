<%@page import="work.model.dto.MemberDto"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% 
	String[] allNation = {"���ѹα�", "�̱�", "�Ϻ�", "�߱�"};
	String[] allNation1 = {"korea", "usa", "japen", "china"};
	String[] allMobile = {"::: ���� :::", "010", "011", "016", "017", "018", "019"};
	String[] allMobile1 = {"0", "010", "011", "016", "017", "018", "019"};
	String[] allDomain = {"::: ���� :::", "naver.com", "dreamwiz.com", "hanmail.net", 
			"empal.com", "yahoo.co.kr", "nate.com", "gmail.com", "hotmail.com", "�����Է�"};
	String[] allDomain1 = {"0", "naver.com", "dreamwiz.com", "hanmail.net", 
			"empal.com", "yahoo.co.kr", "nate.com", "gmail.com", "hotmail.com", "9"};
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>������ ��ȸ</title>
<script>
function selectDomain(){
	var domain1 = document.modiForm.modi_Domain1;
	var domain2 = document.modiForm.modi_Domain2;
	if (domain2.value == 0){
		domain1.readOnly = true;
		domain1.value = "";
	} else if (domain2.value == 9) {
		domain1.readOnly = false;
		domain1.value = "";
	} else {
		domain1.readOnly = true;
		domain1.value = domain2.value;
	}
}
function searchPost(){
	var url = "Address.jsp";
	var winName = "Post";
	var winChar = "width=800, height=500";
	var childWin = window.open(url, winName, winChar);
}
function modiMyinfor(){
	document.modiForm.action.value = "b_modify";
	document.modiForm.submit();
}
function withdraw(){
	document.modiForm.action.value = "b_delete";
	document.modiForm.submit();
}
function move(){
	location.href="Login.jsp";
}
</script>
</head>
<body>
<%
	MemberDto dto = (MemberDto)request.getAttribute("myinfor");
%>
<div align="right">
	<% if (session.getAttribute("userId") != null){ %>
	<%= session.getAttribute("userId") %><span>�� ȯ���մϴ�.</span><a href="${PATH}/MemberController?action=m_logout">�α׾ƿ�</a>
	<% }else{%>
	<a href="Login.jsp">�α���</a>
	<% }%>
	</div>
	
	

	<table width="90%">
		<tr style="font-size:22px; font-family:verdana,Courier,Monospace; text-decoration: none; width:150px;">
			<td><a href="UserMain.jsp"><img src="images/LOGO.jpg"
					width="250px" height="80px"></a></td>
			<td bgcolor="#ffcc33" width="180px" height="80px" align="center"><a href = "Reservation.jsp">����</a></td>
			<td bgcolor="#ffcc33" width="180px" height="80px" align="center"><a href = "${PATH}/BoardController?action=b_list">���� �� �Խ���</a></td>
			<td bgcolor="#ffcc33" width="180px" height="80px" align="center"><a href = "#">��������</a></td>
			<td bgcolor="#ffcc33" width="180px" height="80px" align="center"><a href = "javascript:modiInfor()">�������� ��ȸ</a></td>
			<td bgcolor="#ffcc33" width="180px" height="80px" align="center"><a href = "javascript:modiPass()">PW ����</a></td>
			<td bgcolor="#ffcc33" width="180px" height="80px" align="center"><a href = "Index.jsp">������ Page</a></td>

		</tr>
	</table>
<form name="modiForm" action="${PATH}/MemberController"  method="post">
<table border="1">
	<tr>
		<td>���̵�</td>
		<td colspan="3">
			<input type="text" name="modi_Id" value="<%= session.getAttribute("userId") %>" readonly>
			<input type="hidden" name="modi_Pw" value="<%= dto.getPw() %>">
		</td>
	</tr>
	<tr>
		<td>�̸�(�ѱ�)</td>
		<td colspan="3">
			<input type="text" name="modi_Kname" value="<%= dto.getkName() %>" readonly>
		</td>
	</tr>
	<tr>
		<td>�̸�(����)</td>
		<td colspan="3">
			<input type="hidden" name="modi_eLast" value="<%= dto.geteLastName() %>">
			<input type="hidden" name="modi_eFirst" value="<%= dto.geteFristName() %>">
			<input type="text" name="modi_Ename" value="<%= dto.geteLastName()+dto.geteFristName() %>" readonly>
		</td>
	</tr>
	<tr>
		<td>����</td>
		<td colspan="3">
			<input type="text" name="modi_Birth" value="<%= dto.getBirth() %>" readonly>
		</td>
	</tr>
	<tr>
		<td>����</td>
		<td align="center">
			<select name="modi_Nation" style="width: 120px">
				<%
					for (int i = 0; i < allNation.length; i++){
						if (allNation1[i].equals(dto.getNation())){
							out.println("<option value=\""+ allNation1[i] +"\" selected=\"selected\">" + allNation[i] + "</option>");
						} else {
							out.println("<option value=\""+ allNation1[i] +"\">" + allNation[i] + "</option>");
						}
					}
				%>
			</select>
		</td>
		<td>����</td>
		<td>
			<%
				if (dto.getSex().equals("M")){
					out.println("<input type=\"radio\" name=\"modi_Sex\" value=\"M\" checked disabled>����");
					out.println("<input type=\"radio\" name=\"modi_Sex\" value=\"F\" disabled>����");
				} else {
					out.println("<input type=\"radio\" name=\"modi_Sex\" value=\"M\" disabled>����");
					out.println("<input type=\"radio\" name=\"modi_Sex\" value=\"F\" checked disabled>����");
				}
			%>
		</td>
	</tr>
	<tr>
		<td>��ȭ��ȣ</td>
		<td colspan="3">
			<%
				String[] mobile = dto.getMobile().split("-");
			%>
			<select name="modi_Mobile1" style="width: 80px" onchange="sel_mobile()">
				<%
					for (int i = 0; i < allMobile1.length; i++){
						if (allMobile1[i].equals(mobile[0].trim())){
							out.println("<option value=\""+ allMobile1[i] +"\" selected=\"selected\">" + allMobile[i] + "</option>");
						} else {
							out.println("<option value=\""+ allMobile1[i] +"\">" + allMobile[i] + "</option>");
						}
					}
				%>
			</select>
			<span>-</span><input type="text" name="modi_Mobile2" value="<%= mobile[1].trim() %>" style="width: 80px" onkeyup="in_mobile()" maxlength="4">
			<span>-</span><input type="text" name="modi_Mobile3" value="<%= mobile[2].trim() %>" style="width: 80px" maxlength="4">
		</td>
	</tr>
	<tr>
		<td>�̸���</td>
		<td colspan="3">
			<%
				String[] email = dto.getEmail().split("@");
			%>
			<input type="text" name="modi_Email" value="<%= email[0].trim() %>" style="width: 120px"><span>@</span>
			<input type="text" name="modi_Domain1" style="width: 120px" readonly>
			<select name="modi_Domain2" style="width: 120px" onchange="selectDomain()">
				<%
					for (int i = 0; i < allDomain1.length; i++){
						if (!email[1].trim().equals(allDomain1[i])){
							out.println("<option value=\""+ allDomain1[i] +"\">" + allDomain[i] + "</option>");
							%>
							<script>
								document.modiForm.modi_Domain1.value = "<%= email[1].trim() %> ";
							</script>
							<%
						} else {
							out.println("<option value=\""+ email[1].trim() +"\" selected=\"selected\">" + email[1].trim() + "</option>");
							%>
							<script>
								document.modiForm.modi_Domain1.value = "<%= email[1].trim() %> ";
							</script>
							<%
						}
					}
				%>
			</select>
		</td>
	</tr>
	<tr>
		<td>SMS ���ŵ���</td>
		<td colspan="3">
			<%
				if (dto.getSms().equals("Y")){
					out.println("<input type=\"radio\" name=\"modi_Sms\" value=\"Y\" checked>����");
					out.println("<input type=\"radio\" name=\"modi_Sms\" value=\"N\">����");
				} else {
					out.println("<input type=\"radio\" name=\"modi_Sms\" value=\"Y\">����");
					out.println("<input type=\"radio\" name=\"modi_Sms\" value=\"N\" checked>����");
				}
			%>
		</td>
	</tr>
	<tr>
		<td>E-Mail ���ŵ���</td>
		<td colspan="3">
			<%
				if (dto.getEmail().equals("Y")){
					out.println("<input type=\"radio\" name=\"modi_Echeck\" value=\"Y\" checked>����");
					out.println("<input type=\"radio\" name=\"modi_Echeck\" value=\"N\">����");
				} else {
					out.println("<input type=\"radio\" name=\"modi_Echeck\" value=\"Y\">����");
					out.println("<input type=\"radio\" name=\"modi_Echeck\" value=\"N\" checked>����");
				}
			%>
		</td>
	</tr>
	<tr>
		<td>�ּ�</td>
		<td colspan="3">
			<%
				String modiPost = "";
				String modiAdd1 = "";
				String modiAdd2 = "";
				if ((dto.getAddress() != null) && (dto.getAddress().trim().length() > 3)) {
					System.out.println("jsp : "+dto.getAddress());
					String[] address = dto.getAddress().split("\\|");
					modiPost = address[0].trim();
					modiAdd1 = address[1].trim();
					modiAdd2 = address[2].trim();
				}
			%>
			<input type="text" id="modi_Post" name="modi_Post" value="<%= modiPost %>" readonly>
			<input type="button" name="post" value="�����ȣ" onclick="searchPost()"><br>
			<input type="text" id="modi_Add1" name="modi_Add1" value="<%= modiAdd1 %>">
			<input type="text" name="modi_Add2" value="<%= modiAdd2 %>">
		</td>
	</tr>
	<tr>
		<td colspan="4" align="center">
			<input type="hidden" name="action" value="b_modify">
			<input type="button" value="���� ����" onclick="modiMyinfor()">
			<input type="button" value="ȸ�� Ż��" onclick="withdraw()">
			<input type="button" value="����" onclick="move()">
		</td>
	</tr>
</table>
</form>
</body>
</html>