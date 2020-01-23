<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <title>${SystemName}</title>
    <!-- 主菜单样式 -->
    <%@ include file="/common/common.jsp" %>
    <style>
        body {
            padding-top: 70px;
        }

        li {
            /*border: 1px solid #E8D633;*/
        }

        .lottery {
            width: 180px;
        }

        .my_li2 {
            text-align: center;
            padding-top: 5px;
        }

        .my_li2 li {
            width: auto;
            white-space: nowrap;
        }

        .my_li3 ul {
            width: 170px;
        }

        #content {
            border: 1px solid #E8D633;
        }
    </style>
</head>
<body>

<%-- 导航 --%>
<nav class="navbar navbar-default navbar-fixed-top">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <ul class="nav nav-pills nav-justified">
            <li class="my_li1">
                <div class="navbar-header font">
                    <%-- 定义汉堡按钮 --%>
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                            data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>

                    <a class="navbar-brand lottery" href="#">电视购彩管理系统</a>
                </div>
            </li>
            <li class="my_li2"><!-- Collect the nav links, forms, and other content for toggling -->
                <div class="navbar-collapse collapse" id="bs-example-navbar-collapse-1">
                    <%-- 一级标签最多12个 --%>
                    <ul class="nav nav-pills nav-justified my_a_menu">
                        <li class="active"><a href="#">系统管理 <span class="sr-only">(current)</span></a></li>
                        <li><a href="#">账户管理</a></li>
                        <li><a href="#">账单管理</a></li>
                        <li><a href="#">前端管理</a></li>
                        <li><a href="#">统计报表</a></li>
                        <li><a href="#">彩池管理</a></li>
                        <li><a href="#">财务管理</a></li>
                        <li><a href="#">交易日志</a></li>
                        <li><a href="#">用户分析</a></li>
                    </ul>
                </div><!-- /.navbar-collapse --></li>
            <li class="my_li3">
                <ul class="nav navbar-nav navbar-collapse collapse navbar-right drop-down_box">
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
                           aria-haspopup="true"
                           aria-expanded="false">系统超级管理员 <span class="caret"></span></a>

                        <ul class="dropdown-menu">
                            <li><a href="#"> <i class="glyphicon glyphicon-user"></i>&nbsp;用户信息</a></li>
                            <li><a href="#"> <i class="glyphicon glyphicon-cog"></i>&nbsp;修改密码</a></li>
                            <li role="separator" class="divider"></li>
                            <li><a href="#"> <i class="glyphicon glyphicon-off"></i></i>&nbsp;退出</a></li>
                        </ul>
                    </li>
                </ul>
            </li>
        </ul>
    </div>
    </div><!-- /.container-fluid -->
</nav>

<div class="container-fluid" id="content">
    <div class="row">
        <div class="col-lg-2" style="border: 1px solid #E8D633;">
            <!-- 2.主内容区域 -->
            <div id="main_zore" style="float:left;background:yellow;">
                <!-- 2.1 左侧菜单 -->
                <div id="left_zore" style="float:left;width:180px;background:#4d5e70; overflow-y:auto">
                    <div class="panel-group" id="panel-170347">

                    </div>
                </div>
            </div>
        </div>
        <div class="col-lg-10" style="border: 1px solid #E8D633;">
            <!--Body content-->
            <div id="content_zore" style="float:left;min-width:844px;background:#FFF;">
                <iframe id="iframe" src="" frameborder="0" width="100%"></iframe>
            </div>
        </div>
    </div>
</div>

<br/><br/>
</body>
</html>
