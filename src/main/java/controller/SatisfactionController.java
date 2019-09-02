package controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import model.SurveyBoardAboutDataBean;
import model.SurveyBoardAnswerDataBean;
import model.SurveyBoardDataBean;
import model.SurveyBoardQuestionDataBean;
import service.SurveyBoardDBBeanMybatis;

@Controller
@RequestMapping("/satisfaction/")
public class SatisfactionController {
	ModelAndView mv = new ModelAndView();
	int pageNum;
	@Autowired
	public SurveyBoardDBBeanMybatis surveyBoardDBBeanMybatis;

	@ModelAttribute
	public void setAttr(HttpServletRequest request) {
		HttpSession session = request.getSession();

		try {
			pageNum = Integer.parseInt(request.getParameter("pageNum"));
		} catch (Exception e) {
			pageNum = 1;
		}
	}

	// 목록 가져오기
	@RequestMapping("list")
	public ModelAndView surveylist() throws Exception {
		mv.clear();

		int pageSize = 6;
		int currentPage = pageNum;

		int count = surveyBoardDBBeanMybatis.getReadCount();
		int startRow = (currentPage - 1) * pageSize;
		int endRow = currentPage * pageSize;
		if (count < endRow)
			endRow = count;
		List<SurveyBoardDataBean> surveyBoardList = null;

		if (surveyBoardDBBeanMybatis.mybatisConnector.getDbname().equals("Oracle")) {
			surveyBoardList = surveyBoardDBBeanMybatis.getSurveyList(startRow, endRow);
		} else {
			surveyBoardList = surveyBoardDBBeanMybatis.getSurveyList(startRow, pageSize);
		}
		System.out.println(surveyBoardList.get(0));
		int number = count - ((currentPage - 1) * pageSize);
		int bottomLine = 3;
		// 5 page
		int pageCount = count / pageSize + (count % pageSize == 0 ? 0 : 1);
		int startPage = 1 + (currentPage - 1) / bottomLine * bottomLine;
		int endPage = startPage + bottomLine - 1;
		if (endPage > pageCount)
			endPage = pageCount;
		mv.addObject("count", count);
		mv.addObject("pageNum", pageNum);
		mv.addObject("surveyBoardList", surveyBoardList);
		mv.addObject("number", number);
		mv.addObject("startPage", startPage);
		mv.addObject("bottomLine", bottomLine);
		mv.addObject("endPage", endPage);
		mv.addObject("pageCount", pageCount);

		mv.setViewName("satisfaction/satisfactionBoard");
		return mv;

	}

	// 질문, 선택지 가져오기
	@RequestMapping("survey")
	public ModelAndView surveyUploadForm() throws Exception {
		mv.clear();

		List<SurveyBoardQuestionDataBean> surveyQuestionList = null;
		List<SurveyBoardAnswerDataBean> surveyAnswerList = null;

		if (surveyBoardDBBeanMybatis.mybatisConnector.getDbname().equals("Oracle")) {
			surveyQuestionList = surveyBoardDBBeanMybatis.getQuestionList();
			surveyAnswerList = surveyBoardDBBeanMybatis.getAnswerList();
		} else {
			surveyQuestionList = surveyBoardDBBeanMybatis.getQuestionList();
			surveyAnswerList = surveyBoardDBBeanMybatis.getAnswerList();
		}
		mv.addObject("surveyQuestionList", surveyQuestionList);
		mv.addObject("surveyAnswerList", surveyAnswerList);
		mv.setViewName("satisfaction/satisfactionForm");
		return mv;
	}

	// 유효성 검사
	@RequestMapping(value = "pNumCheck", method = RequestMethod.GET)
	@ResponseBody
	public String pNumCheck(HttpServletRequest request) {
		// 운송장 번호 넘겨받기
		int p_num = Integer.parseInt(request.getParameter("p_num"));

		// 운송장 번호 자료 유무 및 수령여부 체크(1 있음, 0 없음)
		int result1 = surveyBoardDBBeanMybatis.pNumCheck(p_num);
		// 운송장 번호 작성되었나 유무 체크(1 작성,0 작성안함)
		int result2 = surveyBoardDBBeanMybatis.pNumDupCheck(p_num);
		//최종 확인
		int resultCheck;
		
		// 운송번호는 있고, 글 존재 여부
		if (result1 == 1) {
			if (result2 == 0) {
				resultCheck = 0;
			} else {
				resultCheck = 1;
			}
		}
		// 둘다 아닐때
		else {
			resultCheck = 2;
		}
		
		return Integer.toString(resultCheck);
	}
	
	@RequestMapping(value = "pNumCheck", method = RequestMethod.POST)
	@ResponseBody
	public List bringAbout(HttpServletRequest request) {
		int p_num = Integer.parseInt(request.getParameter("p_num"));
		List<SurveyBoardAboutDataBean> surveyBoardAboutList = null;
		
		if (surveyBoardDBBeanMybatis.mybatisConnector.getDbname().equals("Oracle")) {
			surveyBoardAboutList = surveyBoardDBBeanMybatis.getBringAbout(p_num);
		} else {
			surveyBoardAboutList = surveyBoardDBBeanMybatis.getBringAbout(p_num);
		}
		System.out.println(surveyBoardAboutList);
		return surveyBoardAboutList;
	}
	/*
	 * @RequestMapping("surveyPro") public ModelAndView surveyUploadPro() {
	 * mv.clear(); mv.setViewName("satisfaction/list"); return mv; }
	 */
}
