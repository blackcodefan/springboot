package captcha.strategy.calculate;

import captcha.utils.EnumUtils;

/**
 * @author: zhao qingyuan
 * @date: 2019-01-14 16:24
 */
public enum CalculateTypeEnum {
    /**
     * 加
     */
    PLUS("+", PlusCalculator.getInstance()),
    /**
     * 乘
     */
    RIDE("*", RideCalculator.getInstance()),
    /**
     * 减
     */
    REDUCE("-", ReduceCalculator.getInstance());

    private String type;
    private ICalculator calculator;

    CalculateTypeEnum(String type, ICalculator calculator) {
        this.type = type;
        this.calculator = calculator;
    }

    public static CalculateTypeEnum getRandomType() {
        return EnumUtils.random(CalculateTypeEnum.class);
    }

    public String getType() {
        return type;
    }

    public ICalculator getCalculator() {
        return calculator;
    }
}
