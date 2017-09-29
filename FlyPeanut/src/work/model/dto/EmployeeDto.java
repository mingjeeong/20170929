package work.model.dto;

import java.io.Serializable;

/**
 * ## Class ���� ��Ģ
 * 1. DTO Pattern
 * 	-- encapsulation : private �������, public setter(), public getter()
 *  -- ����ȭ��ü : implements Serializable
 * 2. JavaBean Component
 * 	-- encapsulation : private �������, public setter(), public getter()
 *  -- setter() / getter() �޼��� �̸���Ģ �ݵ�� �ؼ� : useBean, ${}
 * 	-- default constructor()
 *  -- package
 * 
 * @author kosta
 *
 */
public class EmployeeDto implements Serializable {
	/** ���� ���̵�(���) */
	private String eId;
	/** ���� �н����� */
	private String ePw;
	/** ���� �ѱ� �̸� */
	private String eKname;
	/** ���� ���� �� */
	private String eEfname;
	/** ���� ���� �̸� */
	private String eElname;
	/** ���� ���� */
	private String eSex;
	/** ���� ������� */
	private String eBirth;
	/** ���� �ڵ�����ȣ */
	private String eMobile;
	/** ���� �̸��� */
	private String eEmail;
	/** ���� �ּ�*/
	private String eAddress;
	/**���� ����*/
	private String eStatus;
	
	public EmployeeDto() {}
	
	public EmployeeDto(String eId, String ePw, String eKname, String eEfname, String eElname, String eSex,
			String eBirth, String eMobile, String eEmail, String eAddress, String eStatus) {
		this.eId = eId;
		this.ePw = ePw;
		this.eKname = eKname;
		this.eEfname = eEfname;
		this.eElname = eElname;
		this.eSex = eSex;
		this.eBirth = eBirth;
		this.eMobile = eMobile;
		this.eEmail = eEmail;
		this.eAddress = eAddress;
		this.eStatus = eStatus;
	}

	public EmployeeDto(String eId, String ePw, String eKname, String eEfname, String eElname, String eSex,
			String eBirth, String eMobile, String eEmail, String eAddress) {
		super();
		this.eId = eId;
		this.ePw = ePw;
		this.eKname = eKname;
		this.eEfname = eEfname;
		this.eElname = eElname;
		this.eSex = eSex;
		this.eBirth = eBirth;
		this.eMobile = eMobile;
		this.eEmail = eEmail;
		this.eAddress = eAddress;
	}

	/**
	 * @return the eId
	 */
	public String geteId() {
		return eId;
	}

	/**
	 * @param eId the eId to set
	 */
	public void seteId(String eId) {
		this.eId = eId;
	}

	/**
	 * @return the ePw
	 */
	public String getePw() {
		return ePw;
	}

	/**
	 * @param ePw the ePw to set
	 */
	public void setePw(String ePw) {
		this.ePw = ePw;
	}

	/**
	 * @return the eKname
	 */
	public String geteKname() {
		return eKname;
	}

	/**
	 * @return the eAddress
	 */
	public String geteAddress() {
		return eAddress;
	}


	/**
	 * @param eAddress the eAddress to set
	 */
	public void seteAddress(String eAddress) {
		this.eAddress = eAddress;
	}


	/**
	 * @param eKname the eKname to set
	 */
	public void seteKname(String eKname) {
		this.eKname = eKname;
	}

	/**
	 * @return the eEfname
	 */
	public String geteEfname() {
		return eEfname;
	}

	/**
	 * @param eEfname the eEfname to set
	 */
	public void seteEfname(String eEfname) {
		this.eEfname = eEfname;
	}

	/**
	 * @return the eElname
	 */
	public String geteElname() {
		return eElname;
	}

	/**
	 * @param eElname the eElname to set
	 */
	public void seteElname(String eElname) {
		this.eElname = eElname;
	}

	/**
	 * @return the eSex
	 */
	public String geteSex() {
		return eSex;
	}

	/**
	 * @param eSex the eSex to set
	 */
	public void seteSex(String eSex) {
		this.eSex = eSex;
	}

	/**
	 * @return the eBirth
	 */
	public String geteBirth() {
		return eBirth;
	}

	/**
	 * @param eBirth the eBirth to set
	 */
	public void seteBirth(String eBirth) {
		this.eBirth = eBirth;
	}

	/**
	 * @return the eMobile
	 */
	public String geteMobile() {
		return eMobile;
	}

	/**
	 * @param eMobile the eMobile to set
	 */
	public void seteMobile(String eMobile) {
		this.eMobile = eMobile;
	}

	/**
	 * @return the eEmail
	 */
	public String geteEmail() {
		return eEmail;
	}

	/**
	 * @param eEmail the eEmail to set
	 */
	public void seteEmail(String eEmail) {
		this.eEmail = eEmail;
	}
	
	/**
	 * @return the eState
	 */
	public String geteStatus() {
		return eStatus;
	}

	/**
	 * 
	 * @param eStatus
	 */
	public void seteState(String eStatus) {
		this.eStatus = eStatus;
	}

	/* (non-Javadoc)
	 * @see java.lang.Object#hashCode()
	 */
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((eId == null) ? 0 : eId.hashCode());
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
		EmployeeDto other = (EmployeeDto) obj;
		if (eId == null) {
			if (other.eId != null)
				return false;
		} else if (!eId.equals(other.eId))
			return false;
		return true;
	} 

}
