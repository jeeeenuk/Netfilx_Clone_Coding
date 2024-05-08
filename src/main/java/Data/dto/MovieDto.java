package Data.dto;

public class MovieDto {
    private int M_ID;
    private String M_IMG;
    private String M_TITLE;
    private String M_DIRECTOR;
    private String M_TYPE;
    private String M_STIME;
    private String M_MDAY;
    private String M_SUMMARY;

    public MovieDto() {
        super();
    }

    public MovieDto(int m_ID, String m_IMG, String m_TITLE, String m_DIRECTOR, String m_TYPE, String m_STIME, String m_MDAY, String m_SUMMARY) {
        M_ID = m_ID;
        M_IMG = m_IMG;
        M_TITLE = m_TITLE;
        M_DIRECTOR = m_DIRECTOR;
        M_TYPE = m_TYPE;
        M_STIME = m_STIME;
        M_MDAY = m_MDAY;
        M_SUMMARY = m_SUMMARY;
    }

    public int getM_ID() {
        return M_ID;
    }

    public void setM_ID(int m_ID) {
        M_ID = m_ID;
    }

    public String getM_IMG() {
        return M_IMG;
    }

    public void setM_IMG(String m_IMG) {
        M_IMG = m_IMG;
    }

    public String getM_TITLE() {
        return M_TITLE;
    }

    public void setM_TITLE(String m_TITLE) {
        M_TITLE = m_TITLE;
    }

    public String getM_DIRECTOR() {
        return M_DIRECTOR;
    }

    public void setM_DIRECTOR(String m_DIRECTOR) {
        M_DIRECTOR = m_DIRECTOR;
    }

    public String getM_TYPE() {
        return M_TYPE;
    }

    public void setM_TYPE(String m_TYPE) {
        M_TYPE = m_TYPE;
    }

    public String getM_STIME() {
        return M_STIME;
    }

    public void setM_STIME(String m_STIME) {
        M_STIME = m_STIME;
    }

    public String getM_MDAY() {
        return M_MDAY;
    }

    public void setM_MDAY(String m_MDAY) {
        M_MDAY = m_MDAY;
    }

    public String getM_SUMMARY() {
        return M_SUMMARY;
    }

    public void setM_SUMMARY(String m_SUMMARY) {
        M_SUMMARY = m_SUMMARY;
    }
}
