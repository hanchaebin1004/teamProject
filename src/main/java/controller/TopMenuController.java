package controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import service.TopMenuDBBeanMybatis;

@Controller
@RequestMapping("/")
public class TopMenuController {
	
	@Autowired
	TopMenuDBBeanMybatis topMenuDBBeanMybatis;
	
	@RequestMapping("topMenu")
	@ResponseBody
	public List list() throws Exception {
		List menuList = topMenuDBBeanMybatis.getTopMenus();
		return menuList;
	}
	
	
}
