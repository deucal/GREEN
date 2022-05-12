package com.human.java.AiController;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.human.java.AIService.AiSer;
import com.human.java.RcpVO.RcpVO;

@Controller
@RequestMapping("/ai")
public class AiCon {
	
	@Autowired
	private AiSer AiSer;

//	@Autowired
//	private UsrRegSer UsrRegSer;

	@RequestMapping("/{url}.do")
	public String userJoin(@PathVariable String url) {

		return "/ai/" + url;

	}
	
	// 냉레 사진 업로드 경로
	@RequestMapping("vegcipefile.do")
	public ModelAndView vegcipefile(MultipartFile file, HttpSession session, RcpVO rcpvo) throws Exception{
	
		rcpvo.setRCPRS_TITLE("RCPRS_TITLE");
		
		ModelAndView mav = new ModelAndView("redirect:/ai/VgAiVideo.do");
						
		System.out.println("================== file start ==================");
		System.out.println("파일 이름: " + file.getName());
		System.out.println("파일 실제 이름: " + file.getOriginalFilename());
		System.out.println("파일 크기: " + file.getSize());
		System.out.println("content type: " + file.getContentType());
		System.out.println("================== file   END ==================");

		AiSer.store_image(file);
		AiSer.upload_pic(file);
		
		System.out.println(mav);
		
		return mav;
	}
	
	// 냉레 AI 모달 동영상
	@RequestMapping("VgAiVideo.do")
	public String countrcp(Model model) {
		
		String countrcp = AiSer.countrcp();
		model.addAttribute("countrcp", countrcp);
		return "/ai/VgAiVideo";

	}
	
	// 사진 업로드 후 레시피
	@RequestMapping("vegcipefilecheck.do")
	public String vegcipefilecheck(Model model, RcpVO rcpvo) {
						
		List<RcpVO> airecipe = AiSer.Ai_recipe(rcpvo);
		System.out.println(airecipe);
		
		model.addAttribute("vegcipe", airecipe);
		
		return "/ai/VgAiList";

	}
	
}