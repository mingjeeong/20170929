package work.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import work.model.dto.EmployeeDto;
import work.model.service.EmployeeService;


public class EmployeeController extends HttpServlet {
private EmployeeService service = new EmployeeService(); 
	
	/**
	 * ���� Ż���ϱ�
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	 protected void delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String ePw= request.getParameter("e_pw");
		HttpSession session = request.getSession(false);
		String eId = (String) session.getAttribute("e_id");
		
		boolean result = service.checkPw(eId,ePw);
		boolean result2 = service.delete(eId);
		
		if(result) {
			if(result2) {
				request.setAttribute("Message", "ȸ��Ż�� �Ϸ�Ǿ����ϴ�. ");
				request.getRequestDispatcher("Service2.jsp").forward(request,response);
			}
		}
		else {
			request.setAttribute("errorMessage", "ȸ��Ż�� ���� ");
			request.getRequestDispatcher("/Error2.jsp").forward(request,response);
		}
	 }
		 
	 /**
	  * ���� ȸ�����Խ� ��� �ߺ�üũ
	  * @param request
	  * @param response
	  * @throws ServletException
	  * @throws IOException
	  */
	 protected void idCheck(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String eId= request.getParameter("checkId");
		boolean result = service.checkId(eId) ;
		
		if(result) {
			request.setAttribute("result", true);
			request.getRequestDispatcher("/Idcheck.jsp").forward(request,response);
		}
		else {
			request.setAttribute("result", false);
			request.getRequestDispatcher("/Idcheck.jsp").forward(request,response);
		}
	 }
	 
	 /**
	  * ���� ��й�ȣ �����ϱ�
	  * @param request
	  * @param response
	  * @throws ServletException
	  * @throws IOException
	  */
	 protected void resetPw(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String ePw= request.getParameter("e_pw");
		HttpSession session = request.getSession(false);
		String eId = (String) session.getAttribute("e_id");
		int result = service.resetPw(eId,ePw) ;
		
		if(result != 0) {
			request.setAttribute("successMessage", "��й�ȣ ���� ����");
			request.getRequestDispatcher("/Service.jsp").forward(request,response);
		}
		else {
			request.setAttribute("errorMessage", "��й�ȣ ���� ���� ");
			request.getRequestDispatcher("/Error.jsp").forward(request,response);
		}
	 }
	 
	 protected void checkPw(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String ePw= request.getParameter("e_pw");
		HttpSession session = request.getSession(false);
		String eId = (String) session.getAttribute("e_id");
		boolean result = service.checkPw(eId,ePw );
		
		if(result != false) {
			response.sendRedirect("ResetPw.jsp");  
		}
		else {
			request.setAttribute("errorMessage", "��й�ȣ ã�� ���� ");
			request.getRequestDispatcher("/Error2.jsp").forward(request,response);
		}
	 }
	 
	 /**
	  * ���� ������ �����ϱ�
	  * @param request
	  * @param response
	  * @throws ServletException
	  * @throws IOException
	  */
	 protected void resetInfo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 HttpSession session = request.getSession(false);
		 String eId = (String) session.getAttribute("e_id");
		 String eMobile= request.getParameter("e_mobile");
		 String eEmail= request.getParameter("e_email");
		 String eAddress= request.getParameter("e_address");
		 int result1 = service.resetInfo(eId,eMobile,eEmail,eAddress);
		 EmployeeDto result = service.myInfo(eId);
		 
		 if(result1 != 0) {
			if(result != null) {
				request.setAttribute("dto",result);
				request.getRequestDispatcher("/MyPage.jsp").forward(request,response);
			}
		 }
			else {
				request.setAttribute("errorMessage", "�������� ���� ");
				request.getRequestDispatcher("/Error2.jsp").forward(request,response);
			}
	 }
	 
	 /**
	  * ���� ������ ����(����������)
	  * @param request
	  * @param response
	  * @throws ServletException
	  * @throws IOException
	  */
	 protected void showInfo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
		HttpSession session = request.getSession(false);
		String eId = (String) session.getAttribute("e_id");
			
		EmployeeDto result = service.myInfo(eId);
		if(result != null) {
			request.setAttribute("dto",result);
			request.getRequestDispatcher("/MyPage.jsp").forward(request,response);
		}
		else {
			request.setAttribute("errorMessage", "���������� ��� ����");
			request.getRequestDispatcher("/Error2.jsp").forward(request,response);
		}
	 }
	 
	 /**
	  * ��й�ȣ ã��(�ӽú�й�ȣ �߱�)
	  * @param request
	  * @param response
	  * @throws ServletException
	  * @throws IOException
	  */
    protected void findPw(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String eId = request.getParameter("e_id");
		String eKname = request.getParameter("e_kname");
		String eBirthyear= request.getParameter("e_birthyear");
		String eBirthmonth= request.getParameter("e_birthmonth");
		String eBirthdate= request.getParameter("e_birthdate");
		String eBirth = eBirthyear + "-" + eBirthmonth + "-" + eBirthdate;
		String eEmail1 = request.getParameter("e_email1");
		String eEmail2 = request.getParameter("e_email2");
		String eEmail = eEmail1 + "@" + eEmail2;
		
		if(eId==null || eId.trim().length()==0) {
			request.setAttribute("errorMessage", "���̵� �Է��ϼ���");
			request.getRequestDispatcher("/Error.jsp").forward(request,response);
			return;
		}
		if(eKname==null || eKname.trim().length()==0) {
			request.setAttribute("errorMessage", "�̸��� �Է��ϼ���");
			request.getRequestDispatcher("/Error.jsp").forward(request,response);
			return;
		}
		if(eBirthyear==null || eBirthyear.trim().length()==0||eBirthmonth==null || eBirthmonth.trim().length()==0||eBirthdate==null || eBirthdate.trim().length()==0) {
			request.setAttribute("errorMessage", "��������� �Է��ϼ���");
			request.getRequestDispatcher("/Error.jsp").forward(request,response);
			return;
		}
		if(eEmail1==null || eEmail1.trim().length()==0||eEmail2==null || eEmail2.trim().length()==0) {
			request.setAttribute("errorMessage", "�̸����� �Է��ϼ���");
			request.getRequestDispatcher("/Error.jsp").forward(request,response);
			return;
		}
		String result = service.findPw(eId, eKname, eBirth, eEmail);
		if(result != null) {
			request.setAttribute("successMessage", "�ӽ� ��й�ȣ��  " + result + " �Դϴ�.");
			request.getRequestDispatcher("/Service.jsp").forward(request,response);
		}
		else {
			request.setAttribute("errorMessage", "��й�ȣ ã�� ���� ");
			request.getRequestDispatcher("/Error.jsp").forward(request,response);
		}
	}
		/**
		 * ���� �α׾ƿ�
		 * @param request
		 * @param response
		 * @throws ServletException
		 * @throws IOException
		 */
    protected void logout(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession(false);
		session.removeAttribute("e_id");
		session.invalidate();
		response.sendRedirect("Index.jsp");  
	}
    /**
     * ���� ȸ������
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    protected void join(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
    	String eId = request.getParameter("e_id");
		String eKname = request.getParameter("e_kname");
		String eEfname = request.getParameter("e_efname");
		String eElname = request.getParameter("e_elname");
		String ePw = request.getParameter("e_pw");
		String eBirthyear= request.getParameter("e_birthyear");
		String eBirthmonth= request.getParameter("e_birthmonth");
		String eBirthdate= request.getParameter("e_birthdate");
		String eBirth = eBirthyear + "-" +eBirthmonth + "-" + eBirthdate;
		String eSex = request.getParameter("e_sex");
		String eEmail1 = request.getParameter("e_email1");
		String eEmail2 = request.getParameter("e_email2");
		String eEmail = eEmail1 + "@" + eEmail2;
		String eMobile1 = request.getParameter("e_mobile1");
		String eMobile2 = request.getParameter("e_mobile2");
		String eMobile3= request.getParameter("e_mobile3");
		String eMobile = eMobile1 + "-" + eMobile2 + "-" + eMobile3;
		String eAddress= request.getParameter("e_address");
		String eState= request.getParameter("e_state");
		
		if(eId==null || eId.trim().length()==0) {
			request.setAttribute("errorMessage", "���̵� �Է��ϼ���");
			request.getRequestDispatcher("/Error.jsp").forward(request,response);
			return;
		}
		if(eKname==null || eKname.trim().length()==0) {
			request.setAttribute("errorMessage", "�̸��� �Է��ϼ���");
			request.getRequestDispatcher("/Error.jsp").forward(request,response);
			return;
		}
		if(eEfname==null || eEfname.trim().length()==0||eElname==null || eElname.trim().length()==0) {
			request.setAttribute("errorMessage", "�����̸��� �Է��ϼ���");
			request.getRequestDispatcher("/Error.jsp").forward(request,response);
			return;
		}
		if(ePw==null || ePw.trim().length()==0) {
			request.setAttribute("errorMessage", "�н����带 �Է��ϼ���");
			request.getRequestDispatcher("/Error.jsp").forward(request,response);
			return;
		}
		if(eBirthyear==null || eBirthyear.trim().length()==0||eBirthmonth==null || eBirthmonth.trim().length()==0||eBirthdate==null || eBirthdate.trim().length()==0) {
			request.setAttribute("errorMessage", "��������� �Է��ϼ���");
			request.getRequestDispatcher("/Error.jsp").forward(request,response);
			return;
		}
		if(eSex==null || eSex.trim().length()==0) {
			request.setAttribute("errorMessage", "������ �Է��ϼ���");
			request.getRequestDispatcher("/Error.jsp").forward(request,response);
			return;
		}
		if(eEmail1==null || eEmail1.trim().length()==0||eEmail2==null || eEmail2.trim().length()==0) {
			request.setAttribute("errorMessage", "�̸����� �Է��ϼ���");
			request.getRequestDispatcher("/Error.jsp").forward(request,response);
			return;
		}
		if(eMobile1==null || eMobile1.trim().length()==0||eMobile2==null || eMobile2.trim().length()==0||eMobile3==null || eMobile3.trim().length()==0) {
			request.setAttribute("errorMessage", "��ȭ��ȣ�� �Է��ϼ���");
			request.getRequestDispatcher("/Error.jsp").forward(request,response);
			return;
		}
		
		int result = service.join(eId,ePw,eKname,eEfname,eElname,eSex,eBirth,eMobile,eEmail,eAddress,eState);
		if(result !=0) {
			request.setAttribute("successMessage", "ȸ������ ����");
			request.getRequestDispatcher("/Service.jsp").forward(request,response);
		}
		else {
			request.setAttribute("errorMessage", "ȸ������ ���� ");
			request.getRequestDispatcher("/Error.jsp").forward(request,response);
		}
	}
    
   /**
    * ���� �α���
    * @param request
    * @param response
    * @throws ServletException
    * @throws IOException
    */
    protected void eLogin(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String eId = request.getParameter("e_id");
		String ePw = request.getParameter("e_pw");
		if(eId==null || eId.trim().length()==0) {
			request.setAttribute("errorMessage", "error");
			request.getRequestDispatcher("/Error.jsp").forward(request,response);
			return;
		}
		if(ePw==null||ePw.trim().length()==0) {
			response.sendRedirect("Error.jsp");  
			return;
		}
		
		String eKname = service.login(eId,ePw);
		if(eKname != null) {
			request.setAttribute("successMessage", "success");
			HttpSession session = request.getSession(true);
			session.setAttribute("e_id", eId);
			session.setAttribute("e_kname", eKname);
			request.getRequestDispatcher("/Menu1.jsp").forward(request,response);
		} else {
			request.setAttribute("errorMessage", "error ");
			request.getRequestDispatcher("/Error.jsp").forward(request,response);
		}
	}
    
    protected void process(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		switch(action) {
		case "e_login" :
			eLogin(request,response);
			break;
		case "join" :
			join(request,response);
			break;
		case "logout" :
			logout(request,response);
			break;
		case "findPw" :
			findPw(request,response);
			break;
		case "myPage" :
			showInfo(request,response);
			break;
		case "resetInfo" :
			resetInfo(request,response);
			break;
		case "checkPw" :
			checkPw(request,response);
			break;
		case "resetPw" :
			resetPw(request,response);
			break;
		case "idCheck":
			idCheck(request,response);
			break;
		case "delete":
			delete(request,response);
			break;
		default :
			System.out.println("�������� �ʴ� ����");
				
		}
	}

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		process(request, response);	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("EUC-KR");
		process(request, response);
	}
}
