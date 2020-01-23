<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>200120学习首页 - bootstrap</title>

    <!-- Bootstrap -->
    <link href="../../bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- HTML5 shim 和 Respond.js 是为了让 IE8 支持 HTML5 元素和媒体查询（media queries）功能 -->
    <!-- 警告：通过 file:// 协议（就是直接将 html 页面拖拽到浏览器中）访问页面时 Respond.js 不起作用 -->
    <!--[if lt IE 9]>
    <script src="https://cdn.jsdelivr.net/npm/html5shiv@3.7.3/dist/html5shiv.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/respond.js@1.4.2/dest/respond.min.js"></script>
    <![endif]-->

    <style>
        .inner {
            border: 1px solid red;
        }

        @-moz-document url-prefix() {
            fieldset {
                display: table-cell;
            }
        }

        .paddtop {
            padding-top: 10px;
        }

        .search-btn {
            float: left;
            border: 1px solid #ffc900;
            width: 90px;
            height: 35px;
            background-color: #ffc900;
            text-align: center;
            line-height: 35px;
            margin-top: 15px;
        }

        .search-input {
            float: left;
            border: 2px solid #ffc900;
            width: 400px;
            height: 35px;
            padding-left: 5px;
            margin-top: 15px;
        }

        .jx {
            border-bottom: 2px solid #ffc900;
            padding: 5px;
        }

        .company {
            height: 40px;
            background-color: #ffc900;
            text-align: center;
            line-height: 40px;
            font-size: 8px;
        }
    </style>
</head>
<body>
<h1>你好，世界！</h1>

<%-- 定义容器 --%>
<div class="container-fluid">
    <%-- 定义行 --%>
    <div class="row">
        <%-- 定义元素
            在大显示器一行 12个格子
            在pad上一行 6个格子

        --%>
        <div class="col-lg-1 col-sm-2 inner">栅格1</div>
        <div class="col-lg-1 col-sm-2 inner">栅格2</div>
        <div class="col-lg-1 col-sm-2 inner">栅格3</div>
        <div class="col-lg-1 col-sm-2 inner">栅格4</div>
        <div class="col-lg-1 col-sm-2 inner">栅格5</div>
        <div class="col-lg-1 col-sm-2 inner">栅格6</div>
        <div class="col-lg-1 col-sm-2 inner">栅格7</div>
        <div class="col-lg-1 col-sm-2 inner">栅格8</div>
        <div class="col-lg-1 col-sm-2 inner">栅格9</div>
        <div class="col-lg-1 col-sm-2 inner">栅格10</div>
        <div class="col-lg-1 col-sm-2 inner">栅格11</div>
        <div class="col-lg-1 col-sm-2 inner">栅格12</div>
    </div>
</div>

<%-- CSS样式 --%>
<a class="btn btn-default" href="#" role="button">Link</a>
<button class="btn btn-default" type="submit">Button</button>
<input class="btn btn-default" type="button" value="Input">
<input class="btn btn-default" type="submit" value="Submit">

<!-- Standard button -->
<button type="button" class="btn btn-default">（默认样式）Default</button>

<!-- Provides extra visual weight and identifies the primary action in a set of buttons -->
<button type="button" class="btn btn-primary">（首选项）Primary</button>

<!-- Indicates a successful or positive action -->
<button type="button" class="btn btn-success">（成功）Success</button>

<!-- Contextual button for informational alert messages -->
<button type="button" class="btn btn-info">（一般信息）Info</button>

<!-- Indicates caution should be taken with this action -->
<button type="button" class="btn btn-warning">（警告）Warning</button>

<!-- Indicates a dangerous or potentially negative action -->
<button type="button" class="btn btn-danger">（危险）Danger</button>

<!-- Deemphasize a button by making it look like a link while maintaining button behavior -->
<button type="button" class="btn btn-link">（链接）Link</button>

<br/><br/>
<%-- 图片 --%>
<img src="${pageContext.request.contextPath}/img/banner_1.jpg" class="img-responsive" alt="Responsive image">

<img src="../../images/2.jpg" alt="..." class="img-rounded">
<img src="../../images/3.jpg" alt="..." class="img-circle">
<img src="../../images/4.jpg" alt="..." class="img-thumbnail">

<br/><br/>
<%-- 表格 --%>
<div class="table-responsive">
    <table class="table table-bordered table-hover table-condensed">
        <tr>
            <th>编号</th>
            <th>姓名</th>
            <th>年龄</th>
        </tr>
        <tr>
            <th>001</th>
            <th>张三</th>
            <th>18</th>
        </tr>
        <tr>
            <th>002</th>
            <th>李四</th>
            <th>18</th>
        </tr>
        <tr>
            <th>003</th>
            <th>王五</th>
            <th>18</th>
        </tr>
    </table>
</div>
<br/><br/>
<%-- 表单 --%>
<form>
    <div class="form-group">
        <label for="exampleInputEmail1">Email address</label>
        <input type="email" class="form-control" id="exampleInputEmail1" placeholder="Email">
    </div>
    <div class="form-group">
        <label for="exampleInputPassword1">Password</label>
        <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
    </div>
    <div class="form-group">
        <label for="exampleInputFile">File input</label>
        <input type="file" id="exampleInputFile">
        <p class="help-block">Example block-level help text here.</p>
    </div>
    <div class="checkbox">
        <label>
            <input type="checkbox"> Check me out
        </label>
    </div>
    <button type="submit" class="btn btn-default">Submit</button>
</form>

<br/><br/>
<form class="form-horizontal">
    <div class="form-group">
        <label for="inputEmail3" class="col-sm-2 control-label">Email</label>
        <div class="col-sm-10">
            <input type="email" class="form-control" id="inputEmail3" placeholder="Email">
        </div>
    </div>
    <div class="form-group">
        <label for="inputPassword3" class="col-sm-2 control-label">Password</label>
        <div class="col-sm-10">
            <input type="password" class="form-control" id="inputPassword3" placeholder="Password">
        </div>
    </div>
    <div class="form-group">
        <div class="col-sm-offset-2 col-sm-10">
            <div class="checkbox">
                <label>
                    <input type="checkbox"> Remember me
                </label>
            </div>
        </div>
    </div>
    <div class="form-group">
        <div class="col-sm-offset-2 col-sm-10">
            <button type="submit" class="btn btn-default">Sign in</button>
        </div>
    </div>
</form>

<br/>
<form class="form-inline">
    <div class="form-group">
        <label for="exampleInputName2">Name</label>
        <input type="text" class="form-control" id="exampleInputName2" placeholder="Jane Doe">
    </div>
    <div class="form-group">
        <label for="exampleInputEmail2">Email</label>
        <input type="email" class="form-control" id="exampleInputEmail2" placeholder="jane.doe@example.com">
    </div>
    <button type="submit" class="btn btn-default">Send invitation</button>
</form>

<br/>
<form class="form-inline">
    <div class="form-group">
        <label class="sr-only" for="exampleInputEmail3">Email address</label>
        <input type="email" class="form-control" id="exampleInputEmail3" placeholder="Email">
    </div>
    <div class="form-group">
        <label class="sr-only" for="exampleInputPassword3">Password</label>
        <input type="password" class="form-control" id="exampleInputPassword3" placeholder="Password">
    </div>
    <div class="checkbox">
        <label>
            <input type="checkbox"> Remember me
        </label>
    </div>
    <button type="submit" class="btn btn-default">Sign in</button>
</form>

<br/>
<form class="form-inline">
    <div class="form-group">
        <label class="sr-only" for="exampleInputAmount">Amount (in dollars)</label>
        <div class="input-group">
            <div class="input-group-addon">$</div>
            <input type="text" class="form-control" id="exampleInputAmount" placeholder="Amount">
            <div class="input-group-addon">.00</div>
        </div>
    </div>
    <button type="submit" class="btn btn-primary">Transfer cash</button>
</form>
<br/><br/>

<%-- 导航 --%>
<nav class="navbar navbar-default">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <%-- 定义汉堡按钮 --%>
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                    data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">Brand</a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li class="active"><a href="#">Link <span class="sr-only">(current)</span></a></li>
                <li><a href="#">Link</a></li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                       aria-expanded="false">Dropdown <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="#">Action</a></li>
                        <li><a href="#">Another action</a></li>
                        <li><a href="#">Something else here</a></li>
                        <li role="separator" class="divider"></li>
                        <li><a href="#">Separated link</a></li>
                        <li role="separator" class="divider"></li>
                        <li><a href="#">One more separated link</a></li>
                    </ul>
                </li>
            </ul>

            <form class="navbar-form navbar-left">
                <div class="form-group">
                    <input type="text" class="form-control" placeholder="Search">
                </div>
                <button type="submit" class="btn btn-default">Submit</button>
            </form>

            <ul class="nav navbar-nav navbar-right">
                <li><a href="#">Link</a></li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                       aria-expanded="false">Dropdown <span class="caret"></span></a>

                    <ul class="dropdown-menu">
                        <li><a href="#">Action</a></li>
                        <li><a href="#">Another action</a></li>
                        <li><a href="#">Something else here</a></li>
                        <li role="separator" class="divider"></li>
                        <li><a href="#">Separated link</a></li>
                    </ul>
                </li>
            </ul>
        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>

<br/><br/>
<%-- 分页条 --%>
<nav aria-label="Page navigation">
    <ul class="pagination">
        <li class="disabled">
            <a href="#" aria-label="Previous">
                <span aria-hidden="true">&laquo;</span>
            </a>
        </li>
        <li><a href="#">1</a></li>
        <li class="active"><a href="#">2</a></li>
        <li><a href="#">3</a></li>
        <li><a href="#">4</a></li>
        <li><a href="#">5</a></li>
        <li>
            <a href="#" aria-label="Next">
                <span aria-hidden="true">&raquo;</span>
            </a>
        </li>
    </ul>
</nav>


<br/><br/>
<%-- 轮播图 --%>
<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
        <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
        <li data-target="#carousel-example-generic" data-slide-to="1"></li>
        <li data-target="#carousel-example-generic" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
        <div class="item active">
            <img src="../../images/1.jpg" alt="...">
            <div class="carousel-caption">
                ...
            </div>
        </div>
        <div class="item">
            <img src="../../images/2.jpg" alt="...">
            <div class="carousel-caption">
                ...
            </div>
        </div>
        <div class="item">
            <img src="../../images/3.jpg" alt="...">
            <div class="carousel-caption">
                ...
            </div>
        </div>
    </div>

    <!-- Controls -->
    <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
    </a>
</div>

<br/><br/>
<%-- 案例 --%>
<!-- 1.页眉部分-->
<header class="container-fluid">
    <div class="row">
        <img src="../../img/top_banner.jpg" class="img-responsive">
    </div>
    <div class="row paddtop">
        <div class="col-md-3">
            <img src="../../img/logo.jpg" class="img-responsive">
        </div>
        <div class="col-md-5">
            <input class="search-input" placeholder="请输入线路名称">
            <a class="search-btn" href="#">搜索</a>
        </div>
        <div class="col-md-4">
            <img src="../../img/hotel_tel.png" class="img-responsive">
        </div>

    </div>
    <!--导航栏-->
    <div class="row">
        <nav class="navbar navbar-default">
            <div class="container-fluid">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <!-- 定义汉堡按钮 -->
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                            data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#">首页</a>
                </div>

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-2">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="#">Link <span class="sr-only">(current)</span></a></li>
                        <li><a href="#">Link</a></li>
                        <li><a href="#">Link</a></li>
                        <li><a href="#">Link</a></li>
                        <li><a href="#">Link</a></li>
                        <li><a href="#">Link</a></li>

                    </ul>
                </div><!-- /.navbar-collapse -->
            </div><!-- /.container-fluid -->
        </nav>

    </div>

    <!--轮播图-->
    <div class="row">
        <div id="carousel-example-generic1" class="carousel slide" data-ride="carousel">
            <!-- Indicators -->
            <ol class="carousel-indicators">
                <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                <li data-target="#carousel-example-generic" data-slide-to="2"></li>
            </ol>

            <!-- Wrapper for slides -->
            <div class="carousel-inner" role="listbox">
                <div class="item active">
                    <img src="../../img/banner_1.jpg" alt="...">
                </div>
                <div class="item">
                    <img src="../../img/banner_2.jpg" alt="...">
                </div>
                <div class="item">
                    <img src="../../img/banner_3.jpg" alt="...">
                </div>

            </div>

            <!-- Controls -->
            <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>


    </div>

</header>
<!-- 2.主体部分-->
<div class="container">
    <div class="row jx">
        <img src="../../img/icon_5.jpg">
        <span>黑马精选</span>
    </div>

    <div class="row paddtop">
        <div class="col-md-3">
            <div class="thumbnail">
                <img src="../../img/jiangxuan_3.jpg" alt="">
                <p>上海直飞三亚5天4晚自由行(春节预售+亲子/蜜月/休闲游首选+豪华酒店任选+接送机)</p>
                <font color="red">&yen; 699</font>
            </div>
        </div>
        <div class="col-md-3">
            <div class="thumbnail">
                <img src="../../img/jiangxuan_3.jpg" alt="">
                <p>上海直飞三亚5天4晚自由行(春节预售+亲子/蜜月/休闲游首选+豪华酒店任选+接送机)</p>
                <font color="red">&yen; 699</font>
            </div>

        </div>
        <div class="col-md-3">

            <div class="thumbnail">
                <img src="../../img/jiangxuan_3.jpg" alt="">
                <p>上海直飞三亚5天4晚自由行(春节预售+亲子/蜜月/休闲游首选+豪华酒店任选+接送机)</p>
                <font color="red">&yen; 699</font>
            </div>
        </div>
        <div class="col-md-3">

            <div class="thumbnail">
                <img src="../../img/jiangxuan_3.jpg" alt="">
                <p>上海直飞三亚5天4晚自由行(春节预售+亲子/蜜月/休闲游首选+豪华酒店任选+接送机)</p>
                <font color="red">&yen; 699</font>
            </div>
        </div>


    </div>
    <div class="row jx">
        <img src="../../img/icon_6.jpg">
        <span>国内游</span>
    </div>
    <div class="row paddtop">
        <div class="col-md-4">
            <img src="../../img/guonei_1.jpg">
        </div>
        <div class="col-md-8">
            <div class="row">
                <div class="col-md-4">
                    <div class="thumbnail">
                        <img src="../../img/jiangxuan_3.jpg" alt="">
                        <p>上海直飞三亚5天4晚自由行(春节预售+亲子/蜜月/休闲游首选+豪华酒店任选+接送机)</p>
                        <font color="red">&yen; 699</font>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="thumbnail">
                        <img src="../../img/jiangxuan_3.jpg" alt="">
                        <p>上海直飞三亚5天4晚自由行(春节预售+亲子/蜜月/休闲游首选+豪华酒店任选+接送机)</p>
                        <font color="red">&yen; 699</font>
                    </div>

                </div>
                <div class="col-md-4">

                    <div class="thumbnail">
                        <img src="../../img/jiangxuan_3.jpg" alt="">
                        <p>上海直飞三亚5天4晚自由行(春节预售+亲子/蜜月/休闲游首选+豪华酒店任选+接送机)</p>
                        <font color="red">&yen; 699</font>
                    </div>
                </div>

            </div>
            <div class="row">
                <div class="col-md-4">
                    <div class="thumbnail">
                        <img src="../../img/jiangxuan_3.jpg" alt="">
                        <p>上海直飞三亚5天4晚自由行(春节预售+亲子/蜜月/休闲游首选+豪华酒店任选+接送机)</p>
                        <font color="red">&yen; 699</font>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="thumbnail">
                        <img src="../../img/jiangxuan_3.jpg" alt="">
                        <p>上海直飞三亚5天4晚自由行(春节预售+亲子/蜜月/休闲游首选+豪华酒店任选+接送机)</p>
                        <font color="red">&yen; 699</font>
                    </div>

                </div>
                <div class="col-md-4">

                    <div class="thumbnail">
                        <img src="../../img/jiangxuan_3.jpg" alt="">
                        <p>上海直飞三亚5天4晚自由行(春节预售+亲子/蜜月/休闲游首选+豪华酒店任选+接送机)</p>
                        <font color="red">&yen; 699</font>
                    </div>
                </div>


            </div>

        </div>

    </div>
</div>
<!-- 3.页脚部分-->
<footer class="container-fluid">
    <div class="row">
        <img src="../../img/footer_service.png" class="img-responsive">
    </div>
    <div class="row company">
        江苏传智播客教育科技股份有限公司 版权所有Copyright 2006-2018, All Rights Reserved 苏ICP备16007882
    </div>

</footer>


<br/><br/>
<!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
<script src="../../js/jquery-3.2.1.min.js"></script>
<!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
<script src="../../bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
</body>
</html>