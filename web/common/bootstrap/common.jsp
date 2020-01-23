<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/1/20
  Time: 22:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->

<!-- Bootstrap -->
<link href="${pageContext.request.contextPath}/bootstrap-3.3.7-dist/css/bootstrap.min.css?v=93" rel="stylesheet">

<!-- HTML5 shim 和 Respond.js 是为了让 IE8 支持 HTML5 元素和媒体查询（media queries）功能 -->
<!-- 警告：通过 file:// 协议（就是直接将 html 页面拖拽到浏览器中）访问页面时 Respond.js 不起作用 -->
<!--[if lt IE 9]>
<script src="https://cdn.jsdelivr.net/npm/html5shiv@3.7.3/dist/html5shiv.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/respond.js@1.4.2/dest/respond.min.js"></script>
<![endif]-->

<!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
<script src="${pageContext.request.contextPath}/js/jquery-3.2.1.min.js"></script>
<!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
<script src="${pageContext.request.contextPath}/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>

<%--
##　响应式布局
    同一套页面可以兼容不同分辨率的设备。
    实现：依赖于栅格系统：将一行平均分成１２个格子，可以指定元素占几个格子
    步骤：
        １.定义容器。相当于之前的ｔａｂｌｅ、
            容器分类：
                １.container
                2.container-fluid
         2.定义行。相当于之前的tr 样式:row
         3.定义元素。大于该元素在不同的设备上,所占的格子数目。样式: col-设备代号-格子数目
            设备代号:
                1. xs : 超小屏幕 手机(<768px) : col-xs-12
                2. sm : 小屏幕 平板 (≥768px)
                3. md : 中等屏幕 桌面显示器 (≥992px)
                4. lg : 大屏幕 大桌面显示器 (≥1200px))
--%>

<%-- 注意事项
       1. 一行中如果格子数目超过12 则超出部分自动换行
       2. 栅格类属性可以向上兼容。栅格类适用于于屏幕宽度大于或大于分界点大小的设备
       3. 如果真实设备的宽度小于了设置的栅格类属性的设备代码的最小值,一个元素会沾满一整行

--%>

<%--
## CSS样式和和JS插件
    全局CSS样式:
        按钮 class="btn btn-default"
        图片
            class="img-responsive" : 图片在任意尺寸都占100%
            图片形状:
                <img src="..." alt="..." class="img-rounded"> : 方形
                <img src="..." alt="..." class="img-circle"> : 圆形
                <img src="..." alt="..." class="img-thumbnail"> : 相框
        表格
            class="table table-bordered table-hover"
        表单
            class="form-control"
    组件:
        导航条
        分页条
    插件:
        轮播图
--%>