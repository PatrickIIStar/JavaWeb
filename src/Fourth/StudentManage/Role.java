package Fourth.StudentManage;

/**
 * @author PatrickStar
 * @version V1.0
 * @date 2020/4/29 14:25
 */
public class Role {
    /**
     * 用户id
     */
    private String id;
    /**
     * 用户权限(0为普通用户，1为管理员)
     */
    private int role;
    /**
     * 描述
     */
    private String description;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public int getRole() {
        return role;
    }

    public void setRole(int role) {
        this.role = role;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}
