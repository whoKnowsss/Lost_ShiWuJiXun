<%--
  Created by IntelliJ IDEA.
  User: Alone
  Date: 2017/2/9
  Time: 15:03
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
    <title>失物即寻-信息发布</title>

    <link rel="icon" href="${ctx}/img/favicon.ico" type="image/x-icon"/>
    <link rel="shortcut icon" href="${ctx}/img/favicon.ico" type="image/x-icon"/>
    <link rel="Bookmark" href="${ctx}/img/favicon.ico">
    <link rel="stylesheet" href="${ctx}/css/reset.css">
    <%--<link rel="stylesheet" href="${ctx}/css/bootstrap.min.css">--%>
    <%--<link rel="stylesheet" href="${ctx}/style/foundation-6.3.0-complete/css/foundation.min.css">--%>
    <link rel="stylesheet" href="${ctx}/style/materialize/css/materialize.min.css">
    <link href="${ctx}/style/materialize/css/materialdesignicons.min.css" media="all" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="${ctx}/css/shiwujixu.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
</head>
<body>

<%--<nav class="top-bar">--%>
<%--<div class="top-bar-left">--%>
<%--<img src="${ctx}/img/logo.png" alt="logo" style="width: 50px;height: 50px;" >--%>
<%--<span style="font-size: 1.875em;color:black;margin: 10px;">信息发布</span>--%>
<%--</div>--%>
<%--<div class="top-bar-right">--%>
<%--<img src="${ctx}/img/logo.png" alt="用户头像" style="width: 50px;height: 50px;border-radius: 50%">--%>

<%--</div>--%>
<%--</nav>--%>

<%--PC端导航--%>
<nav class="hide-on-med-and-down">
    <div class="nav-wrapper">
        <a href="#"><img src="${ctx}/img/logo.png" style="height: 100%;"></a>
        <ul class="left hide-on-med-and-down">
            <li><a href="${ctx}/index">官网主页</a></li>
            <li><a href="${ctx}/moreInfo">信息通知</a></li>
            <li><a href="${ctx}/m/infoPublish">信息发布</a></li>
            <li><a href="${ctx}/market">商城</a></li>
            <%--<li><a href="#">社区</a></li>--%>
            <li><a href="${ctx}/latest">最新活动<span class="new badge">1</span></a></li>
            <li><a href="${ctx}/aboutUs">关于我们</a></li>
        </ul>
        <ul id="nav-mobile" class="right">
            <li><img id="toy" src="${user.imgPath ne null ? user.imgPath:'#'}"
                     style="width:4rem;height: 4rem;border-radius: 50%" class="right"><a
                    href="${ctx}/m/mySpace" class="right">我的空间</a></li>
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
            <li><a href="${ctx}/index"><i><span class="mdi mdi-routes"></span></i>官网主页</a></li>
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

<div class="container">
    <div class="card">
        <div class="card-content" style="background-color:#ffcdd2;">

        </div>
        <div class="row">
            <div class="card-tabs">
                <ul class="tabs">
                    <li class="col m1"></li>
                    <li class="tab col s4 m3"><a class="active" href="#lost">失物招领</a></li>
                    <li class="tab col s4 m3"><a href="#found">寻物启事</a></li>
                    <li class="tab col s4 m3"><a href="#thanks">写感谢信</a></li>
                    <li class="col m2"></li>
                </ul>
            </div>
        </div>
        <div class="card-content" style="background-color:#ffebee;">
            <%--失物招领--%>
            <div class="row">
                <div class="col s12 m2">
                    &nbsp;
                </div>
                <div class="col s12 m8">
                    <form id="lost" action="${ctx}/m/info/doPublish" type="post" onsubmit="return check(0);">
                        <label for="found_type_1">物品类别:
                            <select id="found_type_1">
                                <option value="雨伞">雨伞</option>
                                <option value="钥匙">钥匙</option>
                                <option value="一卡通">一卡通</option>
                                <option value="4">没有我要的选项，我要自己写</option>
                            </select>
                        </label>
                        <input id="found_type_2" type="text" placeholder="请输入丢失的物品类别" class="hide">
                        <label for="found_getTime">
                            拾取时间：<input id="found_getTime" type="date" class="datepicker" required>
                        </label>
                        <label for="found_getPlace">拾取地点：
                            <input type="text" id="found_getPlace" placeholder="请输入地点" required>
                        </label>
                        <label for="found_feature">物品特征：
                            <div class="chips chips-placeholder" id="found_feature"></div>
                        </label>
                        <label for="found_picture">物品图片：
                            <div class="file-field input-field">
                                <div class="btn">
                                    <span>上传图片</span>
                                    <input type="file" id="file0" name="file0" required>
                                </div>
                                <div class="file-path-wrapper">
                                    <input class="file-path validate" type="text">
                                </div>
                            </div>
                            <img src="${ctx}/img/picture.png" class="hide" alt="物品图片" id="found_picture"
                                 style="width:200px;height: 180px;">
                        </label>
                        <%--<label for="found_contract">联系方式:--%>
                            <%--<input type="text" id="found_contract" placeholder="任何联系方式均可" required>--%>
                        <%--</label>--%>
                        <div class="row"></div>
                        <input id="found_publish" type="submit" class="waves-effect waves-light btn left" style="font-size: 1rem" value="确认发布"/>
                        <input id="found_cancle" type="button" class="waves-effect waves-light btn right" style="font-size: 1rem" value="取消"/>
                    </form>


                    <%--寻物启事--%>
                    <form id="found" action="${ctx}/m/info/doPublish" type="post" onsubmit="return check(1);">
                        <label for="lost_type_1">物品类别:
                            <select id="lost_type_1">
                                <option value="雨伞">雨伞</option>
                                <option value="钥匙">钥匙</option>
                                <option value="一卡通">一卡通</option>
                                <option value="4">没有我要的选项，我要自己写</option>
                            </select>
                        </label>
                        <input id="lost_type_2" type="text" placeholder="请输入拾取的物品类别" class="hide">
                        <label for="lost_getTime">丢失时间：
                            <input id="lost_getTime" type="date" class="datepicker">
                        </label>
                        <label for="lost_getPlace">遗失地点：
                            <input type="text" id="lost_getPlace" placeholder="请输入大致地点">
                        </label>
                        <label for="lost_feature">物品特征：
                            <div class="chips chips-placeholder" id="lost_feature"></div>
                        </label>
                        <label for="lost_picture">物品图片：
                            <div class="file-field input-field">
                                <div class="btn">
                                    <span>上传图片</span>
                                    <input type="file" id="file1" name="file1">
                                </div>
                                <div class="file-path-wrapper">
                                    <input class="file-path validate" type="text">
                                </div>
                            </div>
                            <img src="${ctx}/img/picture.png" class="hide" alt="物品图片" id="lost_picture"
                                 style="width:200px;height: 180px;">
                        </label>
                        <label for="lost_contract">联系方式:
                            <input type="text" id="lost_contract" placeholder="任何联系方式均可" required>
                        </label>
                        <label for="lost_thank">答谢方式:
                            <input type="text" id="lost_thank">
                        </label>
                        <div class="row"></div>
                        <input id="lost_publish" type="submit" class="waves-effect waves-light btn left" style="font-size: 1rem" value="确认发布"/>
                        <input id="lost_cancle" type="button" class="waves-effect waves-light btn right" style="font-size: 1rem;" value="取消"/>
                    </form>


                    <%--感谢信--%>
                    <form id="thanks" action="${ctx}/m/info/doPublish" type="post" onsubmit="">
                        <label for="thank_userName">
                        </label>
                        <input id="thank_userName" type="text" placeholder="感谢对象">
                        <label for="thank_note">内容：
                            <input id="thank_note" type="text" data-length="200">
                        </label>
                        <div class="row"></div>
                        <input id="thank_submit" type="submit" class="waves-effect waves-light btn right" style="font-size: 1rem" value="确认发布"/>
                    </form>
                </div>

                <div class="col s12 m2">
                    &nbsp;
                </div>
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
<input type="hidden" id="imgPic">
<script src="${ctx}/js/jquery-1.8.3.min.js"></script>
<script src="${ctx}/style/materialize/js/materialize.min.js"></script>
<script src="${ctx}/js/ajaxfileupload.js"></script>
<script type="text/javascript" color="0,0,255" opacity='0.7' zIndex="-2" count="99" src="//cdn.bootcss.com/canvas-nest.js/1.0.1/canvas-nest.min.js"></script>
<script>
    $(document).ready(function () {
        if ($("#toy").attr("src") == '#') {
            $("#toy").attr("src", '${ctx}/img/1.png')
        }
        $('select').material_select();
        $('.slider').slider({full_width: true, height: 400});
        $('.tooltipped').tooltip({delay: 50});
        $('ul.tabs').tabs();
        $('.button-collapse').sideNav({
                menuWidth: 280, // Default is 300
                edge: 'left', // Choose the horizontal origin
                closeOnClick: true, // Closes side-nav on <a> clicks, useful for Angular/Meteor
                draggable: true // Choose whether you can drag to open on touch screens
            }
        );
        if ($(".circle").attr("src") == '#') {
            $(".circle").attr("src", '${ctx}/img/1.png')
        }
        $("#found_type_1").change(function () {

            if ($("#found_type_1").val() == '4')
                $("#found_type_2").removeClass("hide")
            else
                $("#found_type_2").addClass("hide")
        })

        $("#lost_type_1").change(function () {

            if ($("#lost_type_1").val() == '4')
                $("#lost_type_2").removeClass("hide")
            else
                $("#lost_type_2").addClass("hide")
        })

        //    日期
        $('.datepicker').pickadate({
            selectMonths: true, // Creates a dropdown to control month
            selectYears: 15 // Creates a dropdown of 15 years to control year
        });
    })

    $('.chips-placeholder').material_chip({
        placeholder: '+特征',
        secondaryPlaceholder: '请输入特征标签',
    });

    //判断图片是否存在
    function CheckImgExists(imgurl) {
        var ImgObj = new Image(); //判断图片是否存在
        ImgObj.src = imgurl;
        //没有图片，则返回-1
        if (ImgObj.fileSize > 0 || (ImgObj.width > 0 && ImgObj.height > 0)) {
            return true;
        } else {
            return false;
        }
    }
    function getStr(obj) {

        var list = ''
        for (var i = 0; i < obj.length; i++) {
            list += obj[i].tag
            if (i != obj.length - 1)
                list += ','
        }
        return list;
    }

    function check(obj) {
        if (confirm("确定提交吗？")) {
            if (obj == 0) {

                var kinds = $("#found_type_1").val()
                if (kinds == '4')
                    kinds = $("#found_type_2").val()
                var doTime = $("#found_getTime").val()
                var doPlace = $("#found_getPlace").val()
                var special = getStr($("#found_feature").material_chip('data'));
                var contract = $("#found_contract").val()
                var filename = $("#file0").val();
                if (filename) {
                    //执行上传文件操作的函数
                    $.ajaxFileUpload({
                        //处理文件上传操作的服务器端地址(可以传参数,已亲测可用)
                        url: '${ctx}/lostandfound/file/upload/0',
                        enctype: "multipart/form-data",
                        secureuri: false,                       //是否启用安全提交,默认为false
                        fileElementId: 'file0',                        //文件选择框的id属性
                        dataType: "json",                       //服务器返回的格式,可以是json或xml等
                        success: function (data) {
                            if (data.success == 1) {
                                $("#imgPic").val(data.url);

                                $.ajax({
                                    url: '${ctx}/m/info/doPublish',
                                    type: 'post',
                                    data: {
                                        kinds: kinds,
                                        doTime: $("#found_getTime").val(),
                                        doPlace: $("#found_getPlace").val(),
                                        special: special,
                                        contract: $("#found_contract").val(),
                                        sponsorId:${user.id},
                                        status: 1,   //1代表失物招领，2代表寻物启事，0代表删除
                                        image: $("#imgPic").val()
                                    },
                                    success: function (date) {
                                        if (date.result == 1) {
                                            alert('发布成功！');
                                            location.href = '${ctx}/userIndex'
                                        }
                                        else {
                                            alert("未知错误，请联系管理员！")
                                        }
                                    }
                                })
                            }
                            else
                                alert(data.message)
                        },
                        error: function (msg) {
                            alert("error");
                        }
                    });
                }
            }
            if (obj == 1) {

                var kinds = $("#lost_type_1").val()
                if (kinds == '4')
                    kinds = $("#lost_type_2").val()
                var doTime = $("#lost_getTime").val()
                var doPlace = $("#lost_getPlace").val()
                var special = getStr($("#lost_feature").material_chip('data'));
                var contract = $("#lost_contract").val()
                var filename = $("#file1").val();
                var thanks = $("#lost_thank").val();
                if (filename) {
                    //执行上传文件操作的函数
                    $.ajaxFileUpload({
                        //处理文件上传操作的服务器端地址(可以传参数,已亲测可用)
                        url: '${ctx}/lostandfound/file/upload/1',
                        enctype: "multipart/form-data",
                        secureuri: false,                       //是否启用安全提交,默认为false
                        fileElementId: 'file1',                        //文件选择框的id属性
                        dataType: "json",                       //服务器返回的格式,可以是json或xml等
                        success: function (data) {
                            if (data.success == 1) {
                                $("#imgPic").val(data.url);

                                $.ajax({
                                    url: '${ctx}/m/info/doPublish',
                                    type: 'post',
                                    data: {
                                        kinds: kinds,
                                        doTime: $("#lost_getTime").val(),
                                        doPlace: $("#lost_getPlace").val(),
                                        special: special,
                                        contract: $("#lost_contract").val(),
                                        sponsorId:${user.id},
                                        status: 2,   //1代表失物招领，2代表寻物启事，0代表删除
                                        image: $("#imgPic").val(),
                                        daxie:$("#lost_thank").val()
                                    },
                                    success: function (date) {
                                        if (date.result == 1) {
                                            alert('发布成功！');
                                            location.href = '${ctx}/userIndex'
                                        }
                                        else {
                                            alert("未知错误，请联系管理员！")
                                        }
                                    }
                                })
                            }
                            else
                                alert(data.message)
                        },
                        error: function (msg) {
                            alert("error");
                        }
                    });
                }
            }

        }
        return false;
    }
</script>
</body>
</html>

