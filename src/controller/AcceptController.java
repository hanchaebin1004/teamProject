package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/accept")
public class AcceptController {

	ModelAndView mv = new ModelAndView();

	@RequestMapping("/accept")
	public ModelAndView accept() {
		mv.clear();
		mv.setViewName("accept/accept");
		return mv;
	}
}
