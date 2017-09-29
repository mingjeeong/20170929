<%@page import="work.model.dto.BoardDto"%>
<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	String[] allselect = {"3��", "5��", "10��", "15��"};
	int[] allselect1 = {3, 5, 10, 15};
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>�Խ���</title>
<script>
function load(){
	document.boardForm.submit();
}
function detailPage(number){
	document.getElementById("action").value = "b_detail";
	document.getElementById("b_num").value = number;
	document.boardForm.submit();
}
function selected(choice) {
	document.boardForm.show.value = choice;
	document.boardForm.listed.value = 1;
	document.boardForm.submit();
}
function listmove(choice){
	document.boardForm.listed.value = choice;
	document.boardForm.submit();
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
	<% if (request.getAttribute("message") != null) { %>
		<script>alert("<%=request.getAttribute("message")%>");</script>
<%	}
	double select = 3;
	int pages = 1;
	double all = 1;
	if (request.getAttribute("myList") != null) {
		select = (double)request.getAttribute("select");
		all = (double)request.getAttribute("myAll");
		pages = (int)request.getAttribute("pages");
		System.out.println("select1 : "+select);
		System.out.println("all1 : "+all);
	}
	System.out.println("select2 : "+select);
	System.out.println("all2 : "+all);
%>
<form action="${PATH}/BoardController" name="boardForm" method="post">
<table align="center" border="1" width="80%">
	<tr>
		<td colspan="4" align="right">
			<input type="hidden" id="show" name="show">
			<select style="width: 130px; height: 30px;" onchange="selected(this.value)">
				<%
					for (int i = 0; i < allselect.length; i++){
						if (allselect1[i] == select){
							out.println("<option value=\""+ allselect1[i] +"\" selected=\"selected\">" + allselect[i] + "</option>");
						} else {
							out.println("<option value=\""+ allselect1[i] +"\">" + allselect[i] + "</option>");
						}
					}
				%>
			</select>
		</td>
	</tr>
	<tr>
		<th width="10%">�۹�ȣ</th>
		<th width="*%">����</th>
		<th width="20%">�ۼ���</th>
		<th width="10%">�亯</th>
	</tr>
	
	<!-- �Խ��� ����Ʈ �ҷ����� -->
	<%
		HashMap<Integer, BoardDto> list = (HashMap)request.getAttribute("myList");
		BoardDto dto = null;
		if (list != null){
			for(int i=(int)(select*(pages-1)); i<(int)(select*(pages-1)+select); i++){
				if (i >= list.size()){
					break;
				}
				dto = list.get(i+1);
	%>
	
	<tr>
		<td align="center"><%= i+1 %></td>
		<td align="center"><a href="javascript:detailPage(<%= dto.getbNum() %>)"><%= dto.getbTitle() %></a></td>
		<td align="center"><%= dto.getbDate() %></td>
		<td align="center"><%= dto.getbCheck() %></td>
	</tr>
	<% } %>
	<tr>
		<td colspan="4" align="center">
			<span>|</span>
			<% for(int i=0; i<(all/select); i++){ %>
				<a href="javascript:listmove(<%= i+1 %>)" name=<%= i+1 %>><%= i+1 %></a>
				<span>|</span>
			<% } %>
			<input type="hidden" name="listed">
		</td>
	</tr>
	<% } else { %>
	<tr>
		<td colspan="4">��ϵ� �Խñ��� �����ϴ�.</td>
	</tr>
	<% } %>
	<tr>
		<td colspan="4">
			<input type="hidden" id="b_num" name="b_num">
			<input type="hidden" id="action" name="action" value="b_list">
			<input type="button" value="���ۼ�" onclick="location.href='Boardwrite.jsp'">
			<input type="submit" value="���ΰ�ħ">
		</td>
	</tr>
</table>
</form>
</body>
</html>