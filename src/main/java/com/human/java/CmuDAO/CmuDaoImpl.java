package com.human.java.CmuDAO;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.human.java.CmuVO.CmuVO;

@Repository("CmuDao")
public class CmuDaoImpl implements CmuDao{
	@Autowired
	private SqlSessionTemplate mybatis;

	@Override
	public void cmu_write(CmuVO cmuvo) {
		// TODO Auto-generated method stub
		mybatis.insert("Cmu_mapper.insert_cmu",cmuvo);
	}
	
	
}