package controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import model.Deliverestimation;
import model.Emp;
import service.AdminService;

@Controller
@RequestMapping("/admin/")
public class AdminController {

	ModelAndView mv = new ModelAndView();

	@Autowired
	AdminService adminservice;

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
	public ModelAndView notice() {
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

	@RequestMapping("reference")
	public ModelAndView reference() {
		mv.clear();
		mv.setViewName("../admin_view/emp/reference");
		return mv;
	}

	@RequestMapping("emp")
	public ModelAndView emp(HttpSession session) {
		mv.clear();

		Emp emp = (Emp) session.getAttribute("emp");

		List<Deliverestimation> ds = adminservice.getDS(emp.getE_num());

		mv.addObject("DSs", ds);
		mv.setViewName("../admin_view/emp/emp");
		return mv;
	}

	@RequestMapping("passParcel")
	@ResponseBody
	public int passParcel() throws Exception {
		List nodeList = acceptService.getAllNodeDiv2();
		return nodeList;
	}
}
