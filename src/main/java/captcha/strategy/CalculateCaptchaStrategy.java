package captcha.strategy;

import captcha.bean.CaptchaBean;
import captcha.strategy.calculate.CalculateTypeEnum;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import java.awt.*;

/**
 * 算数生成器
 *
 * @author zhaoqingyuan
 */
public class CalculateCaptchaStrategy implements ICaptchaStrategy {
    private final Logger log = LogManager.getLogger(CalculateCaptchaStrategy.class);
    private int number = 2;

    /**
     * Generate captcha code
     *
     * @return
     */
    @Override
    public CaptchaBean generateCode() {
        CalculateTypeEnum calculatorType = CalculateTypeEnum.getRandomType();
        return calculatorType.getCalculator().create(number);
    }

    /**
     * Get captcha font
     *
     * @param size
     * @return
     */
    @Override
    public Font getFont(int size) {
        return new Font("宋体", Font.BOLD, size);
    }


    @Override
    public void setNumber(int number) {
        if (number != 2) {
            log.warn("unsupport set not 2 number");
            return;
        }
        this.number = number;
    }
}
