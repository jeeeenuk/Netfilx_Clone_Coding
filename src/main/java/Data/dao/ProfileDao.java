package Data.dao;

import Data.dto.ProfileDto;
import db.common.MySqlConnect;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Vector;

public class ProfileDao {
    MySqlConnect db = new MySqlConnect();

    public void insertProfile(ProfileDto profileDto) {
        String sql = "insert into Profile (P_NAME,P_IMG,ID)values(?,?,?)";

        Connection conn = db.getConnection();
        PreparedStatement pstmt = null;
        try {
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, profileDto.getP_NAME());
            pstmt.setString(2, profileDto.getP_IMG());
            pstmt.setString(3, profileDto.getID());
            pstmt.execute();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            db.dbClose(pstmt, conn);
        }
    }
    public List<ProfileDto> getIDProfile(String ID) {
        String sql = "select * from Profile where ID=?";
        Connection conn = db.getConnection();
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        List<ProfileDto> list = new Vector<>();
        try {
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, ID);
            rs = pstmt.executeQuery();
            while(rs.next()) {
                ProfileDto profileDto = new ProfileDto();
                profileDto.setP_ID(rs.getInt("P_ID"));
                profileDto.setP_NAME(rs.getString("P_NAME"));
                profileDto.setP_IMG(rs.getString("P_IMG"));
                profileDto.setID(rs.getString("ID"));
                list.add(profileDto);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            db.dbClose(rs, pstmt, conn);
        }
        return list;
    }
    public ProfileDto getP_IDProfile(int P_ID){
        ProfileDto dto = new ProfileDto();
        String sql = "select * from Profile where P_ID = ?";
        Connection conn = db.getConnection();
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        try {
            pstmt = conn.prepareStatement(sql);
            pstmt.setInt(1,P_ID);
            rs = pstmt.executeQuery();

            if (rs.next()) {
                dto.setP_ID(rs.getInt("P_ID"));
                dto.setP_IMG(rs.getString("P_IMG"));
                dto.setP_NAME(rs.getString("P_NAME"));
                dto.setID(rs.getString("ID"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            db.dbClose(rs, pstmt, conn);
        }
        return dto;
    }
    public void deleteProfile(int P_ID){
        String sql = "delete from Profile where P_ID = ?";
        Connection conn = db.getConnection();
        PreparedStatement pstmt = null;
        try {
            pstmt = conn.prepareStatement(sql);
            pstmt.setInt(1,P_ID);
            pstmt.execute();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            db.dbClose(pstmt, conn);
        }
    }
}
