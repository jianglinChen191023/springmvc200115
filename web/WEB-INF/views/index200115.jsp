<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/1/15
  Time: 14:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>首页</title>
</head>
<body>
<h1>欢迎来到20年1月15号学习首页</h1><br/><br/>

<a href="hello/world?name=测试MVC">测试MVC</a><br/><br/>

<a href="hello/json?name=凌晨&age=18&role.name=超级管理员&map['one'].name=MAP集合&map['tow'].age=2&list[0].name=凌晨&list[0].age=10">测试JSON</a><br/><br/>

传统图片上传<br/>
<form action="hello/fileup" enctype="multipart/form-data" method="post">
    <input type="file" name="upload" title="请选择图片"/>
    <input type="submit" value="上传"/>
</form>
<br/><br/>

MVC图片上传<br/>
<form action="hello/fileupByMVC" enctype="multipart/form-data" method="post">
    <input type="file" name="upload" title="请选择图片"/>
    <input type="submit" value="上传"/>
</form>
<br/><br/>

跨服务器图片上传<br/>
<form action="hello/fileupService" enctype="multipart/form-data" method="post">
    <input type="file" name="upload" title="请选择图片"/>
    <input type="submit" value="上传"/>
</form>
<br/><br/>

定义时间类型转换器:<br/>
<form action="hello/dataConversion" method="post">
    <input type="text" value="姓名" name="name"/><br/>
    <input type="text" value="18" name="age"/><br/>
    <input type="text" value="2020-0115" name="date"/><br/>
    <input type="submit" value="提交"/>
</form>
<br/><br/>
</body>
</html>
