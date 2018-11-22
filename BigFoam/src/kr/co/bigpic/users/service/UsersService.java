package kr.co.bigpic.users.service;

import kr.co.bigpic.users.dto.UsersDto;

public interface UsersService {
	
	public void insertUser(UsersDto dto);
	public UsersDto signin(UsersDto dto);
	public int isExistId(String id);
}
