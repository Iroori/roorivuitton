package model;

import java.util.Date;

public class ResultVO {
	private int resultId;
	private int tournamentId;
	private String memberId;
	private Date gameDate;
	private int stage;
	private int jo;
	private int isRight;
	private int contentId;
	private int isWin;
	private String t_thumbnail_file;
	private String c_thumbnail;
	private String title;
	private String t_tournament_name;
	private int count;
	private String tournament_file;

	public ResultVO() {

	}

	public ResultVO(String c_thumbnail, String title, int count, int contentId) {
		this.c_thumbnail = c_thumbnail;
		this.title = title;
		this.count = count;
		this.contentId = contentId;

	}

	public ResultVO(String t_thumbnail_file, String t_tournament_name, Date gameDate, int contentId, int tournamentId) {
		super();
		this.t_thumbnail_file = t_thumbnail_file;
		this.t_tournament_name = t_tournament_name;
		this.gameDate = gameDate;
		this.contentId = contentId;
		this.tournamentId = tournamentId;
	}

	public ResultVO(int resultId, int tournamentId, String memberId, Date gameDate, int stage, int jo, int isRight,
			int contentId, int isWin, int resultDone) {
		this.resultId = resultId;
		this.tournamentId = tournamentId;
		this.memberId = memberId;
		this.gameDate = gameDate;
		this.stage = stage;
		this.jo = jo;
		this.isRight = isRight;
		this.contentId = contentId;
		this.isWin = isWin;
		
	}

	public int getResultId() {
		return resultId;
	}

	public void setResultId(int resultId) {
		this.resultId = resultId;
	}

	public int getTournamentId() {
		return tournamentId;
	}

	public void setTournamentId(int tournamentId) {
		this.tournamentId = tournamentId;
	}

	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	public Date getGameDate() {
		return gameDate;
	}

	public void setGameDate(Date gameDate) {
		this.gameDate = gameDate;
	}

	public int getStage() {
		return stage;
	}

	public void setStage(int stage) {
		this.stage = stage;
	}

	public int getJo() {
		return jo;
	}

	public void setJo(int jo) {
		this.jo = jo;
	}

	public int getisRight() {
		return isRight;
	}

	public void setisRight(int isRight) {
		this.isRight = isRight;
	}

	public int getContentId() {
		return contentId;
	}

	public void setContentId(int contentId) {
		this.contentId = contentId;
	}

	public int getisWin() {
		return isWin;
	}

	public void setisWin(int isWin) {
		this.isWin = isWin;
	}

	public String getC_thumbnail() {
		return c_thumbnail;
	}

	public void setC_thumbnail(String c_thumbnail) {
		this.c_thumbnail = c_thumbnail;
	}

	public String getTournament_name() {
		return t_tournament_name;
	}

	public void setTournament_name(String tournament_name) {
		this.t_tournament_name = tournament_name;
	}

	public int getIsRight() {
		return isRight;
	}

	public void setIsRight(int isRight) {
		this.isRight = isRight;
	}

	public int getIsWin() {
		return isWin;
	}

	public void setIsWin(int isWin) {
		this.isWin = isWin;
	}

	public String getT_thumbnail_file() {
		return t_thumbnail_file;
	}

	public void setT_thumbnail_file(String t_thumbnail_file) {
		this.t_thumbnail_file = t_thumbnail_file;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getT_tournament_name() {
		return t_tournament_name;
	}

	public void setT_tournament_name(String t_tournament_name) {
		this.t_tournament_name = t_tournament_name;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	public String getTournament_file() {
		return tournament_file;
	}

	public void setTournament_file(String tournament_file) {
		this.tournament_file = tournament_file;
	}
	
	

}
