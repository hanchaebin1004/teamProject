package controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import model.NoticeDataBean;
import service.AdministrationDBBeanMybatis;

@Controller
@RequestMapping("/administer/")
public class AdministerController {

	ModelAndView mv = new ModelAndView();

	@Autowired
	AdministrationDBBeanMybatis administrationDBBeanMybatis;

	@ModelAttribute
	public void setAttr(HttpServletRequest request) {
		HttpSession session = request.getSession();
		int e_num = 1111;
	}

	@RequestMapping("popup")
	public ModelAndView popup() {
		mv.clear();
		mv.setViewName("../admin_view/popUpManagement/popup");
		return mv;
	}

	@RequestMapping("notice")
	public ModelAndView noticeList() throws Exception {
		mv.clear();
		List<NoticeDataBean> noticeList = null;
		noticeList = administrationDBBeanMybatis.getNoticeList();
		mv.addObject("noticeList", noticeList);
		mv.setViewName("../admin_view/noticeManagement/noticeAdmin");
		return mv;
	}

	// 공지 작성
	@RequestMapping("WriteNotice")
	public String writeNotice(NoticeDataBean notice) {
		mv.clear();

		// 조회
		int nb_num = administrationDBBeanMybatis.getNoticeNum();
		if (nb_num != 0) {
			nb_num = nb_num + 1;
		} else {
			nb_num = 1;
		}

		// 셋팅
		notice.setNb_num(nb_num);
		notice.setE_num(1111);

		System.out.println(notice.toString());
		// 작성 실행
		administrationDBBeanMybatis.insertNotice(notice);
		return "redirect:notice";
	}

	// 공지 삭제
	@RequestMapping("DeleteNotice")
	public String deleteNotice(int nb_num) {
		mv.clear();
		// 삭제 실행
		administrationDBBeanMybatis.deleteNotice(nb_num);
		return "redirect:notice";
	}

	// 수령자, 직원번호 가져오기
	@RequestMapping(value = "updateMove", method = RequestMethod.GET)
	@ResponseBody
	public Map<String, Object> bringAbout(int nb_num) {
		List<NoticeDataBean> noticeElementAboutList = null;

		noticeElementAboutList = administrationDBBeanMybatis.getBringNoticeAbout(nb_num);

		Map<String, Object> aboutmap = new HashMap<String, Object>();
		aboutmap.put("nb_num", noticeElementAboutList.get(0).getNb_num());
		aboutmap.put("e_num", noticeElementAboutList.get(0).getE_num());
		aboutmap.put("nb_title", noticeElementAboutList.get(0).getNb_title());
		aboutmap.put("nb_content", noticeElementAboutList.get(0).getNb_content());

		System.out.println(noticeElementAboutList.toString());
		System.out.println(aboutmap.toString());
		return aboutmap;
	}

	// 공지 수정
	@RequestMapping("UpdateNotice")
	public ModelAndView updateNotice(NoticeDataBean notice) {
		mv.clear();

		// 수정 실행
		administrationDBBeanMybatis.updateNotice(notice);
		mv.setViewName("../admin_view/noticeManagement/noticeUpdate");
		return mv;
	}

	@RequestMapping("menu")
	public ModelAndView menu() {
		mv.clear();
		mv.setViewName("../admin_view/menuManagement/menuAdmin");
		return mv;
	}

}
