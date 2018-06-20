package tmountain.corperation.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import tmountain.corperation.dao.CorperationDAO;
import tmountain.corperation.dto.CalDTO;
import tmountain.corperation.dto.CaldataDTO;
import tmountain.corperation.dto.CorpDTO;
import tmountain.corperation.dto.PointDTO;

@Controller
@RequestMapping("corperation")
public class CorperationController {

	private String dir = "corperation/";

	@Autowired
	CorperationDAO corpDAO;

	/*인자값이 필요없는 연결*/
	@RequestMapping("/{url}.tm")
	public String corperation(@PathVariable String url) {
		return dir + url;
	}

	/* 메인이자 로그인 페이지(시작페이지) */
	@RequestMapping("/corp_main.tm")
	public ModelAndView Login() {
		ModelAndView mv = new ModelAndView();

		mv.setViewName(dir + "login");
		return mv;
	}

	/* 마이페이지로 이동할 때 */
	@RequestMapping("/go-mypage.tm")
	public ModelAndView MyPage(HttpSession session, String corpId, String corpPass) {
		ModelAndView mv = new ModelAndView();

		if (session.getAttribute("corpId") == null) {	//맨처음 로그인할 때
			
			int res = corpDAO.loginCorp(corpId, corpPass);
			if (res == 0) { // 로그인 실패 시
				mv.setViewName(dir + "login");
				mv.addObject("login_fail", "fail");
			} else { // 로그인 성공시
				mv.setViewName(dir + "mypage");
				session.setAttribute("corpId", corpId);

				// 마이페이지에 보여줄 기업 정보
				CorpDTO dto = corpDAO.MypageInfo(corpId); // corp테이블에 연락처 컬럼이 없다
															// 나중에 추가하자
				mv.addObject("corpInfo", dto);
			}
		}else{	//로그인 이후에 마이페이지에 다닐 때
			mv.setViewName(dir+"mypage");
			// 마이페이지에 보여줄 기업 정보
			CorpDTO dto = corpDAO.MypageInfo(corpId); // corp테이블에 연락처 컬럼이 없다
														// 나중에 추가하자
			mv.addObject("corpInfo", dto);
		}
		return mv;
	}

	/* 월별내역 이동 */
	@RequestMapping("/go-monthHistory.tm")
	public ModelAndView MonthHistory(HttpSession session) {
		ModelAndView mv = new ModelAndView();
		
		Date today = new Date();

		SimpleDateFormat yearFormat = new SimpleDateFormat("yyyy");
		SimpleDateFormat monthFormat = new SimpleDateFormat("MM");
		
		String year = yearFormat.format(today);
		String month = monthFormat.format(today);
		
		String corpId = session.getAttribute("corpId").toString();
		
		List<PointDTO> res = corpDAO.monthHistory(corpId, year, month);
		
		int sum=0;
		for(int i=0; i<res.size(); i++){
			sum += res.get(i).getPointPoint();
		}

		mv.setViewName(dir + "month_history");
		mv.addObject("month_list",res);
		mv.addObject("sum",sum);
		mv.addObject("month",month);
		
		return mv;
	}
	
	/* 월별내역에서 년월 선택했을 때 */
	@RequestMapping("/select-date.tm")
	@ResponseBody
	public JSONObject SelectDate(HttpSession session, @RequestBody String date) {
		
		//date파라메터 파싱
		JSONParser parser = new JSONParser();
		JSONObject dateobj = null;
		
		try {
			dateobj = (JSONObject)parser.parse(date);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		String year = dateobj.get("year").toString();
		String month = dateobj.get("month").toString();
		
		String corpId = session.getAttribute("corpId").toString();
		
		List<PointDTO> res = corpDAO.monthHistory(corpId, year, month);
		
		int sum=0;
		for(int i=0; i<res.size(); i++){
			sum += res.get(i).getPointPoint();
		}
		
		JSONObject obj = new JSONObject();
		
		obj.put("list", res);
		obj.put("sum", sum);
		
		System.out.println(obj.toString());
		
		return obj;
	}
	
	/* 정산신청신청페이지로 이동 */
	@RequestMapping("/go-register.tm")
	public ModelAndView Register(HttpSession session, String hiddenMonth, String hiddenYear) {
		ModelAndView mv = new ModelAndView();
		
		//System.out.println("안녕 : " + hiddenMonth);
		
		String corpId = session.getAttribute("corpId").toString();
		
		CaldataDTO dto = corpDAO.CalData(corpId, hiddenMonth, hiddenYear);
		
		mv.addObject("calData",dto);
		mv.addObject("month", hiddenMonth);
		mv.addObject("year", hiddenYear);
		
		mv.setViewName(dir + "register");
		return mv;
	}

	/* 정산신청 후 정산내역페이지로 이동 */
	@RequestMapping("/register-go-registerResult.tm")
	public ModelAndView RegisterResult(HttpSession session, String year, String month, String calPoint, String calAsk) {
		
		ModelAndView mv = new ModelAndView();
		
		String corpId = session.getAttribute("corpId").toString();
		
		//System.out.println(calPoint +"///"+ calAsk +"/////" + year +"/////"+ month);
		
		//정산내역을 저장할 dto설정
		CalDTO caldto = new CalDTO();
		caldto.setCalPoint(Integer.parseInt(calPoint));
		caldto.setCalAsk(calAsk);
		caldto.setCorpId(corpId);
		caldto.setCorpCaldate(year + "-" + month);
		
		corpDAO.InsertCal(caldto);
		
		List<CalDTO> list = corpDAO.RegisterResult(corpId);
		mv.addObject("cal_list",list);

		mv.setViewName(dir + "registerResult");
		return mv;
	}
	
	
	/* 마이페이지에서 바로 정산내역으로 갈 때 */
	@RequestMapping("/go-registerResult.tm")
	public ModelAndView RegisterResult(HttpSession session) {
		
		ModelAndView mv = new ModelAndView();
		
		String corpId = session.getAttribute("corpId").toString();
		
		List<CalDTO> list = corpDAO.RegisterResult(corpId);
		mv.addObject("cal_list",list);

		mv.setViewName(dir + "registerResult");
		return mv;
	}

	/* 로그아웃 */
	@RequestMapping("/logout.tm")
	public ModelAndView Logout(HttpSession session) {
		ModelAndView mv = new ModelAndView();

		session.invalidate();
		mv.setViewName(dir + "login");
		return mv;
	}
}
