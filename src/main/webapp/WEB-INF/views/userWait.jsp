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
        <div class="row">
            <div class="col m3">

            </div>
            <div class="col s12 m6">
                <div class="card blue-grey darken-1">
                    <div class="card-content white-text">
                        <span class="card-title">最后一步</span>
                        <br>
                        <p>我们已经将注册邮件发往您的邮箱，请输入注册码完成注册！</p>
                        <br>
                        <p>如有问题请联系管理员。</p>
                    </div>
                    <div class="card-action">
                        <br>
                        <input type="text" id="zcm" name="zcm" placeholder="请输入注册码">
                        <br>
                        <br>
                        <br>
                        <input type="button" class="waves-effect waves-light btn" id="zc" value="完成注册">
                        <br>
                    </div>
                </div>
            </div>
            <div class="col m3">

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

<!-- Modal Structure -->
<div id="myModal" class="modal">
    <div class="modal-content">
        <h4>提示框</h4>
        <p>注册成功，请登录！</p>
    </div>
    <div class="modal-footer">
        <a href="#!" class="modal-action modal-close waves-effect waves-green btn-flat">确定</a>
    </div>
</div>

<script src="${ctx}/js/jquery-1.8.3.min.js"></script>
<script src="${ctx}/style/materialize/js/materialize.min.js"></script>
<script src="${ctx}/js/jquery.validate.min.js"></script>
<script src="${ctx}/js/ajaxfileupload.js"></script>
<script>
    $(function () {

        $("input[type='button']").css({"font-size":"1rem"});
        $("input[type='file']").css({"font-size":"1rem"});

        $("#zc").click(function () {
            if($("#zcm").val()=='')
                alert("请输入注册码！")
            else
            {
                $.ajax({
                    url:'${ctx}/user/doRegister',
                    type:"post",
                    data:{
                        zcm:$("#zcm").val()
                    },
                    dataType: "json",
                    success:function (date) {
                        if(date.result=="1"){
//                            alert("注册成功，请登录！")
                            $('#myModal').modal('open');
                            location.href="${ctx}/userLogin"
                        }else{
                            alert(date.result)
                        }

                    }
                })
            }
        })
    })
</script>

</body>
</html>

