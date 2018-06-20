package tmountain.corperation.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import tmountain.corperation.dto.CalDTO;
import tmountain.corperation.dto.CaldataDTO;
import tmountain.corperation.dto.CorpDTO;
import tmountain.corperation.dto.PointDTO;

@Service
public class CorperationDAOImpl implements CorperationDAO{
	
	@Autowired
	SqlSessionTemplate ss;
	
	private String namespace = "corp";

	
	@Override
	public int loginCorp(String corpId, String corpPass) {
		
		HashMap<String, String> map = new HashMap<>();
		map.put("corp_id", corpId);
		map.put("corp_pass", corpPass);
		
		String res = ss.selectOne(namespace + ".corp_login", map);
		
		System.out.println(res);
		
		int result =0;
		
		if(res == null){	//해당 유저가 없는경우
			result=0;
		}else{
			result = 1;		//해당 유저가 있는 경우
		}
		
		return result;
	}

	
	@Override
	public CorpDTO MypageInfo(String corpId) {
		
		HashMap<String, String> map = new HashMap<>();
		map.put("corp_id", corpId);
		
		CorpDTO res = ss.selectOne(namespace + ".corp_corpinfo",map);
		
		return res;
	}


	@Override
	public List<PointDTO> monthHistory(String corpId, String year, String month) {
		
		HashMap<String, String> map = new HashMap<>();
		map.put("corp_id", corpId);
		map.put("year", year);
		map.put("month", month);
		
		List<PointDTO> res = ss.selectList(namespace + ".month_list",map);
		
		return res;
	}


	@Override
	public CaldataDTO CalData(String corpId, String hiddenMonth, String hiddenYear) {
		
		HashMap<String, String> map = new HashMap<>();
		map.put("corp_id", corpId);
		map.put("month", hiddenMonth);
		map.put("year", hiddenYear);
		
		CaldataDTO res = ss.selectOne(namespace + ".cal_data",map);
		
		return res;
	}


	@Override
	public int InsertCal(CalDTO dto) {
		
		int res = ss.insert(namespace + ".insert_cal",dto);
		
		return res;
	}


	@Override
	public List<CalDTO> RegisterResult(String corpId) {
		
		HashMap<String, String> map = new HashMap<>();
		map.put("corp_id", corpId);
		
		List<CalDTO> res = ss.selectList(namespace + ".register_result",map);
		
		return res;
	}

}
