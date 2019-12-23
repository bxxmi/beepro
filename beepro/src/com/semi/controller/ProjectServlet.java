package com.semi.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.semi.service.ProjectService;

@WebServlet("/ProjectServlet")
public class ProjectServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ProjectServlet() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		dual(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		dual(request, response);
	}
	
	private void dual(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		/**
		 * dual method : get, post 방식으로 들어온 요청을 둘다 받는다
		 * 			   : 구분값 설정 필요 (hidden값(예: command) or url/(추가 url로 구분 문자열 예: userservlet/login의 login)) 
		 *			   : 구분값을 통해 service 로 값 전달
		 *  방식 예시
		 *	https://github.com/jaewookleeee/semi/blob/master/src/com/semi/controller/Controller.java#L44
		 *  */
		
		// 구조 변경으로 인해 service단으로 코드 이동 필요 **
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		// 구조 변경으로 인해 service단으로 코드 이동 필요 **
		
		String command = request.getParameter("command");
		System.out.println("[" + command + "]");
		// 서비스와 연결
		ProjectService projectService = null;
		
		 if(command.equals("issueWrite")) {
		  System.out.println("이슈 생성");
		  projectService = new ProjectService();
		  projectService.issueWrite(request, response);
			
		}	else if(command.equals("issueDelete")) {
			System.out.println("이슈 삭제 요청");
			projectService = new ProjectService();
			projectService.issueDelete(request,response);
		
		} else if(command.equals("issueAll")) {
			System.out.println("이슈 전체 보기");
			projectService = new ProjectService();
			projectService.issueAll(request,response);
			
		} else if(command.equals("issueDetail")) {
			System.out.println("선택한 하나의 이슈의 정보 자세히");
			projectService = new ProjectService();
			projectService.issueDetail(request,response);
		}
	}

}
