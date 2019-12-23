package com.semi.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.semi.dao.ProjectDaoImple;
import com.semi.vo.IssueVo;

public class ProjectService {

	// 이슈 생성 서비스
	public void issueWrite(HttpServletRequest request, HttpServletResponse response) {
		ProjectDaoImple dao = new ProjectDaoImple();
		
		String title = request.getParameter("title");
		String writer = request.getParameter("writer");
		String issue_level = request.getParameter("issue_level");
		String issue_category = request.getParameter("issue_category");
		String content = request.getParameter("content");
		
		IssueVo vo = new IssueVo();
		vo.setTitle(title);
		vo.setWriter(writer);
		vo.setLevel(issue_level);
		vo.setCategory(issue_category);
		vo.setContent(content);
		
		boolean res = dao.insertIssue(vo);
		
		if(res == true) {
			System.out.println("데이터 입력 성공");
		}
	}
    
	// 이슈 삭제 서비스
	public void issueDelete(HttpServletRequest request, HttpServletResponse response) {
		
	}
	
    // 이슈 전체 조회 서비스
	public void issueAll(HttpServletRequest request, HttpServletResponse response) {
		
	}
	
	// 선택한 하나의 이슈 정보를 자세히
	public void issueDetail(HttpServletRequest request, HttpServletResponse response) {
		
	}

}
