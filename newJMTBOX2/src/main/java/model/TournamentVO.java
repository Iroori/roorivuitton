package model;

import java.util.Date;

public class TournamentVO {
	private int tournamentId;
	private int stage;
	private int jo;
	private int isright;
	private int content_id;
	private String c_thumbnail;
	private String title;

	private String tournamentName;
	private int memberId;
	private Date t_Date;
	private int t_join;
	private int t_like;
	private int t_share;
	private String thumbnail;
	private int tournament_point;
	// private int tournamentDone;

	public TournamentVO() {

	}

	public TournamentVO(int tournamentId, String tournamentName, String thumbnail) {
		super();
		this.tournamentId = tournamentId;
		this.tournamentName = tournamentName;
		this.thumbnail = thumbnail;
	}

	public TournamentVO(int stage, int jo, int isright, String tournamentFile) {
		super();
		this.stage = stage;
		this.jo = jo;
		this.isright = isright;
		this.c_thumbnail = tournamentFile;
	}
	
	//랜덤토너먼트의 contentVO와 똑같은 구조
	
	
	
	
	public TournamentVO(int tournamentId, int stage, int jo, int isright, int content_id, String tournamentFile,
			String title) {
		super();
		this.tournamentId = tournamentId;
		this.stage = stage;
		this.jo = jo;
		this.isright = isright;
		this.content_id = content_id;
		this.c_thumbnail = tournamentFile;
		this.title = title;
	}

	public int getTournamentId() {
		return tournamentId;
	}

	public void setTournamentId(int tournamentId) {
		this.tournamentId = tournamentId;
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

	public int getIsright() {
		return isright;
	}

	public void setIsright(int isright) {
		this.isright = isright;
	}

	public int getContent_id() {
		return content_id;
	}

	public void setContent_id(int content_id) {
		this.content_id = content_id;
	}


	public String getC_thumbnail() {
		return c_thumbnail;
	}

	public void setC_thumbnail(String c_thumbnail) {
		this.c_thumbnail = c_thumbnail;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getTournamentName() {
		return tournamentName;
	}

	public void setTournamentName(String tournamentName) {
		this.tournamentName = tournamentName;
	}

	public int getMemberId() {
		return memberId;
	}

	public void setMemberId(int memberId) {
		this.memberId = memberId;
	}

	public Date getT_Date() {
		return t_Date;
	}

	public void setT_Date(Date t_Date) {
		this.t_Date = t_Date;
	}

	public int getT_join() {
		return t_join;
	}

	public void setT_join(int t_join) {
		this.t_join = t_join;
	}

	public int getT_like() {
		return t_like;
	}

	public void setT_like(int t_like) {
		this.t_like = t_like;
	}

	public int getT_share() {
		return t_share;
	}

	public void setT_share(int t_share) {
		this.t_share = t_share;
	}

	public String getThumbnail() {
		return thumbnail;
	}

	public void setThumbnail(String thumbnail) {
		this.thumbnail = thumbnail;
	}

	public int getTournament_point() {
		return tournament_point;
	}

	public void setTournament_point(int tournament_point) {
		this.tournament_point = tournament_point;
	}

}
