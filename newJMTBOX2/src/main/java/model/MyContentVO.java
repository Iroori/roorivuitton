package model;

import java.util.Date;

public class MyContentVO {
	public int mycontentId;
	public String memberId;
	public int contentId;
	public int seenContentId;
	public int likeContentId;
	public int shareContentId;
	public Date myDate;
	
	

	public MyContentVO(int mycontentId, String memberId, int contentId, int seenContentId, int likeContentId,
			int shareContentId, Date myDate) {
		super();
		this.mycontentId = mycontentId;
		this.memberId = memberId;
		this.contentId = contentId;
		this.seenContentId = seenContentId;
		this.likeContentId = likeContentId;
		this.shareContentId = shareContentId;
		this.myDate = myDate;
	}

	public MyContentVO() {
		super();
	}

	public int getMycontentId() {
		return mycontentId;
	}

	public void setMycontentId(int mycontentId) {
		this.mycontentId = mycontentId;
	}

	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	public int getContentId() {
		return contentId;
	}

	public void setContentId(int contentId) {
		this.contentId = contentId;
	}

	public int getSeenContentId() {
		return seenContentId;
	}

	public void setSeenContentId(int seenContentId) {
		this.seenContentId = seenContentId;
	}

	public int getLikeContentId() {
		return likeContentId;
	}

	public void setLikeContentId(int likeContentId) {
		this.likeContentId = likeContentId;
	}

	public int getShareContentId() {
		return shareContentId;
	}

	public void setShareContentId(int shareContentId) {
		this.shareContentId = shareContentId;
	}

	public Date getMyDate() {
		return myDate;
	}

	public void setMyDate(Date myDate) {
		this.myDate = myDate;
	}

	
	
	
	
}
