package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/member/")
public class MemberController {

	ModelAndView mv  = new ModelAndView();
	
	@RequestMapping("login")
	public ModelAndView login() {
		mv.clear();
		mv.setViewName("user/user_login");
		return mv;
	}
	
	@RequestMapping("memJoin")
	public ModelAndView memJoin() {
		mv.clear();
		mv.setViewName("user/user_join");
		return mv;
	}
}
