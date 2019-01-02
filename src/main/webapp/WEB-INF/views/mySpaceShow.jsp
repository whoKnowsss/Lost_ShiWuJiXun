<%--
  Created by IntelliJ IDEA.
  User: Alone
  Date: 2017/3/30
  Time: 22:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="refer.jsp" %>
<!doctype html>
<html lang="zh-cn">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>失物即寻平台-TA的空间</title>

    <link rel="icon" href="${ctx}/img/favicon.ico" type="image/x-icon"/>
    <link rel="shortcut icon" href="${ctx}/img/favicon.ico" type="image/x-icon"/>
    <link rel="Bookmark" href="${ctx}/img/favicon.ico">
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
            <li><a href="${ctx}/latest">最新活动<span class="new badge">1</span></a></li>
            <li><a href="${ctx}/aboutUs">关于我们</a></li>
        </ul>
        <ul id="nav-mobile" class="right">
            <li>
                <img id="toy" src="${user.imgPath ne null ? user.imgPath:'#'}"
                     style="width:4rem;height: 4rem;border-radius: 50%" class="right">
                <a href="${ctx}/userSpace/${host.id}" class="right">TA的空间</a>
            </li>
            <%--<li><a href="#">新消息<span class="new badge">4</span></a></li>--%>
            <%--<li><a href="${ctx}/m/infoToQR">个人信息</a></li>--%>
            <%--<li><a href="${ctx}/m/userQR">我的二维码</a></li>--%>

            <c:if test="${user eq null}">
                <li onclick="location.href='${ctx}/userLogin'"><a>登录</a></li>
                <li><a>|</a></li>
                <li onclick="location.href='${ctx}/userRegister'"><a>注册</a></li>
            </c:if>
            <c:if test="${user ne null}">
            <li onclick="location.href='${ctx}/logout'"><a>退出登录</a></li>
        </ul>
        </c:if>

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
            <%--<li><a href="#"><i><span class="mdi mdi-comment-processing-outline"></span></i>新消息<span--%>
            <%--class="new badge">4</span></a></li>--%>
            <%--<li><a href="${ctx}/m/infoToQR"><i><span class="mdi mdi-account mdi-20px"></span></i>个人信息</a></li>--%>
            <li><a href="${ctx}/userSpace/${host.id}"><i><span class="mdi mdi-checkbox-multiple-blank-outline"></span></i>TA的空间</a>
            </li>
            <%--<li><a href="${ctx}/m/userQR"><i><span class="mdi mdi-qrcode"></span></i>我的二维码</a></li>--%>
            <li><a href="${ctx}/m/infoPublish"><i><span class="mdi mdi-new-box"></span></i>信息发布</a></li>
            <li>
                <div class="divider"></div>
            </li>
            <li><a href="${ctx}/userIndex"><i><span class="mdi mdi-routes"></span></i>官网主页</a></li>
            <li><a href="${ctx}/market"><i><span class="mdi mdi-square-inc-cash"></span></i>商城</a></li>
            <%--<li><a href="#"><i><span class="mdi mdi-account-multiple"></span></i>社区</a></li>--%>
            <li><a href="${ctx}/latest"><i><span class="mdi mdi-soccer"></span></i>最新活动<span class="new badge">1</span></a>
            </li>
            <li><a href="${ctx}/aboutUs"><i><span class="mdi mdi-account-card-details"></span></i>关于我们</a></li>
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

<%--主要内容--%>
<div style='background-image: url("${ctx}/img/userbg.jpg");width: 100%;height: 100%;'>
    <div class="container" style="background: #E5E5E5;">
        <div class="card">
            <div class="card-content">
                <div class="card-title">

                </div>
            </div>
            <div class="card-content grey lighten-4">
                <div id="leaveNote">
                    <div class="row">
                        <div class="col m2"></div>
                        <div class="col s12 m8">
                            <form id="contact" method="post" action="${ctx}/userSpace/postThing">
                            <div class="card">
                                <div class="card-content">
                                </div>
                                <div class="row">
                                    <div class="col m2"></div>
                                    <div class="col s12 m8">
                                        <div class="card-content grey lighten-4">
                                                <div class="input-field">
                                                    <label for="contact-form-message">留言内容</label>
                                                    <textarea id="contact-form-message" class="materialize-textarea"
                                                           name="content"   data-length="200" required></textarea>
                                                </div>
                                                    <div class="input-field">
                                                    <label for="contact-form-subject">您的联系方式</label>
                                                    <input id="contact-form-subject" type="text"
                                                           name="contract" required>   </div>
                                                <input type="hidden" name="toUser" value="${host.id}">

                                        </div>
                                    </div>
                                    <div class="col m2"></div>
                                </div>
                                <div class="card-action" style="padding-bottom: 3.5rem">
                                    <input class="waves-effect waves-light btn right" type="submit"
                                            id="contact-form-submit" name="submit"
                                            data-style="expand-left" value="我要留言" />
                                    <%--</input>--%>
                                </div>
                            </div>
                            </form>
                            <%--<div class="card">--%>
                            <%--<div class="card-panel">--%>
                            <%--</div>--%>
                            <%--<div class="card-action" style="padding-bottom: 4rem">--%>
                            <%--<input type="text" placeholder="输入留言内容">--%>

                            <%--<p id="demo">点击按钮，向对方发送您的位置：</p>--%>
                            <%--<br>--%>
                            <%--<div>--%>
                            <%--<input type="button" class="waves-effect waves-light btn right" value="回复">--%>
                            <%--<input type="button" onclick="getLocation()"--%>
                            <%--class="waves-effect waves-light btn left" value="发送">--%>
                            <%--</div>--%>

                            <%--<div id="mapholder"></div>--%>
                            <%--</div>--%>
                            <%--</div>--%>
                        </div>
                        <div class="col m2"></div>
                    </div>
                </div>


                <%--<div id="otherWay">--%>
                    <%--&lt;%&ndash;<div class="card">&ndash;%&gt;--%>
                    <%--<div class="row">--%>
                        <%--<div class="col m2"></div>--%>
                        <%--<div class="col s12 m8">--%>
                            <%--<div class="card-panel">--%>
                                <%--<c:if test="${empty host.qq and empty host.wx and empty host.phone and empty host.other}">--%>
                                    <%--<input value="TA暂时没有公开个人信息！" readonly>--%>
                                    <%--&lt;%&ndash;<p id="no" class="teal-text">${host.qq}</p>&ndash;%&gt;--%>
                                <%--</c:if>--%>
                                <%--<c:if test="${not empty host.qq}">--%>
                                    <%--<label for="qq">TA的QQ</label>--%>
                                    <%--<input value="${host.qq}" id="qq" readonly>--%>

                                    <%--<br>--%>
                                    <%--<br>--%>
                                    <%--&lt;%&ndash;<p id="qq" class="teal-text"></p>&ndash;%&gt;--%>
                                <%--</c:if>--%>
                                <%--<c:if test="${not empty host.wx}">--%>
                                    <%--<label for="wx">TA的微信</label>--%>
                                    <%--<input id="wx" value="${host.wx}" readonly>--%>
                                    <%--<br>--%>
                                    <%--<br>--%>
                                <%--</c:if>--%>
                                <%--<c:if test="${not empty host.phone}">--%>
                                    <%--<label for="phone">TA的电话号码</label>--%>
                                    <%--<input id="phone" value="${host.phone}" readonly>--%>
                                    <%--<br>--%>
                                    <%--<br>--%>
                                <%--</c:if>--%>
                                <%--<c:if test="${not empty host.other}">--%>
                                    <%--<label for="otherContracts">其他联系方式</label>--%>
                                    <%--<input id="otherContracts" value="${host.other}" readonly>--%>
                                    <%--<br>--%>
                                    <%--<br>--%>
                                <%--</c:if>--%>
                            <%--</div>--%>
                        <%--</div>--%>
                        <%--<div class="col m2"></div>--%>
                    <%--</div>--%>
                    <%--&lt;%&ndash;</div>&ndash;%&gt;--%>
                <%--</div>--%>
            </div>
        </div>
    </div>
</div>

</div>


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

<script src="${ctx}/js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="${ctx}/js/utf.js"></script>
<script type="text/javascript" src="${ctx}/js/jquery.qrcode.js"></script>
<script src="${ctx}/style/materialize/js/materialize.min.js"></script>
<script type="text/javascript" color="0,0,255" opacity='0.7' zIndex="-2" count="99" src="//cdn.bootcss.com/canvas-nest.js/1.0.1/canvas-nest.min.js"></script>
<script>
    $(document).ready(function () {
        $(document).ready(function () {

            $("input[type='button']").css({"font-size":"1rem"});
            $("input[type='file']").css({"font-size":"1rem"});

            <c:if test="${result ne null}">
               alert('${result eq 1 ? '留言成功！':'留言失败！'}')
            </c:if>
            if ($("#toy").attr("src") == '#') {
                $("#toy").attr("src", '${ctx}/img/1.png')
            }
            $("#qrcodeCanvas").qrcode({
                render: "canvas",    //设置渲染方式，有table和canvas，使用canvas方式渲染性能相对来说比较好
                text: "http://115.159.43.70/userSpace/${host.id}",    //扫描二维码后显示的内容,可以直接填一个网址，扫描二维码后自动跳向该链接
                width: "200",               //二维码的宽度
                height: "200",              //二维码的高度
                background: "#ffffff",       //二维码的后景色
                foreground: "#000000",        //二维码的前景色
                src: '${ctx}/img/logo.png'             //二维码中间的图片
            });


            $('.button-collapse').sideNav({
                    menuWidth: 280, // Default is 300
                    edge: 'left', // Choose the horizontal origin
                    closeOnClick: true, // Closes side-nav on <a> clicks, useful for Angular/Meteor
                    draggable: true // Choose whether you can drag to open on touch screens
                }
            );
            $("#xiazai").click(function () {
                var s = $("#container").find("img").attr("src")
                download(s);
            })

        });

        //下载图片
        function download(src) {
            var $a = $("<a></a>").attr("href", src).attr("download", "img.png");
            $a[0].click();
        };

        $("#changesave").click(function () {
            var phone = $("#phoneNumber").val().trim()
            var wx = $("#weChat").val().trim()
            var qq = $("#qqNumber").val().trim()
            var other = $("#other").val().trim()
            if (phone != '${user.phone}' || wx != '${user.wx}' || qq != '${user.qq}' || other != '${user.other}') {
                $.ajax({
                    type: "post",
                    url: '${ctx}/m/infoSave',
                    data: {
                        phone: phone,
                        wx: wx,
                        qq: qq,
                        other: other
                    },
                    success: function (date) {

                        if (date.result == "1") {
                            alert('修改成功！');
                            location = location
                        }
                        else {
                            alert("修改失败，请与管理人员联系！");
                        }
                    }


                })
            } else {
                alert("没有变化！")
            }
        })

        if ($(".circle").attr("src") == '#') {
            $(".circle").attr("src", '${ctx}/img/1.png')
        }
    })

    function check() {
        $.ajax({
            type: "post",
            url: '${ctx}/feed/addfeedback',
            data: {
//                name: $("#contact-form-name").val().trim(),
//                email: $("#contact-form-email").val().trim(),
                content: $("#contact-form-message").val().trim(),
//                subject: $("#contact-form-subject").val().trim()
            },
            dataType: "json",
            success: function (date) {
                if (date.result == "success") {
                    alert("感谢您的留言！祝您生活愉快！");
                    location.href = "${ctx}/aboutUs";
                }
                else {
                    alert(date.result);
                }
            }

        })
        return false;
    }
</script>

</body>
</html>
