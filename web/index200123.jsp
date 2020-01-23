<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/1/23
  Time: 19:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>新电视购彩管理系统</title>

    <!-- 主菜单样式 -->
    <%@ include file="/common/common.jsp" %>
    <link rel="stylesheet" type="text/css" href="fonts/iconfont.css?v=132">
    <link rel="stylesheet" type="text/css" href="css/bootstrapmb.com.css?v=123112">
    <script src="js/jquery-1.11.0.min.js?v=12"></script>
    <script type="text/javascript" src="js/bootstrapmb.com.js?v=12"></script>

    <style>
        body {
            padding-top: 50px;
            /*box-sizing: border-box;*/
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

<%-- 左侧菜单 --%>
<div class="container-fluid">
    <div class="row">
        <div class="col-lg-2">
            <div class="nav-left">
                <div class="nav-top">
                    <div id="mini" style="border-bottom:1px solid rgba(255,255,255,.1)"><img src="images/mini.png">
                    </div>
                </div>
                <ul>
                    <li class="nav-item">
                        <a href="javascript:;"><i class="my-icon nav-icon icon_1"></i>
                            <span>网站配置</span>
                            <i class="my-icon nav-more"></i></a>
                        <ul>
                            <li><a href="javascript:;"><span>网站设置</span></a></li>
                            <li><a href="javascript:;"><span>友情链接</span></a></li>
                            <li><a href="javascript:;"><span>分类管理</span></a></li>
                            <li><a href="javascript:;"><span>系统日志</span></a></li>
                        </ul>
                    </li>
                    <li class="nav-item">
                        <a href="javascript:;"><i class="my-icon nav-icon icon_2"></i><span>文章管理</span><i
                                class="my-icon nav-more"></i></a>
                        <ul>
                            <li><a href="javascript:;"><span>站内新闻</span></a></li>
                            <li><a href="javascript:;"><span>站内公告</span></a></li>
                            <li><a href="javascript:;"><span>登录日志</span></a></li>
                        </ul>
                    </li>
                    <li class="nav-item">
                        <a href="javascript:;"><i class="my-icon nav-icon icon_3"></i><span>订单管理</span><i
                                class="my-icon nav-more"></i></a>
                        <ul>
                            <li><a href="javascript:;"><span>订单列表</span></a></li>
                            <li><a href="javascript:;"><span>打个酱油</span></a></li>
                            <li><a href="javascript:;"><span>也打酱油</span></a></li>
                        </ul>
                    </li>
                    <li class="nav-item">
                        <a href="javascript:;"><i class="my-icon nav-icon icon_3"></i><span>订单管理</span><i
                                class="my-icon nav-more"></i></a>
                        <ul>
                            <li><a href="javascript:;"><span>订单列表</span></a></li>
                            <li><a href="javascript:;"><span>打个酱油</span></a></li>
                            <li><a href="javascript:;"><span>也打酱油</span></a></li>
                        </ul>
                    </li>
                    <li class="nav-item">
                        <a href="javascript:;"><i class="my-icon nav-icon icon_3"></i><span>订单管理</span><i
                                class="my-icon nav-more"></i></a>
                        <ul>
                            <li><a href="javascript:;"><span>订单列表</span></a></li>
                            <li><a href="javascript:;"><span>打个酱油</span></a></li>
                            <li><a href="javascript:;"><span>也打酱油</span></a></li>
                        </ul>
                    </li>
                    <li class="nav-item">
                        <a href="javascript:;"><i class="my-icon nav-icon icon_3"></i><span>订单管理</span><i
                                class="my-icon nav-more"></i></a>
                        <ul>
                            <li><a href="javascript:;"><span>订单列表</span></a></li>
                            <li><a href="javascript:;"><span>打个酱油</span></a></li>
                            <li><a href="javascript:;"><span>也打酱油</span></a></li>
                        </ul>
                    </li>
                    <li class="nav-item">
                        <a href="javascript:;"><i class="my-icon nav-icon icon_3"></i><span>订单管理</span><i
                                class="my-icon nav-more"></i></a>
                        <ul>
                            <li><a href="javascript:;"><span>订单列表</span></a></li>
                            <li><a href="javascript:;"><span>打个酱油</span></a></li>
                            <li><a href="javascript:;"><span>也打酱油</span></a></li>
                        </ul>
                    </li>
                    <li class="nav-item">
                        <a href="javascript:;"><i class="my-icon nav-icon icon_3"></i><span>订单管理</span><i
                                class="my-icon nav-more"></i></a>
                        <ul>
                            <li><a href="javascript:;"><span>订单列表</span></a></li>
                            <li><a href="javascript:;"><span>打个酱油</span></a></li>
                            <li><a href="javascript:;"><span>也打酱油</span></a></li>
                        </ul>
                    </li>
                    <li class="nav-item">
                        <a href="javascript:;"><i class="my-icon nav-icon icon_3"></i><span>订单管理</span><i
                                class="my-icon nav-more"></i></a>
                        <ul>
                            <li><a href="javascript:;"><span>订单列表</span></a></li>
                            <li><a href="javascript:;"><span>打个酱油</span></a></li>
                            <li><a href="javascript:;"><span>也打酱油</span></a></li>
                        </ul>
                    </li>
                    <li class="nav-item">
                        <a href="javascript:;"><i class="my-icon nav-icon icon_3"></i><span>订单管理</span><i
                                class="my-icon nav-more"></i></a>
                        <ul>
                            <li><a href="javascript:;"><span>订单列表</span></a></li>
                            <li><a href="javascript:;"><span>打个酱油</span></a></li>
                            <li><a href="javascript:;"><span>也打酱油</span></a></li>
                        </ul>
                    </li>
                    <li class="nav-item">
                        <a href="javascript:;"><i class="my-icon nav-icon icon_3"></i><span>订单管理</span><i
                                class="my-icon nav-more"></i></a>
                        <ul>
                            <li><a href="javascript:;"><span>订单列表</span></a></li>
                            <li><a href="javascript:;"><span>打个酱油</span></a></li>
                            <li><a href="javascript:;"><span>也打酱油</span></a></li>
                        </ul>
                    </li>
                    <li class="nav-item">
                        <a href="javascript:;"><i class="my-icon nav-icon icon_3"></i><span>订单管理</span><i
                                class="my-icon nav-more"></i></a>
                        <ul>
                            <li><a href="javascript:;"><span>订单列表</span></a></li>
                            <li><a href="javascript:;"><span>打个酱油</span></a></li>
                            <li><a href="javascript:;"><span>也打酱油</span></a></li>
                        </ul>
                    </li>
                    <li class="nav-item">
                        <a href="javascript:;"><i class="my-icon nav-icon icon_3"></i><span>订单管理</span><i
                                class="my-icon nav-more"></i></a>
                        <ul>
                            <li><a href="javascript:;"><span>订单列表</span></a></li>
                            <li><a href="javascript:;"><span>打个酱油</span></a></li>
                            <li><a href="javascript:;"><span>也打酱油</span></a></li>
                        </ul>
                    </li>
                    <li class="nav-item">
                        <a href="javascript:;"><i class="my-icon nav-icon icon_3"></i><span>订单管理</span><i
                                class="my-icon nav-more"></i></a>
                        <ul>
                            <li><a href="javascript:;"><span>订单列表</span></a></li>
                            <li><a href="javascript:;"><span>打个酱油</span></a></li>
                            <li><a href="javascript:;"><span>也打酱油</span></a></li>
                        </ul>
                    </li>
                    <li class="nav-item">
                        <a href="javascript:;"><i class="my-icon nav-icon icon_3"></i><span>订单管理</span><i
                                class="my-icon nav-more"></i></a>
                        <ul>
                            <li><a href="javascript:;"><span>订单列表</span></a></li>
                            <li><a href="javascript:;"><span>打个酱油</span></a></li>
                            <li><a href="javascript:;"><span>也打酱油</span></a></li>
                        </ul>
                    </li>
                    <li class="nav-item">
                        <a href="javascript:;"><i class="my-icon nav-icon icon_3"></i><span>订单管理</span><i
                                class="my-icon nav-more"></i></a>
                        <ul>
                            <li><a href="javascript:;"><span>订单列表</span></a></li>
                            <li><a href="javascript:;"><span>打个酱油</span></a></li>
                            <li><a href="javascript:;"><span>也打酱油</span></a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
        <div class="col-lg-10">
            <iframe id="iframe" src="http://www.baidu.com" frameborder="0"></iframe>
        </div>
    </div>
</div>


</body>
</html>


