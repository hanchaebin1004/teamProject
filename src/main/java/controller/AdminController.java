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
	
	@RequestMapping("reference")
	public ModelAndView reference() {
		mv.clear();
		mv.setViewName("../admin_view/emp/reference");
		return mv;
	}
	@RequestMapping("emp")
	public ModelAndView emp() {
		mv.clear();
		mv.setViewName("../admin_view/emp/emp");
		return mv;
	}
}
