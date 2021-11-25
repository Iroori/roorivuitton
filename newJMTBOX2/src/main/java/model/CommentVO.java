package model;

import java.util.Date;

public class CommentVO {
	private int commentId;
	private int tournamentId;
	private String memberId;
	private String comments;
	private Date commentDate;
	
	
	

	public CommentVO(int commentId, int tournamentId, String memberId, String comments, Date commentDate) {
		super();
		this.commentId = commentId;
		this.tournamentId = tournamentId;
		this.memberId = memberId;
		this.comments = comments;
		this.commentDate = commentDate;
	}

	public CommentVO() {
		
	}
	
	public int getCommentId() {
		return commentId;
	}
	public void setCommentId(int commentId) {
		this.commentId = commentId;
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
	public String getComments() {
		return comments;
	}
	public void setComments(String comments) {
		this.comments = comments;
	}

	public Date getCommentDate() {
		return commentDate;
	}

	public void setCommentDate(Date commentDate) {
		this.commentDate = commentDate;
	}
	
	
	
	
	
}
