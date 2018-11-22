package kr.co.bigpic.users.dao;

import java.util.List;

import kr.co.bigpic.users.dto.ImgDto;

public interface ImgDao {
	public List<ImgDto> selectAllImg();
	public void insertOne(ImgDto dto);
	public ImgDto selectOneImg(int no);
	public void deleteImg(ImgDto dto);
	public List<ImgDto> selectSomeimg(String cname);
	public List<ImgDto> searchList(String searchValue);
}
