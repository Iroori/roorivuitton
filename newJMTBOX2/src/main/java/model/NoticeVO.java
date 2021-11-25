package model;

import java.util.Date;

public class NoticeVO {
	private int noticeId;
	private String subject;
	private String notice;
	private Date noticeDate;
	private String nImg;
	private String nFile;
	private int nView;
	private int open;

	public NoticeVO() {

	}

	public NoticeVO(int noticeId, String subject, String notice, Date noticeDate, String nImg, String nFile, int nView,
			int open) {
		super();
		this.noticeId = noticeId;
		this.subject = subject;
		this.notice = notice;
		this.noticeDate = noticeDate;
		this.nImg = nImg;
		this.nFile = nFile;
		this.nView = nView;
		this.open = open;
	}

	public int getNoticeId() {
		return noticeId;
	}

	public void setNoticeId(int noticeId) {
		this.noticeId = noticeId;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getNotice() {
		return notice;
	}

	public void setNotice(String notice) {
		this.notice = notice;
	}

	public Date getNoticeDate() {
		return noticeDate;
	}

	public void setNoticeDate(Date noticeDate) {
		this.noticeDate = noticeDate;
	}

	public String getnImg() {
		return nImg;
	}

	public void setnImg(String nImg) {
		this.nImg = nImg;
	}

	public String getnFile() {
		return nFile;
	}

	public void setnFile(String nFile) {
		this.nFile = nFile;
	}

	public int getnView() {
		return nView;
	}

	public void setnView(int nView) {
		this.nView = nView;
	}

	public int getOpen() {
		return open;
	}

	public void setOpen(int open) {
		this.open = open;
	}

}
