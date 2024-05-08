package Data.dto;

public class ProfileDto {
    private int P_ID;
    private String P_NAME;
    private String P_IMG;
    private String ID;

    public ProfileDto() {
        super();
    }

    public ProfileDto(int P_ID, String P_NAME, String P_IMG, String ID) {
        this.P_ID = P_ID;
        this.P_NAME = P_NAME;
        this.P_IMG = P_IMG;
        this.ID = ID;
    }

    public int getP_ID() {
        return P_ID;
    }

    public void setP_ID(int P_ID) {
        this.P_ID = P_ID;
    }

    public String getP_NAME() {
        return P_NAME;
    }

    public void setP_NAME(String p_NAME) {
        P_NAME = p_NAME;
    }

    public String getP_IMG() {
        return P_IMG;
    }

    public void setP_IMG(String p_IMG) {
        P_IMG = p_IMG;
    }

    public String getID() {
        return ID;
    }

    public void setID(String ID) {
        this.ID = ID;
    }
}
