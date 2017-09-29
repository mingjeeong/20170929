package work.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import work.model.dto.ReservationDto;
import work.model.service.TicketService;

/**
 * Servlet implementation class TicketController
 */
public class TicketController extends HttpServlet {
	private TicketService service = new TicketService();
	/**
	 * �װ��� ����� �°� ��ȸ
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
    protected void searchforCancel(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	String rName = request.getParameter("r_name");
		String rNum = request.getParameter("r_num");
		
    }
    /**
     * Ƽ�Ϲ߱�
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    protected void issueTicket(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	System.out.println(">>>>> Ƽ�� �߱� ��û ���� �޼��� ����");
    
    }
    /**
     * ���� ��ȸ
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    protected void searchCustomer(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String rName = request.getParameter("r_name");
		String rNum = request.getParameter("r_num");
		
		ReservationDto dto = service.search(rName,rNum);
		
		if(dto !=null) {
			request.setAttribute("dto", "dto");
			request.getRequestDispatcher("/SearchTicket2.jsp").forward(request,response);
		}
		else {
			request.setAttribute("errorMessage", "��ġ�ϴ� ������ �����ϴ�.");
			request.getRequestDispatcher("/Error2.jsp").forward(request,response);
		}
    }
    /**
     * ���Ϲ� �߰�
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    protected void addBaggage(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	String rName = request.getParameter("r_name");
    	String tBaggNum = request.getParameter("t_bagnum");
    	String bagg = service.setBagg(rName,tBaggNum);
    	
    }
	/**
	 * �װ��� �߱� �� �°� ��ȸ
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
    protected void searchIssue(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String rName = request.getParameter("r_name");
		String rNum = request.getParameter("r_num");
		
		String rname = service.searchIssue(rName,rNum);
		
		if(rname !=null) {
			request.setAttribute("rname", "rname");
			request.getRequestDispatcher("/Issue2.jsp").forward(request,response);
		}
		else {
			request.setAttribute("errorMessage", "��ġ�ϴ� ������ �����ϴ�.");
			request.getRequestDispatcher("/Error2.jsp").forward(request,response);
		}
    }
       
	protected void process(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		switch(action) {
		case "searchissue" :
			searchIssue(request,response);
			break;
		case "nextIssue" :
			addBaggage(request,response);
			break;
		case "search" :
			searchCustomer(request,response);
			break;
		case "issue" :
			issueTicket(request,response);
			break;
		case "searchcancel" :
			searchforCancel(request,response);
			break;

		default :
			System.out.println("������ �����Դϴ�");
				
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
