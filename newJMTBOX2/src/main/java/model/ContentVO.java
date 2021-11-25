package model;

import java.util.Date;

public class ContentVO {
	private int content_id;
	private String title;
	private String genre;
	private Date release;
	private String platform;
	private String c_thumbnail;
	private String director;
	private String actor;
	private String youtube;
	private String runningtime;
	private int c_view;
	private int c_like;
	private int c_share;
	private int tournament_point;
	private String tag;
	private Date c_date;
	private String story;
	private Date my_date;
	private int myContent_id;
	

	public ContentVO() {
		super();
	}

	public ContentVO(String title, String c_thumbnail) {
		this.title = title;
		this.c_thumbnail = c_thumbnail;
	}
	
	public ContentVO(int content_id, String title, String genre, Date release, String platform, String c_thumbnail,
			String director, String actor, String youtube, String runningtime, int c_view, int c_like, int c_share,
			int tournament_point, String tag, String story) {
		super();
		this.content_id = content_id;
		this.title = title;
		this.genre = genre;
		this.release = release;
		this.platform = platform;
		this.c_thumbnail = c_thumbnail;
		this.director = director;
		this.actor = actor;
		this.youtube = youtube;
		this.runningtime = runningtime;
		this.c_view = c_view;
		this.c_like = c_like;
		this.c_share = c_share;
		this.tournament_point = tournament_point;
		this.tag = tag;
		this.story = story;
	}

	public ContentVO(int content_id, String title, String platform, String c_thumbnail, String genre) {
		this.content_id=content_id;
		this.title=title;
		this.platform=platform;
		this.c_thumbnail=c_thumbnail;
		this.genre = genre;
	}

	public int getContent_id() {
		return content_id;
	}

	public void setContent_id(int content_id) {
		this.content_id = content_id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getGenre() {
		return genre;
	}

	public void setGenre(String genre) {
		this.genre = genre;
	}

	public Date getRelease() {
		return release;
	}

	public void setRelease(Date release) {
		this.release = release;
	}

	public String getPlatform() {
		return platform;
	}

	public void setPlatform(String platform) {
		this.platform = platform;
	}

	public String getC_thumbnail() {
		return c_thumbnail;
	}

	public void setC_thumbnail(String c_thumbnail) {
		this.c_thumbnail = c_thumbnail;
	}

	public String getDirector() {
		return director;
	}

	public void setDirector(String director) {
		this.director = director;
	}

	public String getActor() {
		return actor;
	}

	public void setActor(String actor) {
		this.actor = actor;
	}

	public String getYoutube() {
		return youtube;
	}

	public void setYoutube(String youtube) {
		this.youtube = youtube;
	}

	public String getRunningtime() {
		return runningtime;
	}

	public void setRunningtime(String runningtime) {
		this.runningtime = runningtime;
	}

	public int getC_view() {
		return c_view;
	}

	public void setC_view(int c_view) {
		this.c_view = c_view;
	}

	public int getC_like() {
		return c_like;
	}

	public void setC_like(int c_like) {
		this.c_like = c_like;
	}

	public int getC_share() {
		return c_share;
	}

	public void setC_share(int c_share) {
		this.c_share = c_share;
	}

	public int getTournament_point() {
		return tournament_point;
	}

	public void setTournament_point(int tournament_point) {
		this.tournament_point = tournament_point;
	}

	public String getTag() {
		return tag;
	}

	public void setTag(String tag) {
		this.tag = tag;
	}

	public Date getC_date() {
		return c_date;
	}

	public void setC_date(Date c_date) {
		this.c_date = c_date;
	}

	public String getStory() {
		return story;
	}

	public void setStory(String story) {
		this.story = story;
	}

	public Date getMy_date() {
		return my_date;
	}

	public void setMy_date(Date my_date) {
		this.my_date = my_date;
	}

	public int getMyContent_id() {
		return myContent_id;
	}

	public void setMyContent_id(int myContent_id) {
		this.myContent_id = myContent_id;
	}

	

	


	
	
}
