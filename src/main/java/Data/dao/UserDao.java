package Data.dao;

import Data.dto.UserDto;
import db.common.MySqlConnect;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.Vector;

public class UserDao {
    MySqlConnect db = new MySqlConnect();

    public void createAccount(UserDto userDto) {
        String sql = "INSERT INTO WokFlix (ID, PW, NAME, BIRTHDAY, EMAIL, PHONENEUMBER, GENDER) VALUES(?,?,?,?,?,?,?)";
        Connection conn = db.getConnection();
        PreparedStatement pstmt = null;
        try {
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, userDto.getID());
            pstmt.setString(2, userDto.getPW());
            pstmt.setString(3, userDto.getNAME());
            pstmt.setString(4, userDto.getBIRTHDAY());
            pstmt.setString(5, userDto.getEMAIL());
            pstmt.setString(6, userDto.getPHONENUMBER());
            pstmt.setString(7, userDto.getGENDER());
            pstmt.execute();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            db.dbClose(pstmt, conn);
        }
    }

    public UserDto IDCheck (String ID){
        String sql = "select * from WokFlix where ID = ?";
        Connection conn = db.getConnection();
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        UserDto dto = null;

        try {
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, ID);
            rs = pstmt.executeQuery();

            if (rs.next()) {
                dto = new UserDto();
                dto.setID(rs.getString("ID"));
                dto.setPW(rs.getString("PW"));
                dto.setNAME(rs.getString("NAME"));
                dto.setBIRTHDAY(rs.getString("BIRTHDAY"));
                dto.setEMAIL(rs.getString("EMAIL"));
                dto.setPHONENUMBER(rs.getString("PHONENEUMBER"));
                dto.setGENDER(rs.getString("GENDER"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            db.dbClose(rs, pstmt, conn);
        }
        return dto;
    }
    public UserDto ucerCheck(String ID, String PW){
        String sql = "select * from WokFlix where ID = ? and PW = ?";
        Connection conn = db.getConnection();
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        UserDto dto = null;

        try {
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, ID);
            pstmt.setString(2, PW);
            rs = pstmt.executeQuery();
            if (rs.next()) {
                dto = new UserDto();
                dto.setID(rs.getString("ID"));
                dto.setPW(rs.getString("PW"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            db.dbClose(rs, pstmt, conn);
        }
        return dto;
    }

    public List<UserDto> getAllList() {
        List<UserDto> list = new Vector<>();
        String sql = "SELECT * FROM WokFlix";
        Connection conn = db.getConnection();
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        try {
            pstmt = conn.prepareStatement(sql);
            rs = pstmt.executeQuery();
            while (rs.next()) {
                UserDto userDto = new UserDto();
                userDto.setID(rs.getString("ID"));
                userDto.setPW(rs.getString("PW"));
                userDto.setNAME(rs.getString("NAME"));
                userDto.setBIRTHDAY(rs.getString("BIRTHDAY"));
                userDto.setEMAIL(rs.getString("EMAIL"));
                userDto.setPHONENUMBER(rs.getString("PHONENEUMBER"));
                userDto.setGENDER(rs.getString("GENDER"));
                list.add(userDto);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            db.dbClose(rs, pstmt, conn);
        }
        return list;
    }
}
