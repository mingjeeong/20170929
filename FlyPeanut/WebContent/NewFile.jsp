<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>ID �ߺ�Ȯ��</title>
<script>
function useId(){
   window.opener.document.getElementById("m_id").value = document.getElementById("m_id").value;
   window.opener.document.getElementById("m_id").disabled = true;
   self.close();
}
function reinput(){
   document.getElementById("spanner").innerText = "���̵� �ߺ� Ȯ�����ּ���.";
   document.getElementById("btn_use").disabled = true;
}
</script>
</head>
<body>
<h4>ID �ߺ� Ȯ��</h4>
<hr>
<p>���̵� ����Ͻ÷��� �ߺ�Ȯ���� ���ּ���.</p>
<form action="${PATH}/MemberController" method="post" name="idcheckForm">
<table>
   <tr>
      <td>���̵�</td>
      <td>
         <%
            String id = "";
            if ((request.getAttribute("idcheck") != null) && ((boolean)request.getAttribute("idcheck"))){
               id = (String)request.getAttribute("input");
            } else {
               if (request.getAttribute("input") == null) {
                  id = request.getParameter("id");
               } else{
                  id = (String)request.getAttribute("input");
               }
            }
         %>
         <input type="text" id="m_id" name="m_id" value="<%= id %>" onfocus="reinput()">
         <input type="hidden" name="action" value="m_check">
         <input type="submit" value="�ߺ� Ȯ��">
      </td>
   </tr>
   <tr>
      <td colspan="2">
         <span id="spanner"></span>
      </td>
   </tr>
   <tr>
      <td colspan="2" align="center">
         <input type="button" name="btn_use" id="btn_use" value="���" onclick="useId()" disabled>
         <input type="button" value="���">
      </td>
   </tr>
   <%
      if(request.getAttribute("idcheck") != null){
         if (!(boolean)request.getAttribute("idcheck")){
   %>
      <script>
         document.getElementById("spanner").innerText = "���� ���̵�� ��� ���� �մϴ�.";
         document.idcheckForm.btn_use.disabled = false;
      </script>
         <% } else { %>
      <script>
         document.getElementById("spanner").innerText = "���� ���̵�� ��� �Ұ��� �մϴ�.";
         document.getElementById("btn_use").disabled = true;
      </script>
   <%
         }
      }
   %>
</table>
</form>
</body>
</html>