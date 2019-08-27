package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/accept/")
public class AcceptController {

	ModelAndView mv = new ModelAndView();

	@RequestMapping("accept")
	public ModelAndView accept() {
		mv.clear();
		mv.setViewName("accept/accept");
		return mv;
	}
	
	@RequestMapping("acceptCheck")
	public ModelAndView acceptCheck() {
		mv.clear();
		mv.setViewName("accept/acceptCheck");
		return mv;
	}
	
	@RequestMapping("chargeInfo")
	public ModelAndView chargeInfo() {
		mv.clear();
		mv.setViewName("accept/chargeInfo");
		return mv;
	}
	
	@RequestMapping("tmapEx")
	public ModelAndView tmapEx() {
		mv.clear();
		mv.setViewName("accept/tmapEx");
		return mv;
	}

	@RequestMapping("tmapLength")
	public ModelAndView tmapLength() {
		mv.clear();
		mv.setViewName("accept/tmapLength");
		return mv;
	}

	@RequestMapping("tmapXY")
	public ModelAndView tmapXY() {
		mv.clear();
		mv.setViewName("accept/tmapXY");
		return mv;
	}
}
