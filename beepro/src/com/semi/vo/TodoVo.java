//업무관리 관련 정보

package com.semi.vo;

import java.sql.Date;

/**
 * @author yaans
 *
 */
public class TodoVo {
	private int todoSeq;		// 업무 번호
	private int projectSeq;	// 프로젝트 번호
	private String title;		// 업무 제목 
	private String content;		// 업무 내용
	private String manager;		// 댬당자
	private Date startDate;		// 업무 시작 날짜
	private Date endDate;		// 업무 종료 날짜
	private String category;	// 업무 분류(디자인, 백, 프론트)
	private String finishCk;	// 업무 종료 확인
	private String progress; 	// 진행상황
	
	public TodoVo() {
		super();
		// TODO Auto-generated constructor stub
	}

	public TodoVo(int todoSeq, int projectSeq, String title, String content, String manager, Date startDate,
			Date endDate, String category, String finishCk, String progress) {
		super();
		this.todoSeq = todoSeq;
		this.projectSeq = projectSeq;
		this.title = title;
		this.content = content;
		this.manager = manager;
		this.startDate = startDate;
		this.endDate = endDate;
		this.category = category;
		this.finishCk = finishCk;
		this.progress = progress;
	}

	public int getTodoSeq() {
		return todoSeq;
	}

	public void setTodoSeq(int todoSeq) {
		this.todoSeq = todoSeq;
	}

	public int getProjectSeq() {
		return projectSeq;
	}

	public void setProjectSeq(int projectSeq) {
		this.projectSeq = projectSeq;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getManager() {
		return manager;
	}

	public void setManager(String manager) {
		this.manager = manager;
	}

	public Date getStartDate() {
		return startDate;
	}

	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}

	public Date getEndDate() {
		return endDate;
	}

	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getFinishCk() {
		return finishCk;
	}

	public void setFinishCk(String finishCk) {
		this.finishCk = finishCk;
	}

	public String getProgress() {
		return progress;
	}

	public void setProgress(String progress) {
		this.progress = progress;
	}

	@Override
	public String toString() {
		return "TodoVo [todoSeq=" + todoSeq + ", projectSeq=" + projectSeq + ", title=" + title + ", content=" + content
				+ ", manager=" + manager + ", startDate=" + startDate + ", endDate=" + endDate + ", category="
				+ category + ", finishCk=" + finishCk + ", progress=" + progress + "]";
	}
	
	
}
