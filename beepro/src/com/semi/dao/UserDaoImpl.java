package com.semi.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.semi.vo.UserVo;

import common.JDBCTemplet;

public class UserDaoImpl extends JDBCTemplet implements UserDao {

	@Override
	public int login(String u_id, String u_pwd) {
		Connection con = getConnection();
		PreparedStatement pstmt = null;		
		ResultSet rs = null;
		try {
			pstmt = con.prepareStatement(loginSql);
			pstmt.setString(1, u_id);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				if(rs.getString(1).equals(u_pwd))
					return 1;  //로그인성공
				else
					return 0; //비밀번호 불일치, 로그인 실패
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rs, pstmt, con);
		}
		return -1;//데이터베이스 오류
		
	}

	@Override
	public int join(UserVo vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public String getUserEmail(String u_id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String getUserEmailChecked(String u_id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String setUserEmailChecked(String email) {
		// TODO Auto-generated method stub
		return null;
	}

}
