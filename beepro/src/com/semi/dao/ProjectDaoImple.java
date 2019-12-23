package com.semi.dao;

import static common.JDBCTemplet.getConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.semi.vo.IssueVo;

import static common.JDBCTemplet.*;

public class ProjectDaoImple implements ProjectDao {

	// 이슈 생성
	@Override
	public boolean insertIssue(IssueVo vo) {
		Connection con = getConnection();
		PreparedStatement pstmt = null;
		int res = 0;

		try {
			pstmt = con.prepareStatement(insertIssueSql);
			pstmt.setInt(1, vo.getIssueSeq());
			pstmt.setInt(2, vo.getProjectSeq());
			pstmt.setString(3, vo.getTitle());
			pstmt.setString(4, vo.getWriter());
			pstmt.setString(5, vo.getLevel());
			pstmt.setDate(6, vo.getRegdate());
			pstmt.setString(7, vo.getCategory());
			pstmt.setString(8, vo.getContent());

			res = pstmt.executeUpdate();

			if (res > 0) {
				commit(con);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt, con);
		}
		return (res > 0) ? true : false;
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
