package kr.co.bigpic.admin.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.bigpic.admin.dao.AdminDAO;
import kr.co.bigpic.users.dto.ImgDto;
import kr.co.bigpic.users.dto.UsersDto;

@Service
public class AdminServiceImple implements AdminService{
	
	@Autowired
	AdminDAO adao;
	
	//setter

	public void setAdao(AdminDAO adao) {
		this.adao = adao;
	}

	@Override
	public List<UsersDto> readUserAll() {
		return adao.selectUserAll();
	}


	@Override
	public void deleteUserOne(int usernum_pk) {
		adao.deleteOne(usernum_pk);	
	}

	@Override
	public List<ImgDto> readImgAll() {
		return adao.selectImgAll();
	}

	@Override
	public void deleteImgOne(int imgno) {
		adao.deleteImgOne(imgno);
	}

	@Override
	public ImgDto selectOneImg(int no) {
		return adao.selectOneImg(no); 
	}


}
