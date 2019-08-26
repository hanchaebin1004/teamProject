package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/search/")
public class SearchController {
    ModelAndView mv = new ModelAndView();
    @RequestMapping("search")
    public ModelAndView search() {
        mv.setViewName("search/search");
        return mv;
    }
}
