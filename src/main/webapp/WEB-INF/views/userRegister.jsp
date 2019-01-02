<%--
  Created by IntelliJ IDEA.
  User: Alone
  Date: 2017/2/4
  Time: 16:20
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
    <title>失物即寻平台-用户注册</title>

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
<nav class="">
    <div class="nav-wrapper">
        <img src="${ctx}/img/logo.png" alt="logo" style="height: 100%">
        <span style="font-size: 1.875em;margin: 1rem;">用户注册</span>
    </div>
</nav>

<%--<div id="messageBox" class="alert alert-box" style="display:none"></div>--%>
<div class="container">
    <%--<form style="margin: 50px" type="post" action="${ctx}/">--%>
    <div class="row"></div>
    <div class="row"></div>
    <div class="row">
        <div class="col s12 m12">
            <div class="center">
                <a href="${ctx}/img/pic.png" class="th">
                    <img src="${ctx}/img/pic.png" alt="用户头像" id="showImg"
                                                                     style="width: 8rem;height: 8rem;border-radius: 50%">
                </a>
            </div>
        </div>
        <div class="row"></div>
        <div class="row"></div>
        <div class="row">

            <div class="col s4 offset-s7 m2 offset-m7">
                <div class="file-field input-field">
                    <div class="btn">
                        <span >上传文件</span>
                        <input type="file" name="file" id="file" onchange="uploadPic()">
                    </div>
                    <div class="file-path-wrapper hide">
                        <input class="file-path validate" type="text">
                    </div>
                </div>
                <%--<input type="file" name="file" id="file" class="btn" onchange="uploadPic()" value="上传头像"/>--%>
                <%--<input type="hidden" id="imgPic" value="${ctx}/img/pic.png">--%>
            </div>

    </div>
    <form action="${ctx}/userRegister" method="post" id="registerForm">
        <div class="row">
            <div class="col s1 m4">
                <div class="right hide-on-small-only">
                    <label for="username"><img src="${ctx}/img/user.png" alt="用户"></label>
                </div>
            </div>
            <div class="col s10 m4">
                <input type="text" id="username" name="username" placeholder="请输入用户名，不少于两位" >
            </div>
            <div class="col s1 m4">
                &nbsp;
            </div>
        </div>


        <div class="row">
            <div class="col s1 m4">
                <div class="right hide-on-small-only">
                    <label><img src="${ctx}/img/email.png" alt="邮箱"></label>
                </div>
            </div>
            <div class="col s10 m4">
                <input type="email" id="useremail" name="useremail" placeholder="请输入邮箱">
            </div>
            <div class="col s1 m4">
                &nbsp;
            </div>
        </div>

        <div class="row">
            <div class="col s1 m4">
                <div class="right hide-on-small-only">
                    <label for="username"><img src="${ctx}/img/key.png" alt="密码"></label>
                </div>
            </div>
            <div class="col s10 m4">
                <input type="password" id="pwd" name="pwd" placeholder="请输入密码,不少于五位" >
            </div>
            <div class="col s1 m4">
                &nbsp;
            </div>
        </div>

        <div class="row">
            <div class="col s1 m4">
                <div class="right hide-on-small-only">
                    <label><img src="${ctx}/img/key_check.png" alt="密码"></label>
                </div>
            </div>
            <div class="col s10 m4">
                <input type="password" id="pwdcheck" name="pwdcheck" placeholder="请确认密码" >
            </div>
            <div class="col s1 m4">
                &nbsp;
            </div>
        </div>

        <br>

        <div class="row">
            <div class="col m5">
                &nbsp;
            </div>
            <div class="col s12 m2">
                <div class="center flow-text">
                    <input id="register" type="submit" class="waves-effect waves-light btn" value="   注册   ">
                </div>
            </div>
            <div class="col m5">
                &nbsp;
            </div>
        </div>
    </form>


</div>

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


</body>
<script src="${ctx}/js/jquery-1.8.3.min.js"></script>
<script src="${ctx}/style/materialize/js/materialize.min.js"></script>
<script src="${ctx}/js/jquery.validate.min.js"></script>
<script src="${ctx}/js/ajaxfileupload.js"></script>
<script>
    $(document).ready(function () {

        $("input[type='submit']").css({"font-size":"1rem"});
        $("input[type='file']").css({"font-size":"1rem"});

        $('.modal').modal();
        $("#registerForm").validate({
            rules: {
                username: {
                    required: true,
                    minlength: 2
                },
                pwd: {
                    required: true,
                    minlength: 5
                },
                pwdcheck: {
                    required: true,
                    minlength: 5,
                    equalTo: "#pwd"
                },
                useremail: {
                    required: true,
                    email: true
                }

            },
            messages: {
                username: {
                    required: "请输入用户名",
                    minlength: "用户名长度不能小于2"
                },
                pwd: {
                    required: "请输入密码",
                    minlength: "密码长度不能小于5"
                },
                pwdcheck: {
                    required: "请输入确认密码",
                    minlength: "密码长度不能小于5",
                    equalTo: "两次密码输入不一致"
                },
                useremail: "请输入一个正确的邮箱"
            },
            submitHandler: function (form) {
                var r=confirm(" 确认注册吗？")
                if (r==true)
                {
                    $.ajax({
                        url:"${ctx}/doRegister",
                        type: "post",
//                            contentType: "application/json; charset=utf-8",
                        data: {
                            name: $("#username").val(),
                            password: $("#pwd").val(),
                            imgPath: $("#imgPic").val(),
                            email:$("#useremail").val(),
                        },
                        dataType: "json",
                        success: function (date) {
                            if (date.result == "1") {
                                location.href = "${ctx}/user/wait";
                            }
                            else {
                                alert(date.error);
                            }
                        },
                        error:function (date) {
                            alert(date)
                        }
                    })
                }

            },
        });
    })

    function uploadPic() {
        var filename = $("#file").val();
        //执行上传文件操作的函数
        $.ajaxFileUpload({
            //处理文件上传操作的服务器端地址(可以传参数,已亲测可用)
            url:'${ctx}/file/upload',
            enctype:"multipart/form-data",
            secureuri:false,                       //是否启用安全提交,默认为false
            fileElementId:'file',                        //文件选择框的id属性
            dataType:"json",                       //服务器返回的格式,可以是json或xml等
            success: function (data) {
                if(data.success==1)
                {
                    $("#imgPic").val(data.url);
                    $("#showImg").attr("src",data.url)
                }
                else
                    alert(data.message)
            },
            error: function (msg) {
                alert("error");
            }
        });
    }
</script>
</html>

