package kr.co.bigpic.users.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.bigpic.users.dao.UsersDao;
import kr.co.bigpic.users.dto.UsersDto;

@Service
public class UsersServiceImpl implements UsersService{

	@Autowired
	private UsersDao dao;

	@Override
	public void insertUser(UsersDto dto) {
		dao.insertUser(dto);
		
	}

	@Override
	public UsersDto signin(UsersDto dto) {
		
		return dao.isValidUser(dto);
	}

	@Override
	public int isExistId(String id) {
		
		return dao.idCheck(id);
	}
}
