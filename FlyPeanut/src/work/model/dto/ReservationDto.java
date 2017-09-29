package work.model.dto;

public class ReservationDto {
	/** �����ȣ*/
	private String rNum;
	/** ������*/
	private String rName;
	/** �����*/
	private String rDeparture;
	/** ��߽ð� */
	private String rDepartureTime;
	/** ������*/
	private String rArrival;
	/** ������ ���� �ð�*/
	private String rArrivalTime;
	/** �¼�*/
	private String rSeat;
	/** �װ��� ������ȣ*/
	private String rAnum;
	/** ���೯¥*/
	private String rDate;
	/** �װ����̸� ���*/
	private String rFname;
	/** Ŭ����*/
	private String rClass;
	
	public ReservationDto() {}

	public ReservationDto(String rNum, String rName, String rDeparture, String rDepartureTime, String rArrival,
			String rArrivalTime, String rSeat, String rAnum, String rDate, String rFname, String rClass) {
		super();
		this.rNum = rNum;
		this.rName = rName;
		this.rDeparture = rDeparture;
		this.rDepartureTime = rDepartureTime;
		this.rArrival = rArrival;
		this.rArrivalTime = rArrivalTime;
		this.rSeat = rSeat;
		this.rAnum = rAnum;
		this.rDate = rDate;
		this.rFname = rFname;
		this.rClass = rClass;
	}

	/**
	 * @return the rNum
	 */
	public String getrNum() {
		return rNum;
	}

	/**
	 * @param rNum the rNum to set
	 */
	public void setrNum(String rNum) {
		this.rNum = rNum;
	}

	/**
	 * @return the rName
	 */
	public String getrName() {
		return rName;
	}

	/**
	 * @param rName the rName to set
	 */
	public void setrName(String rName) {
		this.rName = rName;
	}

	/**
	 * @return the rDeparture
	 */
	public String getrDeparture() {
		return rDeparture;
	}

	/**
	 * @param rDeparture the rDeparture to set
	 */
	public void setrDeparture(String rDeparture) {
		this.rDeparture = rDeparture;
	}

	/**
	 * @return the rDepartureTime
	 */
	public String getrDepartureTime() {
		return rDepartureTime;
	}

	/**
	 * @param rDepartureTime the rDepartureTime to set
	 */
	public void setrDepartureTime(String rDepartureTime) {
		this.rDepartureTime = rDepartureTime;
	}

	/**
	 * @return the rArrival
	 */
	public String getrArrival() {
		return rArrival;
	}

	/**
	 * @param rArrival the rArrival to set
	 */
	public void setrArrival(String rArrival) {
		this.rArrival = rArrival;
	}

	/**
	 * @return the rArrivalTime
	 */
	public String getrArrivalTime() {
		return rArrivalTime;
	}

	/**
	 * @param rArrivalTime the rArrivalTime to set
	 */
	public void setrArrivalTime(String rArrivalTime) {
		this.rArrivalTime = rArrivalTime;
	}

	/**
	 * @return the rSeat
	 */
	public String getrSeat() {
		return rSeat;
	}

	/**
	 * @param rSeat the rSeat to set
	 */
	public void setrSeat(String rSeat) {
		this.rSeat = rSeat;
	}

	/**
	 * @return the rAnum
	 */
	public String getrAnum() {
		return rAnum;
	}

	/**
	 * @param rAnum the rAnum to set
	 */
	public void setrAnum(String rAnum) {
		this.rAnum = rAnum;
	}

	/**
	 * @return the rDate
	 */
	public String getrDate() {
		return rDate;
	}

	/**
	 * @param rDate the rDate to set
	 */
	public void setrDate(String rDate) {
		this.rDate = rDate;
	}

	/**
	 * @return the rFname
	 */
	public String getrFname() {
		return rFname;
	}

	/**
	 * @param rFname the rFname to set
	 */
	public void setrFname(String rFname) {
		this.rFname = rFname;
	}

	/**
	 * @return the rClass
	 */
	public String getrClass() {
		return rClass;
	}

	/**
	 * @param rClass the rClass to set
	 */
	public void setrClass(String rClass) {
		this.rClass = rClass;
	}

	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("ReservationDto [rNum=");
		builder.append(rNum);
		builder.append(", rName=");
		builder.append(rName);
		builder.append(", rDeparture=");
		builder.append(rDeparture);
		builder.append(", rDepartureTime=");
		builder.append(rDepartureTime);
		builder.append(", rArrival=");
		builder.append(rArrival);
		builder.append(", rArrivalTime=");
		builder.append(rArrivalTime);
		builder.append(", rSeat=");
		builder.append(rSeat);
		builder.append(", rAnum=");
		builder.append(rAnum);
		builder.append(", rDate=");
		builder.append(rDate);
		builder.append(", rFname=");
		builder.append(rFname);
		builder.append(", rClass=");
		builder.append(rClass);
		builder.append("]");
		return builder.toString();
	}

	/* (non-Javadoc)
	 * @see java.lang.Object#hashCode()
	 */
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((rNum == null) ? 0 : rNum.hashCode());
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
		ReservationDto other = (ReservationDto) obj;
		if (rNum == null) {
			if (other.rNum != null)
				return false;
		} else if (!rNum.equals(other.rNum))
			return false;
		return true;
	}
}
