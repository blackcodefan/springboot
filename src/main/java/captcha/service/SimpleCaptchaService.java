package captcha.service;

import captcha.strategy.ICaptchaStrategy;

import java.awt.*;
import java.awt.image.BufferedImage;

public class SimpleCaptchaService extends AbstractCaptchaService {

    public SimpleCaptchaService(int width, int height, int fontSize, int lineNum, float yawp,
                                Color color, Color colorDrawing, ICaptchaStrategy captchaStrategy, boolean transform) {
        super(width, height, fontSize, lineNum, yawp, color, colorDrawing, captchaStrategy, transform);
    }

    @Override
    public void drawOther(BufferedImage image) {
        //do something
    }

    @Override
    public ImageTypeEnum getImageType() {
        return ImageTypeEnum.JPG;
    }
}
