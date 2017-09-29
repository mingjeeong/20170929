package work.model.service;

import work.model.dao.TicketDao;
import work.model.dto.ReservationDto;

public class TicketService {
	private static TicketDao dao = TicketDao.getInstance();
	/**
	 * ������ �°� ��ȸ
	 * @param rName
	 * @param rNum
	 * @return
	 */
	public String searchIssue(String rName,String rNum) {
		return dao.issueSearch(rName, rNum);
	}
	/**
	 * ���Ϲ� ����
	 * @param rName
	 * @param tBagNum
	 * @return
	 */
	public String setBagg(String rName,String tBagNum ) {
		return null;
	}
	/**
	 * ������ �°� ��ȸ
	 * @param rName
	 * @param rNum
	 * @return
	 */
	public ReservationDto search(String rName,String rNum) {
		return dao.searchReservation(rName, rNum);
	}
}
