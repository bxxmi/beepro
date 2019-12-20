package com.semi.dao;

import static common.JDBCTemplet.getConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.semi.vo.IssueVo;

public class ProjectDaoImple implements ProjectDao{

	// 이슈 생성
	@Override
	public boolean insertIssue(IssueVo vo) {
		Connection con = getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<IssueVo> res = new ArrayList<IssueVo>();
		
		try {
			pstmt = con.prepareStatement(insertIssueSql);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
	
	// 전체 이슈 조회
	@Override
	public List<IssueVo> selectAllIssue() {
		return null;
	}

	// 이슈 하나 조회
	@Override
	public IssueVo selectOneIssue(int issue_seq) {
		return null;
	}

	// 이슈 수정
	@Override
	public boolean updateIssue(IssueVo vo) {
		return false;
	}

	// 이슈 삭제
	@Override
	public boolean deleteIssue(int issue_seq) {
		return false;
	}

}
