package tmountain.corperation.dao;

import java.util.List;

import tmountain.corperation.dto.CalDTO;
import tmountain.corperation.dto.CaldataDTO;
import tmountain.corperation.dto.CorpDTO;
import tmountain.corperation.dto.PointDTO;

public interface CorperationDAO {
	
	//로그인 하기
	public int loginCorp(String corpId, String corpPass);
	
	//로그인 후 마이페이지 기업 정보 가져오기
	public CorpDTO MypageInfo(String corpId);
	
	//월별 포인트 내역
	public List<PointDTO> monthHistory(String corpId, String year, String month);
	
	//정산신청할 때 해당 월의 총 포인트와 신청업체 정보 가져오기
	public CaldataDTO CalData(String corpId, String hiddenMonth, String hiddenYear);
	
	//정산신청
	public int InsertCal(CalDTO dto);
	
	//정산기록
	public List<CalDTO> RegisterResult(String corpId);
}
