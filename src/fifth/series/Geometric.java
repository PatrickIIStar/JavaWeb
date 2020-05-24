package fifth.series;

/**
 * @author PatrickStar
 * @version V1.0
 * @date 2020/5/12 16:35
 * @declaration 等比数列求和
 */
public class Geometric implements Calculate {
    /**
     *
     * @declaration 等比数列求和
     * @author PatrickStar
     * @param firstItem 首项
     * @param commonRatio 公比
     * @param numOfItem 总项数
     * @return double  求和结果
     * @date 2020/5/12 18:06
     */
    @Override
    public  double sum(double firstItem, double commonRatio, int numOfItem) {
        return firstItem * (1 - Math.pow(commonRatio, numOfItem)) / (1 - commonRatio);
    }
}
