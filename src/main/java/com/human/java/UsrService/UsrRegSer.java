package com.human.java.UsrService;

import com.human.java.UsrVO.UsrVO;


public interface UsrRegSer {
	
	public int checkId(UsrVO vo);
	
	public UsrVO Usr_Login(UsrVO vo);
}
