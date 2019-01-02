<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="refer.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>失物即寻平台-二维码下载</title>

    <%--<meta name="description" content="demo for jQuery.qrcode (https://larsjung.de/jquery-qrcode/)">--%>
    <%--<meta name="viewport" content="width=device-width, initial-scale=1">--%>
    <%--<link rel="shortcut icon" type="image/png" href="${ctx}/style/jquery-qrcode-0.14.0/demo/dummy.png">--%>
    <%--<link rel="apple-touch-icon-precomposed" type="image/png" href="${ctx}/style/jquery-qrcode-0.14.0/demo/dummy.png">--%>
    <link rel="icon" href="${ctx}/img/favicon.ico" type="image/x-icon"/>
    <link rel="shortcut icon" href="${ctx}/img/favicon.ico" type="image/x-icon"/>
    <link rel="Bookmark" href="${ctx}/img/favicon.ico">
    <link href="${ctx}/style/jquery-qrcode-0.14.0/demo/styles.css" rel="stylesheet">
    <script src="${ctx}/style/jquery-qrcode-0.14.0/demo/jquery.min.js"></script>
    <script src="${ctx}/style/jquery-qrcode-0.14.0/jquery-qrcode-0.14.0.js"></script>
    <script src="${ctx}/style/jquery-qrcode-0.14.0/demo/scripts.js"></script>

    <link rel="stylesheet" href="${ctx}/css/reset.css">
    <link rel="stylesheet" href="${ctx}/style/materialize/css/materialize.min.css">
    <link href="${ctx}/style/materialize/css/materialdesignicons.min.css" media="all" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="${ctx}/css/shiwujixu.css">
</head>
<body>
<%--PC端导航--%>
<nav class="hide-on-med-and-down">
    <div class="nav-wrapper">
        <a href="#"><img src="${ctx}/img/logo.png" style="height: 100%;"></a>
        <ul class="left hide-on-med-and-down">
            <li><a href="${ctx}/userIndex">官网主页</a></li>
            <li><a href="${ctx}/moreInfo">信息通知</a></li>
            <li><a href="${ctx}/m/infoPublish">信息发布</a></li>
            <li><a href="${ctx}/market">商城</a></li>
            <%--<li><a href="#">社区</a></li>--%>
            <li><a href="#">最新活动<span class="new badge">1</span></a></li>
            <li><a href="#">关于我们</a></li>
        </ul>
        <ul id="nav-mobile" class="right">
            <li><img id="toy" src="${user.imgPath ne null ? user.imgPath:'#'}"
                     style="width:4rem;height: 4rem;border-radius: 50%" class="right"><a
                    href="${ctx}/m/mySpace" class="right">我的空间</a></li>
            <%--<li><a href="#">新消息<span class="new badge">4</span></a></li>--%>
            <%--<li><a href="${ctx}/m/infoToQR">个人信息</a></li>--%>
            <%--<li><a href="${ctx}/m/userQR">我的二维码</a></li>--%>
            <li onclick="location.href='${ctx}/logout'"><a>退出登录</a></li>
        </ul>
    </div>
</nav>

<%--移动端导航--%>
<nav class="hide-on-large-only">
    <div class="nav-wrapper">
        <a href="#" data-activates="slide-out" class="button-collapse"><span class="mdi mdi-menu"></span></a>
        <span class="brand-logo right">失物即寻</span>
        <ul id="slide-out" class="side-nav ">
            <li>
                <div class="userView">
                    <div class="background">
                        <img src="${ctx}/img/bk4.jpg" style="width: 100%;height:100%">
                    </div>
                    <img class="circle" src="${user.imgPath ne null ? user.imgPath:'#'}">
                    <span class="white-text name">${user.name ne null ? user.name:'游客'}</span>
                    <span class="white-text email">${user.signare ne null ? user.signare:'欢迎使用本平台！'}</span>
                </div>
            </li>
            <li><a href="#"><i><span class="mdi mdi-comment-processing-outline"></span></i>新消息<span
                    class="new badge">4</span></a></li>
            <li><a href="${ctx}/m/infoToQR"><i><span class="mdi mdi-account mdi-20px"></span></i>个人信息</a></li>
            <li><a href="${ctx}/m/mySpace"><i><span class="mdi mdi-checkbox-multiple-blank-outline"></span></i>我的空间</a>
            </li>
            <li><a href="${ctx}/m/userQR"><i><span class="mdi mdi-qrcode"></span></i>我的二维码</a></li>
            <li><a href="${ctx}/m/infoPublish"><i><span class="mdi mdi-new-box"></span></i>信息发布</a></li>
            <li>
                <div class="divider"></div>
            </li>
            <li><a href="${ctx}/userIndex"><i><span class="mdi mdi-routes"></span></i>官网主页</a></li>
            <li><a href="${ctx}/market"><i><span class="mdi mdi-square-inc-cash"></span></i>商城</a></li>
            <%--<li><a href="#"><i><span class="mdi mdi-account-multiple"></span></i>社区</a></li>--%>
            <li><a href="#"><i><span class="mdi mdi-soccer"></span></i>最新活动<span class="new badge">1</span></a></li>
            <li><a href="#"><i><span class="mdi mdi-account-card-details"></span></i>关于我们</a></li>
            <li>
                <c:if test="${user eq null}">
                    <ul class="tabs">
                        <li class="tab " onclick="location.href='${ctx}/userLogin'"><a>登录</a></li>
                        <li class="tab "><a>|</a></li>
                        <li class="tab " onclick="location.href='${ctx}/userRegister'"><a>注册</a></li>
                    </ul>
                </c:if>
                <c:if test="${user ne null}">
                    <ul class="tabs">
                        <li class="tab" onclick="location.href='${ctx}/logout'"><a>退出登录</a></li>
                    </ul>
                </c:if>
            </li>
        </ul>
    </div>
</nav>

<div class="row" style="margin-top: 6rem;">
    <div class="col l3 hide-on-med-and-down">
        <div class="control left" style="margin: 10rem auto auto 5rem">
            <%--<hr>--%>
            <%--<br>--%>
            <%--<label for="render">渲染模式</label>--%>
            <%--<select id="render" class="browser-default">--%>
            <%--<option value="canvas">canvas</option>--%>
            <%--<option value="image" selected="selected">image</option>--%>
            <%--<option value="div">div</option>--%>
            <%--</select>--%>
            <input type="hidden" id="render" value="image">
            <%--<br>--%>
            <%--<hr>--%>
            <label for="size">二维码大小:</label>
            <input id="size" type="range" value="400" min="100" max="1000" step="50">
            <br>
            <label for="fill">前景色:</label>
            <input id="fill" type="color" value="#333333">
            <br>
            <label for="background">背景色:</label>
            <input id="background" type="color" value="#ffffff">
            <br>
            <%--<label for="text">CONTENT</label>--%>
            <input type="hidden" value="http://115.159.43.70/userSpace/${user.id}" id="text">
            <%--<textarea id="text">https://larsjung.de/jquery-qrcode/</textarea>--%>
            <%--<hr>--%>
            <label for="minversion">方块等级:</label>
            <input id="minversion" type="range" value="6" min="1" max="10" step="1">
            <br>
            <label for="eclevel">误差校正水平:</label>
            <select id="eclevel" class="browser-default">
                <option value="L">L - Low (7%)</option>
                <option value="M">M - Medium (15%)</option>
                <option value="Q">Q - Quartile (25%)</option>
                <option value="H" selected="selected">H - High (30%)</option>
            </select>
            <br>
            <label for="quiet">外边框:</label>
            <input id="quiet" type="range" value="1" min="0" max="4" step="1"><br>
            <label for="radius">方块圆角:</label>
            <input id="radius" type="range" value="50" min="0" max="50" step="10">
        </div>
    </div>
    <div class="col s12 l6">

        <div class="card">
            <div class="card-content">
                <div class="card-title blue-grey-text">您的二维码：</div>
            </div>
            <div class="card-image">
                <div id="qrcodeCanvas"></div>
                <div id="container"></div>
                <%--<img src="${ctx}/img/QRcode.jpg" alt="二维码生成框" style="margin: 3rem auto;width: 20rem;height: 20rem">--%>
            </div>

            <div class="card-content blue-grey-text">
                此二维码样式您可以在电脑上调节样式，手机、平板暂不支持修改样式。<br>
                您可以自行下载打印自己的二维码附于您的私人物品上，也可以向平台申请制作购买您的专属二维码（专为不同物品设计）。
            </div>
            <div class="card-action">
                <div class="row">
                    <div class="col s5 offset-s1 m4 offset-m2">
                        <a href="${ctx}/market">申请制作</a>
                    </div>
                    <div class="col s5 offset-s1 m4 offset-m2">
                        <a href="#" id="xiazai">自行下载</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="col l3 hide-on-med-and-down">
        <div class="control right" style="margin: 10rem 5rem">

            <label for="mode">内嵌类型</label>
            <select id="mode" class="browser-default">
                <option value="0">0 - 普通</option>
                <option value="1">1 - 带文本，一条</option>
                <option value="2" selected="selected">2 - 带文本</option>
                <option value="3">3 - 带图片，一条</option>
                <option value="4">4 - 带图片</option>
            </select>

            <hr>
            <br>
            <label for="msize">内嵌大小:</label>
            <input id="msize" type="range" value="5" min="0" max="35" step="1"><br>
            <label for="mposx">左右相对距离:</label>
            <input id="mposx" type="range" value="50" min="0" max="100" step="1"><br>
            <label for="mposy">上下相对距离:</label>
            <input id="mposy" type="range" value="50" min="0" max="100" step="1"><br>
            <hr>
            <label for="label">文本内容:</label>
            <input id="label" type="text" value="扫一扫，联系失主"><br>
            <label for="font">文本字体:</label>
            <input id="font" type="text" value="Ubuntu"><br>
            <label for="fontcolor">文本颜色:</label>
            <input id="fontcolor" type="color" value="#ff9818"><br>
            <hr>
            <label for="image">内嵌图片:</label>
            <div class="file-field input-field">
                <div class="btn" style="margin:0 10% 3% 10%">
                    <span>上传内嵌图片</span>
                    <input id="image" type="file"></div>
                </div>
                <div class="file-path-wrapper hide">
                    <input class="file-path validate" type="text">
                </div>
            </div>
    </div>
</div>
<img id="img-buffer" src="${ctx}/img/logo.png">


<%--悬浮导航--%>
<div class="fixed-action-btn" style="bottom: 45px; right: 24px;">
    <a class="btn-floating btn-large red">
        <img src="${ctx}/img/logo.png" alt="logo"
             style="width: 4rem;height: 4rem;border-radius: 50%">
    </a>
    <ul>
        <li><a onclick="href='${ctx}/userIndex'" class="btn-floating yellow tooltipped pulse" data-position="left"
               data-delay="50"
               data-tooltip="官网首页"><span class="mdi mdi-routes"></span> </a></li>
        <li><a onclick="href='${ctx}/market'" class="btn-floating blue btn-medium tooltipped pulse" data-position="left"
               data-delay="50" data-tooltip="商城"><span class="mdi mdi-square-inc-cash"></span></a></li>
        <li><a onclick="href='${ctx}/m/mySpace'" class="btn-floating red btn-medium tooltipped pulse"
               data-position="left"
               data-delay="50" data-tooltip="我的空间"><span class="mdi mdi-format-list-bulleted-type "></span></a></li>
        <li><a onclick="href='${ctx}/m/infoPublish'" class="btn-floating green tooltipped pulse" data-position="left"
               data-delay="50" data-tooltip="信息发布"><span class="mdi mdi-new-box"></span></a></li>
    </ul>
</div>

<%--页脚--%>
<footer class="page-footer">
    <div class="container">
        <div class="row">
            <%--<div class="col s2">--%>
            <%--&nbsp;--%>
            <%--</div>--%>
            <div class="col s12 m6 l6" style="padding-left: 4rem;">
                <h3 class="white-text">失物即寻</h3>
                <p class="grey-text text-lighten-4"><img src="${ctx}/img/wechat.png">扫码关注微信号</p>
            </div>
            <%--<div class="col s2">--%>
            <%--&nbsp;--%>
            <%--</div>--%>
            <div class="col s12 m4 offset-m2 l4 offset-l2" style="padding-left: 4rem;padding-top: 2rem;">
                <%--<h6 class="white-text">失物即寻公众号二维码</h6>--%>
                <img src="${ctx}/img/QRcode.jpg" style="width: 8rem;height: 8rem">
                <%--<span class="mdi mdi-phone"><span class="grey-text text-lighten-4">联系我们</span></span>--%>
            </div>
        </div>
    </div>
    <div class="footer-copyright">
        <div class="container center">
            ©2017 All Right Reserved 电商小分队
        </div>
    </div>
</footer>


<script src="${ctx}/style/materialize/js/materialize.min.js"></script>
<script type="text/javascript" color="0,0,255" opacity='0.7' zIndex="-2" count="99" src="//cdn.bootcss.com/canvas-nest.js/1.0.1/canvas-nest.min.js"></script>
<script>
    $(document).ready(function () {


        $("input[type='button']").css({"font-size":"1rem"});
        $("input[type='file']").css({"font-size":"1rem"});

        if ($("#toy").attr("src") == '#') {
            $("#toy").attr("src", '${ctx}/img/1.png')
        }
        $('.button-collapse').sideNav({
                menuWidth: 280, // Default is 300
                edge: 'left', // Choose the horizontal origin
                closeOnClick: true, // Closes side-nav on <a> clicks, useful for Angular/Meteor
                draggable: true // Choose whether you can drag to open on touch screens
            }
        );
        $("#xiazai").click(function () {
            var s=$("#container").find("img").attr("src")
            download(s);
        })

    });
    //下载图片
    function download(src) {
        var $a = $("<a></a>").attr("href", src).attr("download", "img.png");
        $a[0].click();
    }

</script>


</body>
</html>




<%--&lt;%&ndash;--%>
  <%--Created by IntelliJ IDEA.--%>
  <%--User: Alone--%>
  <%--Date: 2017/2/21--%>
  <%--Time: 23:54--%>
  <%--To change this template use File | Settings | File Templates.--%>
<%--&ndash;%&gt;--%>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%--<%@ include file="refer.jsp" %>--%>
<%--<!doctype html>--%>
<%--<html lang="zh-cn">--%>
<%--<head>--%>
    <%--<meta charset="UTF-8">--%>
    <%--<meta name="viewport"--%>
          <%--content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">--%>
    <%--<meta http-equiv="X-UA-Compatible" content="ie=edge">--%>
    <%--<title>失物即寻平台-二维码下载</title>--%>

    <%--<link rel="stylesheet" href="${ctx}/css/reset.css">--%>
    <%--&lt;%&ndash;<link rel="stylesheet" href="${ctx}/css/bootstrap.min.css">&ndash;%&gt;--%>
    <%--&lt;%&ndash;<link rel="stylesheet" href="${ctx}/style/foundation-6.3.0-complete/css/foundation.min.css">&ndash;%&gt;--%>
    <%--<link rel="stylesheet" href="${ctx}/style/materialize/css/materialize.min.css">--%>
    <%--<link href="${ctx}/style/materialize/css/materialdesignicons.min.css" media="all" rel="stylesheet" type="text/css">--%>
    <%--<link rel="stylesheet" href="${ctx}/css/shiwujixu.css">--%>

<%--</head>--%>
<%--<body>--%>

<%--&lt;%&ndash;PC端导航&ndash;%&gt;--%>
<%--<nav class="hide-on-med-and-down">--%>
    <%--<div class="nav-wrapper">--%>
        <%--<a href="#"><img src="${ctx}/img/logo.png" style="height: 100%;"></a>--%>
        <%--<ul class="left hide-on-med-and-down">--%>
            <%--<li><a href="${ctx}/index">官网主页</a></li>--%>
            <%--<li><a href="${ctx}/m/infoPublish">信息发布</a></li>--%>
            <%--<li><a href="#">积分商城</a></li>--%>
            <%--<li><a href="#">社区</a></li>--%>
            <%--<li><a href="#">最新活动<span class="new badge">1</span></a></li>--%>
            <%--<li><a href="#">关于我们</a></li>--%>
        <%--</ul>--%>
        <%--<ul id="nav-mobile" class="right">--%>
            <%--<li><a href="${ctx}/m/mySpace">我的空间</a></li>--%>
            <%--<li><a href="#">新消息<span class="new badge">4</span></a></li>--%>
            <%--<li><a href="${ctx}/m/infoToQR">个人信息</a></li>--%>
            <%--<li><a href="${ctx}/m/userQR">我的二维码</a></li>--%>
        <%--</ul>--%>
    <%--</div>--%>
<%--</nav>--%>

<%--&lt;%&ndash;移动端导航&ndash;%&gt;--%>
<%--<nav class="hide-on-large-only">--%>
    <%--<div class="nav-wrapper black">--%>
        <%--<a href="#" data-activates="slide-out" class="button-collapse"><span class="mdi mdi-menu"></span></a>--%>
        <%--<ul id="slide-out" class="side-nav ">--%>
            <%--<li>--%>
                <%--<div class="userView">--%>
                    <%--<div class="background">--%>
                        <%--<img src="${ctx}/img/bk4.jpg" style="width: 100%;height:100%">--%>
                    <%--</div>--%>
                    <%--<img class="circle" src="${user.imgPath ne null ? user.imgPath:'#'}">--%>
                    <%--<span class="white-text name">${user.name ne null ? user.name:'游客'}</span>--%>
                    <%--<span class="white-text email">${user.signare ne null ? user.signare:'欢迎使用本平台！'}</span>--%>
                <%--</div>--%>
            <%--</li>--%>
            <%--<li><a href="#"><i><span class="mdi mdi-comment-processing-outline"></span></i>新消息<span--%>
                    <%--class="new badge">4</span></a></li>--%>
            <%--<li><a href="${ctx}/m/infoToQR"><i><span class="mdi mdi-account mdi-20px"></span></i>个人信息</a></li>--%>
            <%--<li><a href="${ctx}/m/mySpace"><i><span class="mdi mdi-checkbox-multiple-blank-outline"></span></i>我的空间</a>--%>
            <%--</li>--%>
            <%--<li><a href="${ctx}/m/userQR"><i><span class="mdi mdi-qrcode"></span></i>我的二维码</a></li>--%>
            <%--<li><a href="${ctx}/m/infoPublish"><i><span class="mdi mdi-new-box"></span></i>信息发布</a></li>--%>
            <%--<li>--%>
                <%--<div class="divider"></div>--%>
            <%--</li>--%>
            <%--<li><a href="#"><i><span class="mdi mdi-routes"></span></i>官网主页</a></li>--%>
            <%--<li><a href="#"><i><span class="mdi mdi-square-inc-cash"></span></i>积分商城</a></li>--%>
            <%--<li><a href="#"><i><span class="mdi mdi-account-multiple"></span></i>社区</a></li>--%>
            <%--<li><a href="#"><i><span class="mdi mdi-soccer"></span></i>最新活动<span class="new badge">1</span></a></li>--%>
            <%--<li><a href="#"><i><span class="mdi mdi-account-card-details"></span></i>关于我们</a></li>--%>
            <%--<li>--%>
                <%--<c:if test="${user eq null}">--%>
                    <%--<ul class="tabs">--%>
                        <%--<li class="tab " onclick="location.href='${ctx}/userLogin'"><a>登录</a></li>--%>
                        <%--<li class="tab "><a>|</a></li>--%>
                        <%--<li class="tab " onclick="location.href='${ctx}/userRegister'"><a>注册</a></li>--%>
                    <%--</ul>--%>
                <%--</c:if>--%>
                <%--<c:if test="${user ne null}">--%>
                    <%--<ul class="tabs">--%>
                        <%--<li class="tab" onclick="location.href='${ctx}/logout'"><a>退出登录</a></li>--%>
                    <%--</ul>--%>
                <%--</c:if>--%>
            <%--</li>--%>
        <%--</ul>--%>
    <%--</div>--%>
<%--</nav>--%>

<%--<div class="container">--%>

    <%--<div class="row">--%>
        <%--<div class="col m2">--%>
            <%--&nbsp;--%>
        <%--</div>--%>
        <%--<div class="col s12 m8">--%>
            <%--<div class="card">--%>
                <%--<div class="card-title blue-grey-text">您的二维码：</div>--%>
                <%--<div class="card-image">--%>
                    <%--<div id="qrcodeCanvas"></div>--%>
                    <%--&lt;%&ndash;<img src="${ctx}/img/QRcode.jpg" alt="二维码生成框" style="margin: 3rem auto;width: 20rem;height: 20rem">&ndash;%&gt;--%>
                <%--</div>--%>
                <%--<div class="card-content blue-grey-text">--%>
                    <%--您可以自行下载打印自己的二维码附于您的私人物品上，也可以向平台申请制作购买您的专属二维码（专为不同物品设计）。--%>
                <%--</div>--%>
                <%--<div class="card-action">--%>
                    <%--<div class="row">--%>
                        <%--<div class="col s5 offset-s1 m4 offset-m2">--%>
                            <%--<a href="#">申请制作</a>--%>
                        <%--</div>--%>
                        <%--<div class="col s5 offset-s1 m4 offset-m2">--%>
                            <%--<a href="#">自行下载</a>--%>
                        <%--</div>--%>
                    <%--</div>--%>
                <%--</div>--%>

            <%--</div>--%>
        <%--</div>--%>
        <%--<div class="col m2">--%>
            <%--&nbsp;--%>
        <%--</div>--%>
    <%--</div>--%>
<%--</div>--%>

<%--&lt;%&ndash;悬浮导航&ndash;%&gt;--%>
<%--<div class="fixed-action-btn" style="bottom: 45px; right: 24px;">--%>
    <%--<a class="btn-floating btn-large red">--%>
        <%--<img src="${ctx}/img/logo.png" alt="logo"--%>
             <%--style="width: 4rem;height: 4rem;border-radius: 50%">--%>
    <%--</a>--%>
    <%--<ul>--%>
        <%--<li><a onclick="href='${ctx}/userIndex'" class="btn-floating yellow tooltipped pulse" data-position="left"--%>
               <%--data-delay="50"--%>
               <%--data-tooltip="官网首页"><span class="mdi mdi-routes"></span> </a></li>--%>
        <%--<li><a onclick="href='${ctx}/shangcheng'" class="btn-floating blue btn-medium tooltipped pulse"--%>
               <%--data-position="left"--%>
               <%--data-delay="50" data-tooltip="积分商城"><span class="mdi mdi-square-inc-cash"></span></a></li>--%>
        <%--<li><a onclick="href='${ctx}/m/mySpace'" class="btn-floating red btn-medium tooltipped pulse"--%>
               <%--data-position="left"--%>
               <%--data-delay="50" data-tooltip="我的空间"><span class="mdi mdi-format-list-bulleted-type "></span></a></li>--%>
        <%--<li><a onclick="href='${ctx}/m/infoPublish'" class="btn-floating green tooltipped pulse" data-position="left"--%>
               <%--data-delay="50" data-tooltip="信息发布"><span class="mdi mdi-new-box"></span></a></li>--%>
    <%--</ul>--%>
<%--</div>--%>

<%--&lt;%&ndash;页脚&ndash;%&gt;--%>
<%--<footer class="page-footer">--%>
    <%--<div class="container">--%>
        <%--<div class="row">--%>
            <%--&lt;%&ndash;<div class="col s2">&ndash;%&gt;--%>
            <%--&lt;%&ndash;&nbsp;&ndash;%&gt;--%>
            <%--&lt;%&ndash;</div>&ndash;%&gt;--%>
            <%--<div class="col s12 m6 l6" style="padding-left: 4rem;">--%>
                <%--<h3 class="white-text">失物即寻</h3>--%>
                <%--<p class="grey-text text-lighten-4"><img src="${ctx}/img/wechat.png">扫码关注微信号</p>--%>
            <%--</div>--%>
            <%--&lt;%&ndash;<div class="col s2">&ndash;%&gt;--%>
            <%--&lt;%&ndash;&nbsp;&ndash;%&gt;--%>
            <%--&lt;%&ndash;</div>&ndash;%&gt;--%>
            <%--<div class="col s12 m4 offset-m2 l4 offset-l2" style="padding-left: 4rem;padding-top: 2rem;">--%>
                <%--&lt;%&ndash;<h6 class="white-text">失物即寻公众号二维码</h6>&ndash;%&gt;--%>
                <%--<img src="${ctx}/img/QRcode.jpg" style="width: 8rem;height: 8rem">--%>
                <%--&lt;%&ndash;<span class="mdi mdi-phone"><span class="grey-text text-lighten-4">联系我们</span></span>&ndash;%&gt;--%>
            <%--</div>--%>
        <%--</div>--%>
    <%--</div>--%>
    <%--<div class="footer-copyright">--%>
        <%--<div class="container center">--%>
            <%--©2017 All Right Reserved 电商小分队--%>
        <%--</div>--%>
    <%--</div>--%>
<%--</footer>--%>

<%--<script src="${ctx}/js/jquery-1.8.3.min.js"></script>--%>
<%--<script src="${ctx}/style/materialize/js/materialize.min.js"></script>--%>
<%--<script src="${ctx}/js/jquery.qrcode.js"></script>--%>
<%--<script src="${ctx}/js/utf.js"></script>--%>
<%--<script>--%>
    <%--$(document).ready(function () {--%>
        <%--$('.button-collapse').sideNav({--%>
                <%--menuWidth: 280, // Default is 300--%>
                <%--edge: 'left', // Choose the horizontal origin--%>
                <%--closeOnClick: true, // Closes side-nav on <a> clicks, useful for Angular/Meteor--%>
                <%--draggable: true // Choose whether you can drag to open on touch screens--%>
            <%--}--%>
        <%--);--%>
        <%--$("#qrcodeCanvas").qrcode({--%>
            <%--render: "canvas",    //设置渲染方式，有table和canvas，使用canvas方式渲染性能相对来说比较好--%>
            <%--text: "${ctx}/userSpace/${user.id}",    //扫描二维码后显示的内容,可以直接填一个网址，扫描二维码后自动跳向该链接--%>
            <%--width: "200",               //二维码的宽度--%>
            <%--height: "200",              //二维码的高度--%>
            <%--background: "#ffffff",       //二维码的后景色--%>
            <%--foreground: "#000000",        //二维码的前景色--%>
            <%--src: '${user.imgPath}'             //二维码中间的图片--%>
        <%--});--%>
    <%--});--%>


<%--</script>--%>

<%--</body>--%>
<%--</html>--%>
