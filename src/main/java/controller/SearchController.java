package controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import model.Parcel;
import model.Pickup;
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
    	mv.clear();
    	WayBill wb = searchDBBeanMybatis.searchPost(w_num);
    	RootNode rn = searchDBBeanMybatis.selectNodeCode(w_num);
    	
    	List<Qualities> list = new ArrayList<Qualities>();
    	list = searchDBBeanMybatis.selectQualities(w_num);
    	
    	Parcel parcel = searchDBBeanMybatis.selectWhereNow(w_num);
    	String whereNow = parcel.getP_location();
    	int p_num = parcel.getP_num();
    
    	mv.addObject("rootnode", rn);
    	mv.addObject("waybill", wb);
    	mv.addObject("qList", list);
    	mv.addObject("whereNow", whereNow);
    	mv.addObject("p_num", p_num);
    	
    	mv.setViewName("search/search");
    	return mv;
    }
    @RequestMapping("/pickUpReserve")
    public ModelAndView pickUpReserve(Pickup pickup) {
    	mv.clear();
    	pickup.setPu_date();
    	searchDBBeanMybatis.pickupReserve(pickup);
    	mv.setViewName("redirect:search?reserved=1");
    	return mv;
    }
}
