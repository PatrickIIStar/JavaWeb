package fifth.series;

/**
 * @author PatrickStar
 * @version V1.0
 * @date 2020/5/12 16:40
 * @declaration 等差数列求和
 */
public class Arithmetic implements Calculate {
    /**
     * @param firstItem 首项
     * @param tolerance 公差
     * @param numOfItem 总项数
     * @return double   等差数列求和结果
     * @declaration
     * @author PatrickStar
     * @date 2020/5/12 18:06
     */
    @Override
    public double sum(double firstItem, double tolerance, int numOfItem) {
        return numOfItem * firstItem + numOfItem * (numOfItem - 1) * tolerance / 2;
    }
}
