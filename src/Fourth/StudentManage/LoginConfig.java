package Fourth.StudentManage;

/**
 * @author PatrickStar
 * @version V1.0
 * @date 2020/4/29 14:24
 */
public class LoginConfig {
    /**
     * 用户id
     */
    private String id;
    /**
     * 用户登录名
     */
    private String login_id;
    /**
     * 登陆密码
     */
    private String login_psw;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getLogin_id() {
        return login_id;
    }

    public void setLogin_id(String login_id) {
        this.login_id = login_id;
    }

    public String getLogin_psw() {
        return login_psw;
    }

    public void setLogin_psw(String login_psw) {
        this.login_psw = login_psw;
    }
}
