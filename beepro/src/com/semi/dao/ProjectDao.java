package com.semi.dao;

import java.util.List;

import com.semi.vo.IssueVo;

public interface ProjectDao {
	// 이슈부분
    String insertIssueSql = "INSERT INTO ISSUE VALUES(ISSUE_SEQ.NEXTVAL,PROJECT_SEQ.NEXTVAL,?,?,?,SYSDATE,?,?)";
    String updateIssueSql = "UPDATE ISSUE SET TITLE=?, ISSUE_LEVEL=?, ISSUE_CATEGORY=?, CONTENT=? WHERE ISSUE_SEQ=?";
    String deleteIssueSql = "DELETE FROM ISSUE WHERE ISSUE_SEQ=?";
    String selectAllIssueSql = "SELECT * FROM ISSUE ORDER BY ISSUE_SEQ DESC"; 
    String selectOneIssueSql = "SELECT * FROM ISSUE WHERE ISSUE_SEQ=?";
    
    public List<IssueVo> selectAllIssue();
    
    public IssueVo selectOneIssue(int issue_seq);
    
    public boolean insertIssue(IssueVo vo);
    
    public boolean updateIssue(IssueVo vo);
    
    public boolean deleteIssue(int issue_seq);
}

