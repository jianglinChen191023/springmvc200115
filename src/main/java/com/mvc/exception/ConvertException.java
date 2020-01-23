package com.mvc.exception;

/**
 * @author jianglinchen
 * @description 类型转换异常
 * @date 2020/1/15 / 17:16
 */
public class ConvertException extends Exception {

    public ConvertException(String message) {
        super(message);
    }

    public ConvertException(String message, Throwable cause) {
        super(message, cause);
    }

}
