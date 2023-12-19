package captcha.bean;

import captcha.service.ImageTypeEnum;

public class CaptchaBean {

    private String result;

    private String[] codeArray;

    private String base64;

    private ImageTypeEnum imageType;

    public String getResult() {
        return result;
    }

    public void setResult(String result) {
        this.result = result;
    }

    public String[] getCodeArray() {
        return codeArray;
    }

    public void setCodeArray(String[] codeArray) {
        this.codeArray = codeArray;
    }

    public ImageTypeEnum getImageType() {
        return imageType;
    }

    public void setImageType(ImageTypeEnum imageType) {
        this.imageType = imageType;
    }

    public String getBase64() {
        return base64;
    }

    public void setBase64(String base64) {
        this.base64 = base64;
    }
}
