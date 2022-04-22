package com.human.java.CmuController;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.human.java.CmuService.CmuSer;
import com.human.java.CmuVO.CmuVO;
import com.human.java.CmuVO.CmupageVO;

@Controller
@RequestMapping("/cmu")
public class CmuCon {
	@Autowired
	private CmuSer CmuSer;
	
	
	//단순 페이지 이동
	@RequestMapping("/{url}.do")
	public String userJoin(@PathVariable String url) {
		return "/cmu/"+url;
	}
	
	// 글 쓸 때, 유저인지 아닌지 확인
	@RequestMapping("cum_check.do")
	public String cmu_check(HttpSession session){
		
		 // 또는 관리자 or 회원 아니면 로그인 창
		 if(session.getAttribute("usr_Id")==null) {
		 return "redirect:/usr/VgUsrlogin.do";
		 } return "redirect:/cmu/VgCmuRegst.do";

	}
	
	// 커뮤니티 글 등록하기(버튼)
	@RequestMapping("cmu_write.do")
	public String cmu_write(CmuVO cmuvo, HttpSession session){
		// 여기서 서비스 호출
		// 세션에서 아이디만 가져오기
		cmuvo.setUSR_ID(String.valueOf(session.getAttribute("usr_Id")));
		// 여기서 vo 값 확인 (컬럼 데이터)
		System.out.println(cmuvo.toString());
		CmuSer.cmu_write(cmuvo);
		
		return "redirect:/cmu/VgCmuList.do";
	}
	
	// 커뮤니티 리스트 불러오기(페이징)
	@RequestMapping("/VgCmuList.do")
	public String cmu_readlist(CmupageVO cmupagevo, Model model, @RequestParam(value = "nowPage", required = false)String nowPage,
			@RequestParam(value = "cntPerPage", required = false) String cntPerPage,String searchCondition,String searchKeyword) {
		int total = CmuSer.cmulistcnt();
		if (nowPage == null && cntPerPage == null) {
			nowPage = "1";
			cntPerPage = "8";
		} else if (nowPage == null) {
			nowPage = "1";
		} else if (cntPerPage == null) {
			cntPerPage = "8";
		}
		
		cmupagevo = new CmupageVO(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage),searchCondition,searchKeyword);
		model.addAttribute("paging", cmupagevo);
		model.addAttribute("cmupagelist", CmuSer.cmugetlist(cmupagevo));
		
		return "/cmu/VgCmuList";
	}


}
