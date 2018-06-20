package tmountain.corperation.dao;

import java.util.List;

import tmountain.corperation.dto.CalDTO;
import tmountain.corperation.dto.CaldataDTO;
import tmountain.corperation.dto.CorpDTO;
import tmountain.corperation.dto.PointDTO;

public interface CorperationDAO {
	
	//�α��� �ϱ�
	public int loginCorp(String corpId, String corpPass);
	
	//�α��� �� ���������� ��� ���� ��������
	public CorpDTO MypageInfo(String corpId);
	
	//���� ����Ʈ ����
	public List<PointDTO> monthHistory(String corpId, String year, String month);
	
	//�����û�� �� �ش� ���� �� ����Ʈ�� ��û��ü ���� ��������
	public CaldataDTO CalData(String corpId, String hiddenMonth, String hiddenYear);
	
	//�����û
	public int InsertCal(CalDTO dto);
	
	//������
	public List<CalDTO> RegisterResult(String corpId);
}
