package Data.dao;

import Data.dto.MovieDto;
import Data.dto.W_MovieDto;
import db.common.MySqlConnect;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.Vector;

public class W_MovieDao {
    MySqlConnect db = new MySqlConnect();

    // P_ID, M_ID를 통해 W_Movie Table 데이터 삽입
    public void insertW_Movie(int P_ID, int M_ID, String ID) { // 시청하기 버튼을 눌렀을 경우 action 던져줘서 데이터삽입
        Connection conn = db.getConnection();
        PreparedStatement pstmt = null;
        String sql = "INSERT INTO W_Movie(P_ID, M_ID, ID) VALUES(?,?,?)";

        try {
            pstmt = conn.prepareStatement(sql);
            pstmt.setInt(1, P_ID);
            pstmt.setInt(2, M_ID);
            pstmt.setString(3, ID);
            pstmt.execute();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            db.dbClose(pstmt, conn);
        }
    }
    public List<MovieDto> getListMovie(int P_ID) {
        List<MovieDto> list = new Vector<>();
        String sql = "select * from W_Movie inner join MovieData MD on W_Movie.M_ID = MD.M_ID where W_Movie.P_ID = ?";
        Connection conn = db.getConnection();
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        try {
            pstmt = conn.prepareStatement(sql);
            pstmt.setInt(1, P_ID);
            rs = pstmt.executeQuery();
            while (rs.next()) {
                MovieDto dto = new MovieDto();

                dto.setM_ID(rs.getInt("M_ID"));
                dto.setM_IMG(rs.getString("M_IMG"));
                dto.setM_TITLE(rs.getString("M_TITLE"));
                dto.setM_DIRECTOR(rs.getString("M_DIRECTOR"));
                dto.setM_TYPE(rs.getString("M_TYPE"));
                dto.setM_STIME(rs.getString("M_STIME"));
                dto.setM_MDAY(rs.getString("M_MDAY"));
                dto.setM_SUMMARY(rs.getString("M_SUMMARY"));
                list.add(dto);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            db.dbClose(rs, pstmt, conn);
        }
        return list;
    }

    public List<Integer> WatchedMovie(String ID, int P_ID) {
        List<Integer> list = new Vector<>();
        String sql = "select M_ID from W_Movie where ID = ? and P_ID = ?";
        Connection conn = db.getConnection();
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        try {
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, ID);
            pstmt.setInt(2, P_ID);
            rs = pstmt.executeQuery();
            while (rs.next()) {
                list.add(rs.getInt("M_ID"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            db.dbClose(rs, pstmt, conn);
        }
        return list;
    }
    public boolean checkW_Movie(int M_ID, int P_ID) {
        String sql = "select count(*) total from W_Movie where M_ID =? and P_ID =?";
        Connection conn = db.getConnection();
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        try {
            pstmt = conn.prepareStatement(sql);
            pstmt.setInt(1, M_ID);
            pstmt.setInt(2, P_ID);
            rs = pstmt.executeQuery();
            if (rs.next()) {
                if (rs.getInt("total") > 0) {
                    return true;
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            db.dbClose(rs, pstmt, conn);
        }
        return false;
    }
}
