package tmountain.android.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("android")
public class AndroidController {

	private String dir = "android/";
	
	/*인자값이 필요없는 연결*/
	@RequestMapping("/{url}.tm")
	public String android(@PathVariable String url){
		return dir + url;
	}
	
	@RequestMapping("/mystamp-list.tm")
	public ModelAndView MyStamp(@RequestParam String userId){
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName(dir + "android");
		
		return mv;
	}
}
