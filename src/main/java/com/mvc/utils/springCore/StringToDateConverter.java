package com.mvc.utils.springCore;

import com.mvc.exception.ConvertException;
import org.springframework.core.convert.converter.Converter;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * @author jianglinchen
 * @description 自定义类型转换器
 * @date 2020/1/15 / 16:13
 */
public class StringToDateConverter implements Converter<String, Date> {

    public Date convert(String source) {
        if (source == null) {
            throw new RuntimeException("时间不能为空!");
        }

        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        Date date = null;
        try {
            date = sdf.parse(source);
        } catch (ParseException e) {
            throw new RuntimeException("时间类型转换出现错误!");
        }

        return date;
    }
}