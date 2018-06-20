package tmountain.corperation.dto;

public class CalDTO {
	
	int calNo;
	String calDate;	//정산 신청 날짜
	int calPoint;
	String calAsk;
	int calState;
	String corpId;
	String corpCaldate;	//정산하기를 원하는 년,월
	String calOkdate;	//정산이 승인된 날짜
	
	
	public int getCalNo() {
		return calNo;
	}
	public void setCalNo(int calNo) {
		this.calNo = calNo;
	}
	public String getCalDate() {
		return calDate;
	}
	public void setCalDate(String calDate) {
		this.calDate = calDate;
	}
	public int getCalPoint() {
		return calPoint;
	}
	public void setCalPoint(int calPoint) {
		this.calPoint = calPoint;
	}
	public String getCalAsk() {
		return calAsk;
	}
	public void setCalAsk(String calAsk) {
		this.calAsk = calAsk;
	}
	public int getCalState() {
		return calState;
	}
	public void setCalState(int calState) {
		this.calState = calState;
	}
	public String getCorpId() {
		return corpId;
	}
	public void setCorpId(String corpId) {
		this.corpId = corpId;
	}
	public String getCorpCaldate() {
		return corpCaldate;
	}
	public void setCorpCaldate(String corpCaldate) {
		this.corpCaldate = corpCaldate;
	}
	public String getCalOkdate() {
		return calOkdate;
	}
	public void setCalOkdate(String calOkdate) {
		this.calOkdate = calOkdate;
	}
	
}
