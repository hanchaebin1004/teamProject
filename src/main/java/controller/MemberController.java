package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import model.MemberDataBean;
import service.MemberService;

@Controller
@RequestMapping("/member/")
public class MemberController {
	// �α��� ���� ����
	ModelAndView mv = new ModelAndView();

	@Autowired
	public MemberService memberservice;

	@RequestMapping("login") /* 01.로그인 */
	public ModelAndView login() throws Exception {
		mv.clear();
		mv.setViewName("user/user_login");
		return mv;
	}

	@RequestMapping("loginPro") // jsp���� name���� ���� -> loginPro(String m_id, String m_pw,
								// HttpServletRequest req)
	public ModelAndView loginPro(String m_id, String m_pw, HttpSession session) throws Exception {
		System.out.println("===========================================================");
		System.out.println(m_id + ":" + m_pw);
		MemberDataBean member = memberservice.user_login(m_id, m_pw);
		session.setAttribute("member", member);
		System.out.println("toString멤버" + member);
		ModelAndView model = new ModelAndView();

		if (member == null) {
			model.setViewName("redirect:/member/login");
			model.addObject("loginNotOk", "1");
		} else {
			model.setViewName("redirect:/main");
		}
		return model;
	}

	@RequestMapping("logout") /* 03. 로그아웃 */
	public String logout(HttpServletRequest req, HttpServletResponse res) throws Exception {
		HttpSession session = req.getSession(false);
		if (session != null) {
			session.invalidate();
		}
		return "redirect:/main";
	}

	@RequestMapping("memJoin") /* 회원가입 */
	public ModelAndView memJoin(MemberDataBean member) {
		mv.clear();

//		String id = member.getM_id();
//		String passwd = member.getM_pw();

		mv.setViewName("user/user_join");
		return mv;
	}

	@RequestMapping("memJoin2")
	public ModelAndView memJoin2(MemberDataBean member, String wRoadAdderess, String wRestAddress, String wPostCode)
			throws Exception {
		mv.clear();

		member.setM_add(wPostCode + " " + wRoadAdderess + " " + wRestAddress);
		member.setE_num("1");
		int maxMemNum = memberservice.getMaxNum();
		member.setM_num(String.valueOf(maxMemNum + 1));
		memberservice.insertMember(member);
		mv.setViewName("user/user_login");
		return mv;
	}

	@RequestMapping("memInformation") /* 내정보 */
	public ModelAndView memInformation(HttpSession session) {
		mv.clear();
		MemberDataBean member = (MemberDataBean)session.getAttribute("member");
		
		System.out.println(member.getM_add());
		String[] addrs = member.getM_add().split(" ");
		
		String wRoadAdderess = addrs[1];
		String wRestAddress = addrs[2];
		String wPostCode = addrs[0];
		
		mv.addObject("wRoadAdderess", wRoadAdderess);
		mv.addObject("wRestAddress", wRestAddress);
		mv.addObject("wPostCode", wPostCode);
		
		mv.setViewName("user/user_meminformation");
		return mv;
	}

	@RequestMapping("memUpdate") /* 내정보수정 */
	public ModelAndView memUpdate(MemberDataBean member, HttpSession session, String wRoadAdderess, String wRestAddress, String wPostCode) throws Exception {
		mv.clear();
		member.setM_add(wPostCode + " " + wRoadAdderess + " " + wRestAddress);
		System.out.println(member);
		memberservice.user_meminformation(member);
		
		MemberDataBean memberAfter = memberservice.user_login(member.getM_id(), member.getM_pw());
		session.setAttribute("member", memberAfter);
		String[] addrs = memberAfter.getM_add().split(" ");
		
		String wRoad = addrs[1];
		String wRest = addrs[2];
		String wPost = addrs[0];
		
		
		mv.addObject("wRoadAdderess", wRoad);
		mv.addObject("wRestAddress", wRest);
		mv.addObject("wPostCode", wPost);
		mv.setViewName("user/user_meminformation");
		return mv;
	}

}
