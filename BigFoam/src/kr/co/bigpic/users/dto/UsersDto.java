package kr.co.bigpic.users.dto;

public class UsersDto {
	private String id;
	private String pwd;
	private String repwd;
	private String name;
	private String email;
	private String signup_date;
	private int usernum_pk;
	
	

	public UsersDto() {}



	public String getId() {
		return id;
	}



	public void setId(String id) {
		this.id = id;
	}



	public String getPwd() {
		return pwd;
	}



	public void setPwd(String pwd) {
		this.pwd = pwd;
	}



	public String getRepwd() {
		return repwd;
	}



	public void setRepwd(String repwd) {
		this.repwd = repwd;
	}



	public String getName() {
		return name;
	}



	public void setName(String name) {
		this.name = name;
	}



	public String getEmail() {
		return email;
	}



	public void setEmail(String email) {
		this.email = email;
	}



	public String getSignup_date() {
		return signup_date;
	}



	public void setSignup_date(String signup_date) {
		this.signup_date = signup_date;
	}



	public int getUsernum_pk() {
		return usernum_pk;
	}



	public void setUsernum_pk(int usernum_pk) {
		this.usernum_pk = usernum_pk;
	}



	public UsersDto(String id, String pwd, String repwd, String name, String email, String signup_date,
			int usernum_pk) {
		super();
		this.id = id;
		this.pwd = pwd;
		this.repwd = repwd;
		this.name = name;
		this.email = email;
		this.signup_date = signup_date;
		this.usernum_pk = usernum_pk;
	}

	
	
}
