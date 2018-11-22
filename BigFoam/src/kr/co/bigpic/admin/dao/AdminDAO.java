package kr.co.bigpic.admin.dao;

import java.util.List;

import kr.co.bigpic.users.dto.ImgDto;
import kr.co.bigpic.users.dto.UsersDto;

public interface AdminDAO {
	public List<UsersDto> selectUserAll();
	public void deleteOne(int usernum_pk);
	public List<ImgDto> selectImgAll();
	public ImgDto selectOneImg(int no);
	public void deleteImgOne(int imgno);
}
