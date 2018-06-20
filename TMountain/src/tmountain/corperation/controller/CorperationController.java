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

	/*���ڰ��� �ʿ���� ����*/
	@RequestMapping("/{url}.tm")
	public String corperation(@PathVariable String url) {
		return dir + url;
	}

	/* �������� �α��� ������(����������) */
	@RequestMapping("/corp_main.tm")
	public ModelAndView Login() {
		ModelAndView mv = new ModelAndView();

		mv.setViewName(dir + "login");
		return mv;
	}

	/* ������������ �̵��� �� */
	@RequestMapping("/go-mypage.tm")
	public ModelAndView MyPage(HttpSession session, String corpId, String corpPass) {
		ModelAndView mv = new ModelAndView();

		if (session.getAttribute("corpId") == null) {	//��ó�� �α����� ��
			
			int res = corpDAO.loginCorp(corpId, corpPass);
			if (res == 0) { // �α��� ���� ��
				mv.setViewName(dir + "login");
				mv.addObject("login_fail", "fail");
			} else { // �α��� ������
				mv.setViewName(dir + "mypage");
				session.setAttribute("corpId", corpId);

				// ������������ ������ ��� ����
				CorpDTO dto = corpDAO.MypageInfo(corpId); // corp���̺� ����ó �÷��� ����
															// ���߿� �߰�����
				mv.addObject("corpInfo", dto);
			}
		}else{	//�α��� ���Ŀ� ������������ �ٴ� ��
			mv.setViewName(dir+"mypage");
			// ������������ ������ ��� ����
			CorpDTO dto = corpDAO.MypageInfo(corpId); // corp���̺� ����ó �÷��� ����
														// ���߿� �߰�����
			mv.addObject("corpInfo", dto);
		}
		return mv;
	}

	/* �������� �̵� */
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
	
	/* ������������ ��� �������� �� */
	@RequestMapping("/select-date.tm")
	@ResponseBody
	public JSONObject SelectDate(HttpSession session, @RequestBody String date) {
		
		//date�Ķ���� �Ľ�
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
	
	/* �����û��û�������� �̵� */
	@RequestMapping("/go-register.tm")
	public ModelAndView Register(HttpSession session, String hiddenMonth, String hiddenYear) {
		ModelAndView mv = new ModelAndView();
		
		//System.out.println("�ȳ� : " + hiddenMonth);
		
		String corpId = session.getAttribute("corpId").toString();
		
		CaldataDTO dto = corpDAO.CalData(corpId, hiddenMonth, hiddenYear);
		
		mv.addObject("calData",dto);
		mv.addObject("month", hiddenMonth);
		mv.addObject("year", hiddenYear);
		
		mv.setViewName(dir + "register");
		return mv;
	}

	/* �����û �� ���곻���������� �̵� */
	@RequestMapping("/register-go-registerResult.tm")
	public ModelAndView RegisterResult(HttpSession session, String year, String month, String calPoint, String calAsk) {
		
		ModelAndView mv = new ModelAndView();
		
		String corpId = session.getAttribute("corpId").toString();
		
		//System.out.println(calPoint +"///"+ calAsk +"/////" + year +"/////"+ month);
		
		//���곻���� ������ dto����
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
	
	
	/* �������������� �ٷ� ���곻������ �� �� */
	@RequestMapping("/go-registerResult.tm")
	public ModelAndView RegisterResult(HttpSession session) {
		
		ModelAndView mv = new ModelAndView();
		
		String corpId = session.getAttribute("corpId").toString();
		
		List<CalDTO> list = corpDAO.RegisterResult(corpId);
		mv.addObject("cal_list",list);

		mv.setViewName(dir + "registerResult");
		return mv;
	}

	/* �α׾ƿ� */
	@RequestMapping("/logout.tm")
	public ModelAndView Logout(HttpSession session) {
		ModelAndView mv = new ModelAndView();

		session.invalidate();
		mv.setViewName(dir + "login");
		return mv;
	}
}
