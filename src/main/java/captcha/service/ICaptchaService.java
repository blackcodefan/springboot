package captcha.service;

import captcha.bean.CaptchaBean;

public interface ICaptchaService {

    CaptchaBean generateCaptcha() throws Exception;

    ImageTypeEnum getImageType();

}
