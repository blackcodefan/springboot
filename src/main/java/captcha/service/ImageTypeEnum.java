package captcha.service;

import com.fasterxml.jackson.annotation.JsonValue;

/**
 * @author: zhao qingyuan
 * @date: 2019-01-16 17:23
 */
public enum ImageTypeEnum {
    JPG("jpg"),
    PNG("png"),
    GIF("gif");

    private String type;

    ImageTypeEnum(String type) {
        this.type = type;
    }

    @JsonValue
    public String getType() {
        return type;
    }
    
    @Override
    public String toString() {
        return this.type.toLowerCase();
    }
}
