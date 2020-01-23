package com.mvc.exception;

import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerExceptionResolver;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @author jianglinchen
 * @description 处理异常解析器
 * @date 2020/1/15 / 17:32
 */
//@Component
public class HandlerExceptionResolverImpl implements HandlerExceptionResolver {

    /**
     * 跳转具体页面
     *
     * @param request
     * @param response
     * @param o
     * @param e
     * @return
     */
    public ModelAndView resolveException(HttpServletRequest request, HttpServletResponse response, Object o, Exception e) {
        ModelAndView modelAndView = new ModelAndView();
        RuntimeException ex = null;
        if (e instanceof RuntimeException) {
            ex = (RuntimeException) e;
        } else {
            ex = new RuntimeException("系统正在维护中...");
        }

        modelAndView.setViewName("error");
        modelAndView.addObject("errorMsg", ex.getMessage());
        return modelAndView;
    }
}
