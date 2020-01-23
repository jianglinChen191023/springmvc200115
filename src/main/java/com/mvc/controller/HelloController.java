package com.mvc.controller;

import com.mvc.bean.Role;
import com.mvc.bean.User;
import com.sun.jersey.api.client.Client;
import com.sun.jersey.api.client.WebResource;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.List;
import java.util.UUID;

/**
 * @author jianglinchen
 * @description 描述
 * @date 2020/1/15 / 14:28
 */
@Controller
@RequestMapping("/hello")
public class HelloController {

    /**
     * 测试MVC
     *
     * @param name
     * @return
     */
    @GetMapping(value = "/world", params = "name")
    public String world(String name) {
        System.out.println(name);
        return "success";
    }

    /**
     * 测试JSON
     *
     * @param user
     * @return
     */
    @GetMapping(value = "json", params = {"name", "age"})
    public User json(User user) {
        System.out.println(user);
        return user;
    }

    /**
     * 传统文件上传
     *
     * @param request
     * @return
     */
    @PostMapping("/fileup")
    public ModelAndView fileup(HttpServletRequest request) {
        ModelAndView modelAndView = new ModelAndView();
        String result = "fail";
        String fileName = null;
        System.out.println("上传文件...");
        // 准备路径,无则创建
        String path = request.getSession().getServletContext().getRealPath("/uploads/");
        File file = new File(path);
        if (!file.exists()) {
            file.mkdirs();
        }

        try {
            // 磁盘文件项目工厂
            DiskFileItemFactory factory = new DiskFileItemFactory();
            // Servlet文件上传
            ServletFileUpload upload = new ServletFileUpload(factory);
            // 解析Servlet请求,获取所有文件项
            List<FileItem> items = upload.parseRequest(request);
            for (FileItem item : items) {
                if (item.isFormField()) {
                    // 如果是表单项
                } else {
                    // 文件项
                    // 文件名
                    fileName = item.getName();
                    // 唯一
                    String uuid = UUID.randomUUID().toString().replace("-", "");
                    fileName = uuid + "-" + fileName;
                    // 上传文件
                    item.write(new File(path, fileName));
                    // 上传临时文件
                    item.delete();
                }
            }
            result = "success";
        } catch (Exception e) {
            e.printStackTrace();
        }

        modelAndView.setViewName(result);
        modelAndView.addObject("img", fileName);
        return modelAndView;
    }

    /**
     * MVC文件上传
     *
     * @param request
     * @param upload
     * @return
     */
    @PostMapping("/fileupByMVC")
    public ModelAndView fileupByMVC(HttpServletRequest request, MultipartFile upload) {
        ModelAndView modelAndView = new ModelAndView();
        String result = "fail";
        String fileName = null;
        System.out.println("上传文件...");
        // 准备路径,无则创建
        String path = request.getSession().getServletContext().getRealPath("/uploads/");
        File file = new File(path);
        if (!file.exists()) {
            file.mkdirs();
        }

        try {
            // 文件名
            fileName = upload.getOriginalFilename();
            // 唯一
            String uuid = UUID.randomUUID().toString().replace("-", "");
            fileName = uuid + "-" + fileName;
            // 上传文件
            upload.transferTo(new File(path, fileName));
            result = "success";
        } catch (Exception e) {
            e.printStackTrace();
        }

        modelAndView.setViewName(result);
        modelAndView.addObject("img", fileName);
        return modelAndView;
    }

    /**
     * 跨服务器文件上传
     *
     * @param upload
     * @return
     */
    @PostMapping("/fileupService")
    public ModelAndView fileupService(MultipartFile upload) {
        ModelAndView modelAndView = new ModelAndView();
        String result = "fail";
        String realPath = null;
        System.out.println("上传文件...");
        // 准备路径
        String path = "http://139.196.56.127/uploads/";

        try {
            // 文件名
            String fileName = upload.getOriginalFilename();
            // 唯一
            String uuid = UUID.randomUUID().toString().replace("-", "");
            fileName = uuid + "-" + fileName;
            // 上传文件
            // 创建客户端
            Client client = Client.create();
            // 连接资源
            realPath = path + fileName;
            WebResource resource = client.resource(realPath);
            // 上传文件
            resource.put(upload.getBytes());
            result = "success";
        } catch (Exception e) {
            e.printStackTrace();
        }

        modelAndView.setViewName(result);
        modelAndView.addObject("img", realPath);
        return modelAndView;
    }

    @PostMapping("/dataConversion")
    @ResponseBody
    public Role dataConversion(Role role) {
        System.out.println(role);

        return role;
    }

}
