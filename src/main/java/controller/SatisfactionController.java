package controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import model.SurveyBoardDataBean;
import service.SurveyBoardDBBeanMybatis;

@Controller
@RequestMapping("/satisfaction")
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

	@RequestMapping("/list")
	public ModelAndView surveylist() throws Exception{
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
			surveyBoardList=surveyBoardDBBeanMybatis.getSurveyList(startRow, endRow);
		} else {
			surveyBoardList=surveyBoardDBBeanMybatis.getSurveyList(startRow, pageSize);
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

	@RequestMapping("/survey")
	public ModelAndView writeForm() {
		mv.clear();
		mv.setViewName("satisfaction/satisfactionForm");
		return mv;
	}

}
