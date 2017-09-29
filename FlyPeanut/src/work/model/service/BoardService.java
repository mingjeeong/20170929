package work.model.service;

import java.util.HashMap;

import work.model.dao.BoardDao;
import work.model.dto.BoardDto;
import work.model.dto.ReplyDto;

public class BoardService {
	BoardDao boardDao = BoardDao.getInstance();
	
	/**
	 * <pre>�Խñ� ���</pre>
	 * @param dto
	 * @return
	 */
	public int insert(BoardDto dto) {
		if (dto.getbNum() == 0) {
			return boardDao.insert(dto);
		} else {
			return boardDao.update(dto);
		}
	}
	
	/**
	 * <pre>���� �� �� ��� ��ȸ</pre>
	 * @param id
	 * @return
	 */
	public HashMap<Integer, BoardDto> myList(String id){
		return boardDao.myList(id);
	}
	
	/**
	 * <pre>�Խñ� �� ��ȸ</pre>
	 * @param number
	 * @return
	 */
	public BoardDto detail(int number){
		return boardDao.detail(number);
	}
	
	/**
	 * <pre>��� ��ȸ</pre>
	 * @param number
	 * @return
	 */
	public ReplyDto reply(int number){
		if (boardDao.isrNum(number)) {
			return boardDao.reply(number);
		}
		return null;
	}
	
	/**
	 * <pre>�Խñ� ����</pre>
	 * @param number
	 * @return
	 */
	public int delete(int number) {
		if (boardDao.isbNum(number)) {
			return boardDao.delete(number);
		}
		return 0;
	}
	
	/**
	 * <pre>���� �� �� ����</pre>
	 * @param id
	 * @return
	 */
	public double mycount(String id) {
		return boardDao.myCount(id);
	}
	
}
