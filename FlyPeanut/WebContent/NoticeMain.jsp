<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
	<%@page import="work.model.dto.NoticeDto"%>
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

	
	<table align="center" border="1" width="900px">
		<tr>
			<th width = "10%">��ȣ</th>
			<th width = "55%">����</th>
			<th width = "15%">�ۼ���</th>
		</tr>
		
		 <% if (request.getAttribute("noticemain") != null) {
		ArrayList<NoticeDto> dto = (ArrayList<NoticeDto>)request.getAttribute("noticemain");%> 
     	
     	<%for(int i=dto.size()-1; i>=0; i--){ %>
		<tr>
			<td align="center"><%= dto.get(i).getnNum() %></td>
			<td align="center"><a href="NoticeController?action=noticeview&n_num=<%= dto.get(i).getnNum() %>"><%= dto.get(i).getnTitle() %></a></td>
			<td align="center"><%= dto.get(i).getnDate() %></td>
		</tr>
	<%}
	}
     %>
     	<tr>
     		<td colspan="3"><a href="NoticeWrite.jsp">������ ����</a></td>
	</table>
	
</body>
</html>