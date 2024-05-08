package Data.dto;

public class UserDto {
    private String ID;
    private String PW;
    private String NAME;
    private String BIRTHDAY;
    private String EMAIL;
    private String PHONENUMBER;
    private String GENDER;

    public UserDto() {
        super();
    }

    public UserDto(String ID, String PW, String NAME, String BIRTHDAY, String EMAIL, String PHONENUMBER, String GENDER) {
        this.ID = ID;
        this.PW = PW;
        this.NAME = NAME;
        this.BIRTHDAY = BIRTHDAY;
        this.EMAIL = EMAIL;
        this.PHONENUMBER = PHONENUMBER;
        this.GENDER = GENDER;
    }

    public String getID() {
        return ID;
    }

    public void setID(String ID) {
        this.ID = ID;
    }

    public String getPW() {
        return PW;
    }

    public void setPW(String PW) {
        this.PW = PW;
    }

    public String getNAME() {
        return NAME;
    }

    public void setNAME(String NAME) {
        this.NAME = NAME;
    }

    public String getBIRTHDAY() {
        return BIRTHDAY;
    }

    public void setBIRTHDAY(String BIRTHDAY) {
        this.BIRTHDAY = BIRTHDAY;
    }

    public String getEMAIL() {
        return EMAIL;
    }

    public void setEMAIL(String EMAIL) {
        this.EMAIL = EMAIL;
    }

    public String getPHONENUMBER() {
        return PHONENUMBER;
    }

    public void setPHONENUMBER(String PHONENUMBER) {
        this.PHONENUMBER = PHONENUMBER;
    }

    public String getGENDER() {
        return GENDER;
    }

    public void setGENDER(String GENDER) {
        this.GENDER = GENDER;
    }
}
