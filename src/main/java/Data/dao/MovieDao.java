package Data.dao;

import Data.dto.MovieDto;
import db.common.MySqlConnect;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.Vector;

public class MovieDao {
    MySqlConnect db = new MySqlConnect();

    public List<MovieDto> getALLData() {
        List<MovieDto> list = new Vector<>();
        String sql = "select * from MovieData";
        Connection conn = db.getConnection();
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        try {
            pstmt = conn.prepareStatement(sql);
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

    public List<MovieDto> getP_MovieData(String ID, int P_ID) {
        List<MovieDto> list = new Vector<>();
        List<Integer> W_MovieList = new W_MovieDao().WatchedMovie(ID, P_ID);
        String sql = "select * from MovieData where M_ID=?";
        Connection conn = db.getConnection();
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        try {
            pstmt = conn.prepareStatement(sql);

            for (int M_ID : W_MovieList) {
                //System.out.println(M_ID);
                pstmt.setInt(1, M_ID);
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
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            if (rs == null) db.dbClose(pstmt, conn);
            else db.dbClose(rs, pstmt, conn);
        }
        return list;
    }

    public MovieDto getMovieData(int M_ID) {
        MovieDto dto = new MovieDto();
        String sql = "select * from MovieData where M_ID=?";
        Connection conn = db.getConnection();
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        try {
            pstmt = conn.prepareStatement(sql);
            pstmt.setInt(1, M_ID);
            rs = pstmt.executeQuery();
            while (rs.next()) {
                dto.setM_ID(rs.getInt("M_ID"));
                dto.setM_IMG(rs.getString("M_IMG"));
                dto.setM_TITLE(rs.getString("M_TITLE"));
                dto.setM_DIRECTOR(rs.getString("M_DIRECTOR"));
                dto.setM_TYPE(rs.getString("M_TYPE"));
                dto.setM_STIME(rs.getString("M_STIME"));
                dto.setM_MDAY(rs.getString("M_MDAY"));
                dto.setM_SUMMARY(rs.getString("M_SUMMARY"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return dto;
    }
}
