package model;

import java.util.Date;

public class ReviewVO {
	private int reviewId;
	private String memberId;
	private int contentId;
	private String cTumbnail;
	private String review;
	private Date reviewDate;
	private int rLike;
	private int rShare;
	private String tag;
	private int review_done;
	
	
	public ReviewVO() {
		super();
	}
	public ReviewVO(int reviewId, String memberId, int contentId, String cTumbnail, String review, Date reviewDate,
			int rLike, int rShare, String tag) {
		super();
		this.reviewId = reviewId;
		this.memberId = memberId;
		this.contentId = contentId;
		this.cTumbnail = cTumbnail;
		this.review = review;
		this.reviewDate = reviewDate;
		this.rLike = rLike;
		this.rShare = rShare;
		this.tag = tag;
	}
	public int getReviewId() {
		return reviewId;
	}
	public void setReviewId(int reviewId) {
		this.reviewId = reviewId;
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
	public String getcTumbnail() {
		return cTumbnail;
	}
	public void setcTumbnail(String cTumbnail) {
		this.cTumbnail = cTumbnail;
	}
	public String getReview() {
		return review;
	}
	public void setReview(String review) {
		this.review = review;
	}
	public Date getReviewDate() {
		return reviewDate;
	}
	public void setReviewDate(Date reviewDate) {
		this.reviewDate = reviewDate;
	}
	public int getrLike() {
		return rLike;
	}
	public void setrLike(int rLike) {
		this.rLike = rLike;
	}
	public int getrShare() {
		return rShare;
	}
	public void setrShare(int rShare) {
		this.rShare = rShare;
	}
	public String getTag() {
		return tag;
	}
	public void setTag(String tag) {
		this.tag = tag;
	}
	public int getReview_done() {
		return review_done;
	}
	public void setReview_done(int review_done) {
		this.review_done = review_done;
	}
	
	
}
