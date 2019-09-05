package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/admin/")
public class AdminController {

	ModelAndView mv = new ModelAndView();
	
	@RequestMapping("main")
	public ModelAndView main() {
		mv.clear();
		mv.setViewName("../admin_view/main_admin");
		return mv;
	}
	
	@RequestMapping("popup")
	public ModelAndView popup() {
		mv.clear();
		mv.setViewName("../admin_view/popUpManagement/popup");
		return mv;
	}
	
	@RequestMapping("notice")
	public ModelAndView noticeList() {
		mv.clear();
		mv.setViewName("../admin_view/noticeManagement/noticeAdmin");
		return mv;
	}
	
	@RequestMapping("menu")
	public ModelAndView menu() {
		mv.clear();
		mv.setViewName("../admin_view/menuManagement/menuAdmin");
		return mv;
	}
	
}