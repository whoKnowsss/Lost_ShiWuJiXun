<%--
  Created by IntelliJ IDEA.
  User: xiuFeng
  Date: 2017/1/31
  Time: 20:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="refer.jsp" %>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1.0">
    <title>失物即寻平台-用户登录</title>

    <link rel="icon" href="${ctx}/img/favicon.ico" type="image/x-icon"/>
    <link rel="shortcut icon" href="${ctx}/img/favicon.ico" type="image/x-icon"/>
    <link rel="Bookmark" href="${ctx}/img/favicon.ico">
    <link rel="stylesheet" href="${ctx}/css/reset.css">
    <%--<link rel="stylesheet" href="${ctx}/css/bootstrap.min.css">--%>
    <%--<link rel="stylesheet" href="${ctx}/style/foundation-6.3.0-complete/css/foundation.min.css">--%>
    <link rel="stylesheet" href="${ctx}/style/materialize/css/materialize.min.css">
    <link href="${ctx}/style/materialize/css/materialdesignicons.min.css" media="all" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="${ctx}/css/shiwujixu.css">
</head>
<body>


<%--PC端导航--%>
<nav class="">
    <div class="nav-wrapper">
        <img src="${ctx}/img/logo.png" alt="logo" style="height: 100%">
        <span style="font-size: 1.875em;margin: 1rem;">用户登录</span>
    </div>
</nav>


<!-- Modal Trigger -->
<%--<a class="waves-effect waves-light btn hide" href="#myModal">Modal</a>--%>

<!-- Modal Structure -->
<%--<div id="myModal" class="modal">--%>
    <%--<div class="modal-content">--%>
        <%--<h4>提示框</h4>--%>
        <%--<p>登录成功！</p>--%>
    <%--</div>--%>
    <%--<div class="modal-footer">--%>
        <%--<a href="#!" class="modal-action modal-close waves-effect waves-green btn-flat">确定</a>--%>
    <%--</div>--%>
<%--</div>--%>

<div class="card-panel">
    <div class="float-center">

        <form onsubmit="return postUsder();">
            <%--<div class="col s2 m5">--%>
            <%--&nbsp;--%>
            <%--</div>--%>
            <div class="row">
                <div class="col s12 m12">
                    <div class="center">
                        <ul>
                            <li>
                                <a href="${ctx}/img/logo.png">
                                    <img class="hoverable" src="${ctx}/img/logo.png"
                                         alt="用户头像" style="height:6rem;border-radius: 50%">
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col s1 m3 l4">
                    <div class="right hide-on-small-only">
                        <label>
                            <img src="${ctx}/img/user.png" alt="用户:">
                        </label>
                    </div>
                </div>
                <div class="col s10 m7 l4">
                    <input type="text" id="username" placeholder="用户名/手机号/邮箱" required>
                </div>
                <div class="col s1 m2 l4">
                    &nbsp;
                </div>
            </div>


            <div class="row">
                <div class="col s1 m3 l4">
                    <div class="right hide-on-small-only">
                        <img src="${ctx}/img/key.png" alt="密码:">
                    </div>
                </div>
                <div class="col s10 m7 l4">
                    <input type="password" id="pwd" placeholder="请输入密码" required>
                </div>
                <div class="col s1 m2 l4">
                    &nbsp;
                </div>
            </div>

            <div class="row">
                <div class="col m3 l4">
                    <div class="right hide-on-small-only">
                        <label>
                            <img src="${ctx}/img/check.png" alt="验证码：">
                        </label>
                    </div>
                </div>
                <div class="col s5 m4 l2">
                    <input type="text" name="validateCode" placeholder="请输入验证码" class="right" required/>
                </div>
                <div class="col s4 m2 l2">
                    <img id="validateCodeImg" src="${ctx}/validateCode" class="left"/>
                    <a onclick="javascript:reloadValidateCode();" class="right">换一张</a>
                </div>
                <div class="col s3 m3 l4">
                    &nbsp;
                </div>
            </div>

            <div class="row">
                <div class="col s1 m3 l4">
                    &nbsp;
                </div>
                <div class="col s5 m4 l2">
                    <div class="right">
                        <input id="rememberpwd" type="checkbox"><label for="rememberpwd">记住密码</label>
                    </div>
                </div>
                <div class="col s5 m3 l2">
                    <div class="left">
                        <label>
                            <a href="#">忘记密码?</a>
                        </label>
                    </div>
                </div>
                <div class="col s1 m2 l4">
                    &nbsp;
                </div>
            </div>

            <br>

            <div class="row">
                <div class="col s1 m3 l4">
                    &nbsp;
                </div>
                <div class="col s5 m3 l2">
                    <div class="center">
                        <input id="login" type="submit" class="waves-effect waves-light btn" value="登录">
                    </div>
                </div>
                <div class="col s5 m4 l2">
                    <div class="center">
                        <a href="${ctx}/userRegister" id="register" class="waves-effect waves-light btn">注册</a>
                    </div>
                </div>
                <div class="col s1 m2 l4">
                    &nbsp;
                </div>
            </div>

            <div class="row"></div>
            <div class="row"></div>

            <div class="row">
                <div class="col s2 m5">

                </div>
                <div class="col s8 m2">
                    <div class="center">
                        <label>
                            <!-- Modal Trigger -->
                            <a class="" href="#modal1">第三方登录</a>
                        </label>
                    </div>
                </div>
                <div class="col s2 m5">

                </div>
            </div>

            <div class="row  hide-on-small-only">
                <div class="col s2 m5">
                    <hr>
                </div>
                <div class="col s8 m2">

                </div>
                <div class="col s2 m5">
                    <hr>
                </div>
            </div>

            <div class="row">
                <div class="col s2 m4">

                </div>
                <div class="col s8 m4">
                    <div class="center">
                        <label>
                            <a href="${ctx}/userIndex">以游客身份进入</a>
                        </label>
                    </div>
                </div>
                <div class="col s2 m4">

                </div>
            </div>
        </form>
    </div>
</div>

<!-- 第三方登录模态框 -->
<div id="modal1" class="modal bottom-sheet">
    <div class="modal-content">
        <div class="collection">
            <div class="row collection-item">
                <div class="col s3 m4 l5"></div>
                <div class="col s7 m4 l2">
                    <img src="${ctx}/img/weixin.png" class="secondary-content left">
                    <a href="#!" class="collection-item right">微信</a>
                </div>
                <div class="col s2 m4 l5"></div>
            </div>
            <div class="row collection-item">
                <div class="col s3 m4 l5"></div>
                <div class="col s7 m4 l2">
                    <img src="${ctx}/img/qq.png" class="secondary-content left" style="display: inline-block;">
                    <a href="#!" class="collection-item right">QQ</a>
                </div>
                <div class="col s2 m4 l5"></div>
            </div>
            <div class="row collection-item">
                <div class="col s3 m4 l5"></div>
                <div class="col s7 m4 l2">
                    <img src="${ctx}/img/sina.png" class="secondary-content left" style="display: inline-block;">
                    <a href="#!" class="collection-item right">新浪微博</a>
                </div>
                <div class="col s2 m4 l5"></div>
            </div>
        </div>
    </div>
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
<script src="${ctx}/style/materialize/js/materialize.min.js"></script>
<script>
    $(document).ready(function () {
//        $("label").css({"color:"})
        <c:if test="${! empty sessionScope.user}">

        alert('当前已有账号登录，请先退出登录再换新账号！')
            location.href='${ctx}/userIndex'
        </c:if>
        $("input[type='submit']").css({"font-size":"1rem"});
        $("#register").css({"font-size":"1rem"});
//        $('.modal').modal();
    })
    function reloadValidateCode() {
        $("#validateCodeImg").attr("src", "${ctx}/validateCode?data=" + new Date() + Math.floor(Math.random() * 24));
    }
    function postUsder() {


        $.ajax({

            type: "post",
            url: '${ctx}/doLogin',
            data: {
                username: $("#username").val(),
                password: $("#pwd").val(),
                yzm: $("input[name=validateCode]").val()
            },
            success: function (date) {

                if (date.msg=='1') {
//                        $("#myModal").children("p").innerText = "登录成功！";
//                    $('#myModal').modal('open');
                        alert("登录成功！")

                    location.href = date.url
                }
                else
                    alert(date.msg)
            }
        })
        return false
    }
</script>

</body>
</html>
