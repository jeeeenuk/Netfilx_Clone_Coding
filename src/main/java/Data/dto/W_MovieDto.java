package Data.dto;

public class W_MovieDto {
    private int W_ID;
    private int M_ID;
    private int P_ID;
    private String ID;

    public W_MovieDto() {
        super();
    }

    public W_MovieDto(int W_ID, int M_ID, int P_ID, String ID) {
        this.W_ID = W_ID;
        this.M_ID = M_ID;
        this.P_ID = P_ID;
        this.ID = ID;
    }

    public int getW_ID() {
        return W_ID;
    }

    public void setW_ID(int W_ID) {
        this.W_ID = W_ID;
    }

    public int getM_ID() {
        return M_ID;
    }

    public void setM_ID(int M_ID) {
        this.M_ID = M_ID;
    }

    public int getP_ID() {
        return P_ID;
    }

    public void setP_ID(int P_ID) {
        this.P_ID = P_ID;
    }

    public String getID() {
        return ID;
    }

    public void setID(String ID) {
        this.ID = ID;
    }
}
