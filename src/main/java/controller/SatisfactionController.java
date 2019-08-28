package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/satisfaction")
public class SatisfactionController {
	ModelAndView mv = new ModelAndView();
	int pageNum;

	@ModelAttribute
	public void setAttr(HttpServletRequest request) {
		HttpSession session = request.getSession();
		
		try {
			pageNum = Integer.parseInt(request.getParameter("pageNum"));
		} catch (Exception e) {
			pageNum = 1;
		}
	}

	@RequestMapping("/board")
	public ModelAndView surveylist() {
		mv.clear();
		mv.setViewName("satisfaction/satisfactionBoard");
		return mv;

	}

	@RequestMapping("/survey")
	public ModelAndView writeForm() {
		mv.clear();
		mv.setViewName("satisfaction/satisfactionForm");
		return mv;
	}

}
