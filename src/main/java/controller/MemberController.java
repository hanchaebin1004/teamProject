package controller; /*흐름제어*/

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

@Controller  //현재 클래스를 스프링에서 관리하는 컨트롤러 bean으로 생성
@RequestMapping("/member/")  //모든 맵핑은 /member/를 상속
public class MemberController { 
	//로깅을 위한 변수
	ModelAndView mv = new ModelAndView();

	@Autowired
	public MemberService memberservice;

	@RequestMapping("login") /* 01. 로그인 화면 */
	public ModelAndView login() throws Exception {
		mv.clear();
		mv.setViewName("user/user_login");
		return mv;
	}

	@RequestMapping("loginPro") // jsp에서 name으로 쓰임 -> loginPro(String m_id, String m_pw, HttpServletRequest req)
	public ModelAndView loginPro(String m_id, String m_pw, HttpServletRequest req) throws Exception {
		System.out.println("===========================================================");
		System.out.println(m_id + ":" + m_pw);
		MemberDataBean member = memberservice.user_login(m_id, m_pw);
		req.getSession().setAttribute("member", member);
		System.out.println("toString함" + member);
		ModelAndView model = new ModelAndView();
		
		if(member == null) {
			model.setViewName("redirect:/member/login");
			model.addObject("loginNotOk","1");
		}else {
			model.setViewName("redirect:/main");
		}
		return model;
	}

	@RequestMapping("logout") /* 03. 로그아웃 처리 */
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

	@RequestMapping("memJoin2") /* 회원가입 */
	public ModelAndView memJoin2(MemberDataBean member, String wRoadAdderess, String wRestAddress, String wPostCode)
			throws Exception {
		mv.clear();

		member.setM_add(wPostCode + " " + wRoadAdderess + " " + wRestAddress);
		member.setE_num("1");

		// 서비스를 통해 가장 큰 회원 번호를 가저오고싶어

		// 서비스를 통해서 가장큰 회원번호를 찾아와 =>>> 1 이걸 String maxMemNum 에 넣을거야 그런담에
		// 2 member.setM_num(maxMemNum)으로 값을 넣을거야 그럼 어떻게 해야할까요?

		int maxMemNum = memberservice.getMaxNum();

		member.setM_num(String.valueOf(maxMemNum + 1));

		memberservice.insertMember(member);

		mv.setViewName("user/user_login");
		return mv;
	}

	@RequestMapping("memInformation") /* 회원정보상세 */
	public ModelAndView memInformation() {
		mv.clear();
		mv.setViewName("user/user_meminformation");
		return mv;
	}
	
}
