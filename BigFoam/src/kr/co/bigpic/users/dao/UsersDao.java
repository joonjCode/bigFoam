package kr.co.bigpic.users.dao;

import kr.co.bigpic.users.dto.UsersDto;

public interface UsersDao {
	public void insertUser(UsersDto dto);
	public UsersDto isValidUser(UsersDto dto);
	public int idCheck(String id);
}
