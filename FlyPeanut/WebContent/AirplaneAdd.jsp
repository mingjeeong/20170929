<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link type = "text/css" rel = "stylesheet" href = "css/MainStyle.css">
<title>Insert title here</title>
<script type="text/javascript">
function airplane_check()
{

	if (document.add_Airplane.num.value == "")
	{
		alert("������ȣ�� �Է¹ٶ��ϴ�.");
		document.frm1.num.focus(); 
		return false;
	}

	if (document.add_Airplane.kind.value == "") 
	{
		alert("������ �Է¹ٶ��ϴ�.");
		document.add_Airplane.kind.focus(); 
		return false;
	}

	if (document.add_Airplane.type.value == "") 
	{
		alert("������ �Է¹ٶ��ϴ�");
		document.add_Airplane.type.focus(); 
		return false;
	}

	if (document.add_Airplane.pax.value == "") 
	{
		alert("�� �°��� �Է¹ٶ��ϴ�.");
		document.add_Airplane.pax.focus(); 
		return false;
	}


	
	if (document.add_Airplane.makeCompany.value == "") 
	{
		alert("�����縦 �Է¹ٶ��ϴ�.");
		document.add_Airplane.makeCompany.focus(); 
		return false;
	}
	if (document.add_Airplane.state.value == "") 
	{
		alert("�������� �Է¹ٶ��ϴ�.");
		document.add_Airplane.state.focus(); 
		return false;
	}
	if (document.add_Airplane.firstclassrow.value == "") 
	{
		alert("�۽�Ʈ Ŭ���� ���� �Է¹ٶ��ϴ�.");
		document.add_Airplane.firstclassrow.focus(); 
		return false;
	}

	document.add_Airplane.submit();
}
</script>
</head>

<body>
<table>
		<tr>
			<td colspan="7" width="1536px" height="20px" align="right"><a
				href="login.jsp"></a><a href="login.jsp">�α���</a> <a
				href="membership.jsp"> ȸ������</a></td>
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
		<tr><td><h4><a href="MainController?action=airplanemain">�װ��� ��ȸ</a></h4></td></tr>
		<tr><td><h4><a href="AirplaneAdd.jsp">�װ��� �߰�</a></h4></td></tr>
		<tr><td><h4><a href="FlightUpdate.jsp">�װ��� ����</a></h4></td></tr>
		<tr><td><h4><a href="FlightDelete.jsp">�װ��� ����</a></h4></td></tr>
</table>
	
	<form name="add_Airplane" action="AirplaneController" method="post" >
	<table width="600px" border="0" cellpadding="0" cellspacing="0" 
		align="center">
		<h3 align="center">����� ���</h3>
		<tr style= "margin-bottom:50px;">
			<td width="300px" height="30px" align="center">���� ��ȣ</td>
			<td width="600px" align="left"><input type="text" name="num" style="width:70px">&nbsp;(�ݵ�� 6�ڸ���!!)</td>
		</tr>
		<tr>
			<td width="300px" height="30px" align="center">����</td>
			<td width="600px" align = "left"><input type="text" name="kind" style="width:90px" >&nbsp;(ex. aaa-0000)</td>
		</tr>
		<tr>
			<td width="300px" height="30px" align="center">����</td>
			<td width="600px" align = "left">
				<select class= "number" name = "type"  size = "1" onchange="type()" >
				<option value = "">=����=</option>
				<option value = "������">������</option>
				<option value = "ȭ����">ȭ����</option>
				</select>
			</td>
		</tr>
		<tr>
			<td width="300px" height="30px" align="center">�°�</td>
			<td align = "left"><input type="text" name="pax" style="width:30px">&nbsp;��</td>
		</tr>
		<tr>
			<td width="300px" height="30px" align="center">������</td>
			
			<td align = "left"><select class= "number" name = "make_year"  size = "1" onchange="make_year()" >
		<option value = "">=����=</option>
		<option value = "1993">1993</option>
		<option value = "1994">1994</option>
		<option value = "1995">1995</option>
		<option value = "1996">1996</option>
		<option value = "1997">1997</option>
		<option value = "1998">1998</option>
		<option value = "1999">1999</option>
		<option value = "2000">2000</option>
		<option value = "2001">2001</option>
		<option value = "2002">2002</option>
		<option value = "2003">2003</option>
		<option value = "2004">2004</option>
		<option value = "2005">2005</option>
		<option value = "2006">2006</option>
		<option value = "2007">2007</option>
		<option value = "2008">2008</option>
		<option value = "2009">2009</option>
		<option value = "2010">2010</option>
		<option value = "2011">2011</option>
		<option value = "2012">2012</option>
		<option value = "2013">2013</option>
		<option value = "2014">2014</option>
		<option value = "2015">2015</option>
		<option value = "2016">2016</option>
	</select>
	&nbsp;��&nbsp;
	<select class= "number" name = "make_month"  size = "1" onchange="make_month()" >
		<option value = "">=����=</option>
		<option value = "1">1</option>
		<option value = "2">2</option>
		<option value = "3">3</option>
		<option value = "4">4</option>
		<option value = "5">5</option>
		<option value = "6">6</option>
		<option value = "7">7</option>
		<option value = "8">8</option>
		<option value = "9">9</option>
		<option value = "10">10</option>
		<option value = "11">11</option>
		<option value = "12">12</option>
	</select>
	&nbsp;��&nbsp;
	<select class= "number" name = "make_day"  size = "1" onchange="make_day()" >
		<option value = "">=����=</option>
		<option value = "1">1</option>
		<option value = "2">2</option>
		<option value = "3">3</option>
		<option value = "4">4</option>
		<option value = "5">5</option>
		<option value = "6">6</option>
		<option value = "7">7</option>
		<option value = "8">8</option>
		<option value = "9">9</option>
		<option value = "10">10</option>
		<option value = "11">11</option>
		<option value = "12">12</option>
		<option value = "13">13</option>
		<option value = "14">14</option>
		<option value = "15">15</option>
		<option value = "16">16</option>
		<option value = "17">17</option>
		<option value = "18">18</option>
		<option value = "19">19</option>
		<option value = "20">20</option>
		<option value = "21">21</option>
		<option value = "22">22</option>
		<option value = "23">23</option>
		<option value = "24">24</option>
		<option value = "25">25</option>
		<option value = "26">26</option>
		<option value = "27">27</option>
		<option value = "28">28</option>
		<option value = "29">29</option>
		<option value = "30">30</option>
		<option value = "31">31</option>
	</select>
	&nbsp;��
	</td>
		</tr>
		<tr>
			<td width="300px" height="30px" align="center">������</td>
			<td align = "left"><input type="text" name="makeCompany" style="width:100px"></td>
		</tr>
		<tr>
			<td width="300px" height="30px" align="center">��������</td>
			<td align = "left"><input type="text" name="state" style="width:100px"></td>
		</tr>
		<tr>
			<td width="300px" height="30px" align="center">First Class</td>
			<td width="300px" align="left"><select class= "number" name = "firstclassrow"  size = "1" onchange="firstclassrow()" >
			<option value = "0">=����=</option>
			<option value = "1">1</option>
			<option value = "2">2</option>
			<option value = "3">3</option>
			<option value = "4">4</option>
			<option value = "5">5</option>
			<option value = "6">6</option>
			<option value = "7">7</option>
			<option value = "8">8</option>
			<option value = "9">9</option>
			<option value = "10">10</option>
			<option value = "11">11</option>
	</select> <select class= "number" name = "firstclasscol"  size = "1" onchange="firstclasscol()" >
		<option value = "0">=����=</option>
		<option value = "A">A</option>
		<option value = "B">B</option>
		<option value = "C">C</option>
		<option value = "D">D</option>
		<option value = "E">E</option>
		<option value = "F">F</option>
		<option value = "G">G</option>
		<option value = "H">H</option>
		<option value = "I">I</option>
		<option value = "J">J</option>
		<option value = "K">K</option>
	</select> </td>
		</tr>
		
		<tr>
			<td width="300px" height="30px" align="center">Business Class</td>
			<td width="300px" align="left"><select class= "number" name = "businessclassrow"  size = "1" onchange="businessclassrow()" >
			<option value = "0">=����=</option>
			<option value = "1">1</option>
			<option value = "2">2</option>
			<option value = "3">3</option>
			<option value = "4">4</option>
			<option value = "5">5</option>
			<option value = "6">6</option>
			<option value = "7">7</option>
			<option value = "8">8</option>
			<option value = "9">9</option>
			<option value = "10">10</option>
			<option value = "11">11</option>
	</select> <select class= "number" name = "businessclasscol"  size = "1" onchange="businessclasscol()" >
		<option value = "0">=����=</option>
		<option value = "A">A</option>
		<option value = "B">B</option>
		<option value = "C">C</option>
		<option value = "D">D</option>
		<option value = "E">E</option>
		<option value = "F">F</option>
		<option value = "G">G</option>
		<option value = "H">H</option>
		<option value = "I">I</option>
		<option value = "J">J</option>
		<option value = "K">K</option>
	</select> </td>
		</tr>
		
		<tr>
			<td width="300px" height="30px" align="center">Economy Class</td>
			<td width="300px" align="left"><select class= "number" name = "economyclassrow"  size = "1" onchange="economyclassrow()" >
			<option value = "0">=����=</option>
			<option value = "1">1</option>
			<option value = "2">2</option>
			<option value = "3">3</option>
			<option value = "4">4</option>
			<option value = "5">5</option>
			<option value = "6">6</option>
			<option value = "7">7</option>
			<option value = "8">8</option>
			<option value = "9">9</option>
			<option value = "10">10</option>
			<option value = "11">11</option>
	</select> <select class= "number" name = "economyclasscol"  size = "1" onchange="economyclasscol()" >
		<option value = "0">=����=</option>
		<option value = "A">A</option>
		<option value = "B">B</option>
		<option value = "C">C</option>
		<option value = "D">D</option>
		<option value = "E">E</option>
		<option value = "F">F</option>
		<option value = "G">G</option>
		<option value = "H">H</option>
		<option value = "I">I</option>
		<option value = "J">J</option>
		<option value = "K">K</option>
	</select> </td>
		</tr>
		<tr>
			<td colspan = "3" width="600px" align="center"  >
				
					<input type = "reset" value = "�ʱ�ȭ">
				
					<input type = "hidden" name = "action" value="airplaneAdd">
					<input type = "button" value = "���" onClick="airplane_check()">
			</td>
				
			</tr>
		</table>

			</td>
		</tr>
	</table>
	</form>
	
</body>
</html>