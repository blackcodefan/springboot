package captcha;

import captcha.bean.CaptchaBean;
import captcha.service.*;
import captcha.strategy.ICaptchaStrategy;
import captcha.strategy.SimpleCaptchaStrategy;

import java.awt.*;

/**
 * 图形验证码生成器
 *
 * @author zhaoqingyuan
 */
public class CaptchaClient {

    private ICaptchaService captchaService;

    private CaptchaClient(int number, int width, int height, int fontSize, int lineNum, float yawp, Color color, Color colorDrawing,
         ICaptchaStrategy captchaStrategy, boolean transform, ImageTypeEnum imageType) {
        captchaStrategy.setNumber(number);
        switch (imageType) {
            case JPG:
                this.captchaService = new SimpleCaptchaService(width, height, fontSize,
                    lineNum, yawp, color, colorDrawing, captchaStrategy, transform);
                break;
            case GIF:
                this.captchaService = new GifCaptchaService(width, height, fontSize,
                    lineNum, yawp, color, colorDrawing, captchaStrategy, transform);
                break;
            case PNG:
                this.captchaService = new PngCaptchaService(width, height, fontSize,
                    lineNum, yawp, color, colorDrawing, captchaStrategy, transform);
                break;

        }
    }

    /**
     * 创建生成器
     *
     * @return
     */
    public static Builder create() {
        return new Builder();
    }

    /**
     * 获取验证码结果
     *
     * @return
     */
    public CaptchaBean generate() throws Exception {
        return captchaService.generateCaptcha();
    }

    public static final class Builder {

        /**
         * 图片颜色
         */
        Color color = new Color(253, 251, 255);
        Color colorDrawing = new Color(0, 0, 0);
        /**
         * The verification code generator defaults to the character generator for other types of generators
         * can refer to
         *
         * @see ICaptchaStrategy
         */
        ICaptchaStrategy captchaStrategy = new SimpleCaptchaStrategy();

        /**
         * Number of verification codes
         */
        private int number = 4;

        /**
         * Picture width
         */
        private int width = 90;
        /**
         * 图片高度
         */
        private int height = 30;
        /**
         * font size
         */
        private int fontSize = 25;
        /**
         * 连线
         */
        private int lineNum = 3;
        /**
         * Noise ratio
         */
        private float yawp = 0.005f;
        /**
         * Whether the text is deformed
         */
        private boolean transform = false;
        /**
         * File type, default is JPG static picture, GIF type is dynamic picture
         *
         * @see ImageTypeEnum
         */
        private ImageTypeEnum imageType = ImageTypeEnum.JPG;

        public Builder number(int number) {
            this.number = number;
            return this;
        }

        public Builder width(int width) {
            this.width = width;
            return this;
        }

        public Builder height(int height) {
            this.height = height;
            return this;
        }

        public Builder fontSize(int fontSize) {
            this.fontSize = fontSize;
            return this;
        }

        public Builder lineNum(int lineNum) {
            this.lineNum = lineNum;
            return this;
        }

        public Builder yawp(float yawp) {
            this.yawp = yawp;
            return this;
        }

        public Builder color(Color color) {
            this.color = color;
            return this;
        }
        
        public Builder colorDrawing(Color color) {
            this.colorDrawing = color;
            return this;
        }

        public Builder transform(boolean transform) {
            this.transform = transform;
            return this;
        }

        public Builder captchaStrategy(ICaptchaStrategy captchaStrategy) {
            this.captchaStrategy = captchaStrategy;
            return this;
        }

        public Builder imageType(ImageTypeEnum imageType) {
            this.imageType = imageType;
            return this;
        }

        public CaptchaClient build() {
            return new CaptchaClient(number, width, height, fontSize, lineNum, yawp, color, colorDrawing, captchaStrategy, transform, imageType);
        }
    }
}
