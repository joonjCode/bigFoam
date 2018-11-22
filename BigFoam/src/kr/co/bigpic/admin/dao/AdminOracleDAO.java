package kr.co.bigpic.admin.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.bigpic.users.dto.ImgDto;
import kr.co.bigpic.users.dto.UsersDto;

@Repository
public class AdminOracleDAO implements AdminDAO{
	
	@Autowired
	private SqlSession ss;

	public void setSs(SqlSession ss) {
		this.ss = ss;
	}

	@Override
	public List<UsersDto> selectUserAll() {
		return ss.selectList("kr.co.bigpic.admin.selectUserAll");
	}

	@Override
	public void deleteOne(int usernum_pk) {
		ss.delete("kr.co.bigpic.admin.deleteOne", usernum_pk);
	}

	@Override
	public List<ImgDto> selectImgAll() {
		return ss.selectList("kr.co.bigpic.admin.selectImgList");
	}

	@Override
	public void deleteImgOne(int imgno) {
		ss.delete("kr.co.bigpic.admin.deleteImgOne", imgno);
	}

	@Override
	public ImgDto selectOneImg(int no) {
		return ss.selectOne("kr.co.bigpic.img.selectOneImg",no);
	}




	
}
