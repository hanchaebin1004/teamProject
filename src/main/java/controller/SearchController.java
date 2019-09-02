package controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import model.Qualities;
import model.RootNode;
import model.WayBill;
import service.SearchDBBeanMybatis;

@Controller
@RequestMapping("/search/")
public class SearchController {
    ModelAndView mv = new ModelAndView();
    
    @Autowired
    public SearchDBBeanMybatis searchDBBeanMybatis;
    
    
    @RequestMapping(value = "search", method = RequestMethod.GET)
    public ModelAndView search() {
        mv.setViewName("search/search");
        return mv;
    }
    @RequestMapping(value = "search", method = RequestMethod.POST)
    public ModelAndView searchPro(String w_num) {
    	System.out.println("controller" + w_num);
    	mv.clear();
    	WayBill wb = searchDBBeanMybatis.searchPost(w_num);
    	RootNode rn = searchDBBeanMybatis.selectNodeCode(w_num);
    	List<Qualities> list = new ArrayList<Qualities>();
    	list = searchDBBeanMybatis.selectQualities(w_num);
    	String whereNow = searchDBBeanMybatis.selectWhereNow(w_num);
    	
    	System.out.println(rn);
    	mv.addObject("rootnode", rn);
    	mv.addObject("waybill", wb);
    	mv.addObject("qList", list);
    	mv.addObject("whereNow", whereNow);
    	
    	mv.setViewName("search/search");
    	return mv;
    }
}
