package com.human.java.UsrDAO;

import com.human.java.UsrVO.UsrVO;

public interface UsrRegDao {

	public int checkId(UsrVO vo);
	
	public UsrVO Usr_Login(UsrVO vo);
}
