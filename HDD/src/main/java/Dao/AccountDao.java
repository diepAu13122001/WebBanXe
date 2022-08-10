package Dao;

public class AccountDao {
	private String adm_id;
	private String adm_name;
	private String adm_password;
	private String adm_phoneNum;
	private String adm_mailAddress;
	
	public AccountDao() {
		
	}
	
	public AccountDao(String adm_mailAddress, String adm_password) {
		super();
		this.adm_mailAddress = adm_mailAddress;
		this.adm_password = adm_password;
	}
	
	public String getAdm_password() {
		return adm_password;
	}
	
	public void setAdm_password(String adm_password) {
		this.adm_password = adm_password;
	}
	
	public String getAdm_mailAddress() {
		return adm_mailAddress;
	}
	
	public void setAdm_mailAddress(String adm_mailAddress) {
		this.adm_mailAddress = adm_mailAddress;
	}
	
}
