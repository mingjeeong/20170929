package work.model.service;

import java.util.HashMap;

import work.model.dao.AddressDao;
import work.model.dto.AddressDto;

public class AddressService {
	AddressDao addDao = AddressDao.getInstance();
	
	/**
	 * <pre>����¡ ó���� ���� ��ü �� ����</pre>
	 * @param road
	 * @return
	 */
	public int allNum(String road) {
		return addDao.AllPost(road);
	}
	
	/**
	 * <pre>�����ȣ �˻�(���θ�)</pre>
	 * @param road
	 * @return
	 */
	public HashMap<Integer, AddressDto> search(String road) {
		return addDao.searchPost(road);
	}
	
}
