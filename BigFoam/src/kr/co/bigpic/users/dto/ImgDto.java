package kr.co.bigpic.users.dto;

public class ImgDto {
	private int imgno;
	private int usernum;
	private String filedir;
	private String filename;
	private String cname;
	private String imgname;
	
	public ImgDto() {
		
	}

	public ImgDto(int imgno, int usernum, String filedir, String filename, String cname, String imgname) {
		super();
		this.imgno = imgno;
		this.usernum = usernum;
		this.filedir = filedir;
		this.filename = filename;
		this.cname = cname;
		this.imgname = imgname;
	}

	public int getImgno() {
		return imgno;
	}

	public void setImgno(int imgno) {
		this.imgno = imgno;
	}

	public int getUsernum() {
		return usernum;
	}

	public void setUsernum(int usernum) {
		this.usernum = usernum;
	}

	public String getFiledir() {
		return filedir;
	}

	public void setFiledir(String filedir) {
		this.filedir = filedir;
	}

	public String getFilename() {
		return filename;
	}

	public void setFilename(String filename) {
		this.filename = filename;
	}

	public String getCname() {
		return cname;
	}

	public void setCname(String cname) {
		this.cname = cname;
	}

	public String getImgname() {
		return imgname;
	}

	public void setImgname(String imgname) {
		this.imgname = imgname;
	}

	
	
}
