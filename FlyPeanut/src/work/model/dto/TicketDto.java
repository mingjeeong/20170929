package work.model.dto;

public class TicketDto {
	/** Ƽ�� ������ ��� */
	private String tName;
	/** ��� ��¥*/
	private String tDate;
	/** Ƽ�� �¼�*/
	private String tSeat;
	/** �����*/
	private String tDeparture;
	/** ������*/
	private String tArrival;
	/** ��߽ð� */
	private String rDepartureTime;
	/** ������ ���� �ð�*/
	private String rArrivalTime;
	/**  Ŭ����*/
	private String tClass;
	/** ����Ʈ*/
	private String tGate;
	/** �װ��� �̸� (���)*/
	private String tFname;
	/** ���Ϲ� ����*/
	private String rBagnum;
	
	
	public TicketDto() {
	}


	public TicketDto(String tName, String tDate, String tSeat, String tDeparture, String tArrival, String tClass,
			String tGate, String tFname) {
		super();
		this.tName = tName;
		this.tDate = tDate;
		this.tSeat = tSeat;
		this.tDeparture = tDeparture;
		this.tArrival = tArrival;
		this.tClass = tClass;
		this.tGate = tGate;
		this.tFname = tFname;
	}


	/**
	 * @return the tName
	 */
	public String gettName() {
		return tName;
	}


	/**
	 * @param tName the tName to set
	 */
	public void settName(String tName) {
		this.tName = tName;
	}


	/**
	 * @return the tDate
	 */
	public String gettDate() {
		return tDate;
	}


	/**
	 * @param tDate the tDate to set
	 */
	public void settDate(String tDate) {
		this.tDate = tDate;
	}


	/**
	 * @return the tSeat
	 */
	public String gettSeat() {
		return tSeat;
	}


	/**
	 * @param tSeat the tSeat to set
	 */
	public void settSeat(String tSeat) {
		this.tSeat = tSeat;
	}


	/**
	 * @return the tDeparture
	 */
	public String gettDeparture() {
		return tDeparture;
	}


	/**
	 * @param tDeparture the tDeparture to set
	 */
	public void settDeparture(String tDeparture) {
		this.tDeparture = tDeparture;
	}


	/**
	 * @return the tArrival
	 */
	public String gettArrival() {
		return tArrival;
	}


	/**
	 * @param tArrival the tArrival to set
	 */
	public void settArrival(String tArrival) {
		this.tArrival = tArrival;
	}


	/**
	 * @return the tClass
	 */
	public String gettClass() {
		return tClass;
	}


	/**
	 * @param tClass the tClass to set
	 */
	public void settClass(String tClass) {
		this.tClass = tClass;
	}


	/**
	 * @return the tGate
	 */
	public String gettGate() {
		return tGate;
	}


	/**
	 * @param tGate the tGate to set
	 */
	public void settGate(String tGate) {
		this.tGate = tGate;
	}


	/**
	 * @return the tFname
	 */
	public String gettFname() {
		return tFname;
	}


	/**
	 * @param tFname the tFname to set
	 */
	public void settFname(String tFname) {
		this.tFname = tFname;
	}


	/* (non-Javadoc)
	 * @see java.lang.Object#hashCode()
	 */
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((tName == null) ? 0 : tName.hashCode());
		return result;
	}


	/* (non-Javadoc)
	 * @see java.lang.Object#equals(java.lang.Object)
	 */
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		TicketDto other = (TicketDto) obj;
		if (tName == null) {
			if (other.tName != null)
				return false;
		} else if (!tName.equals(other.tName))
			return false;
		return true;
	}


	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("TicketDto [tName=");
		builder.append(tName);
		builder.append(", tDate=");
		builder.append(tDate);
		builder.append(", tSeat=");
		builder.append(tSeat);
		builder.append(", tDeparture=");
		builder.append(tDeparture);
		builder.append(", tArrival=");
		builder.append(tArrival);
		builder.append(", tClass=");
		builder.append(tClass);
		builder.append(", tGate=");
		builder.append(tGate);
		builder.append(", tFname=");
		builder.append(tFname);
		builder.append("]");
		return builder.toString();
	}
}
