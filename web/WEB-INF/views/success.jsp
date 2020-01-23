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
    <title>成功</title>
</head>
<body>
<h1>恭喜测试成功</h1><br/><br/>

传统图片或MVC图片:<br/>
<img src="${pageContext.request.contextPath}/uploads/${img}"><br/><br/>

服务器图片:<br/>
<img src="${img}"><br/><br/>

</body>
</html>
