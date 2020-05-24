package fifth.series;

/**
 * @author PatrickStar
 * @version V1.0
 * @date 2020/5/12 16:29
 */
public class Series {
    private double firstItem;  // 首项
    private int numOfItem;  // 求和项数
    private double tolerance;  // 公差
    private double commonRatio; // 公比
    private double res; // 求和结果

    public double getRes() {
        return res;
    }

    public void setRes(double res) {
        this.res = res;
    }

    public double getFirstItem() {
        return firstItem;
    }

    public void setFirstItem(double firstItem) {
        this.firstItem = firstItem;
    }

    public int getNumOfItem() {
        return numOfItem;
    }

    public void setNumOfItem(int numOfItem) {
        this.numOfItem = numOfItem;
    }

    public double getTolerance() {
        return tolerance;
    }

    public void setTolerance(double tolerance) {
        this.tolerance = tolerance;
    }

    public double getCommonRatio() {
        return commonRatio;
    }

    public void setCommonRatio(double commonRatio) {
        this.commonRatio = commonRatio;
    }
}
