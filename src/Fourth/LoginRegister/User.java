package Fourth.LoginRegister;

/**
 * @author PatrickStar
 * @version V1.0
 * @date 2020/4/22 15:33
 */
public class User {
    /** 用户名 */
    private String userName;
    /** 用户密码 */
    private String password;

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
