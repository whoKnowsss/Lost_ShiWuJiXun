<%--
  Created by IntelliJ IDEA.
  User: Alone
  Date: 2017/4/1
  Time: 14:16
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
    <title>失物即寻平台-商城</title>

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
                    <li><img id="toy" src="${user.imgPath ne null ? user.imgPath:'#'}"
                             style="width:4rem;height: 4rem;border-radius: 50%" class="right">
                        <a href="${ctx}/m/mySpace" class="right">我的空间</a></li>
                    <c:if test="${user eq null}">
                        <li onclick="location.href='${ctx}/userLogin'"><a>登录</a></li>
                        <li ><a>|</a></li>
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
                    <li><a href="#"><i><span class="mdi mdi-comment-processing-outline"></span></i>新消息<span class="new badge">4</span></a></li>
                    <li><a href="${ctx}/m/infoToQR"><i><span class="mdi mdi-account mdi-20px"></span></i>个人信息</a></li>
                    <li><a href="${ctx}/m/mySpace"><i><span class="mdi mdi-checkbox-multiple-blank-outline"></span></i>我的空间</a></li>
                    <li><a href="${ctx}/m/userQR"><i><span class="mdi mdi-qrcode"></span></i>我的二维码</a></li>
                    <li><a href="${ctx}/m/infoPublish"><i><span class="mdi mdi-new-box"></span></i>信息发布</a></li>
                    <li>
                        <div class="divider"></div>
                    </li>
                    <li><a href="${ctx}/userIndex"><i><span class="mdi mdi-routes"></span></i>官网主页</a></li>
                    <li><a href="${ctx}/market"><i><span class="mdi mdi-square-inc-cash"></span></i>商城</a></li>
                    <%--<li><a href="#"><i><span class="mdi mdi-account-multiple"></span></i>社区</a></li>--%>
                    <li><a href="${ctx}/latest"><i><span class="mdi mdi-soccer"></span></i>最新活动<span class="new badge">1</span></a></li>
                    <li><a href="${ctx}/market"><i><span class="mdi mdi-account-card-details"></span></i>关于我们</a></li>
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

    <%--悬浮导航--%>
    <div class="fixed-action-btn" style="bottom: 45px; right: 24px;">
        <a class="btn-floating btn-large red">
            <img src="${ctx}/img/logo.png" alt="logo" style="width: 4rem;height: 4rem;border-radius: 50%">
        </a>
        <ul>
            <li><a onclick="href='${ctx}/userIndex'" class="btn-floating yellow tooltipped pulse" data-position="left" data-delay="50"
                   data-tooltip="官网首页"><span class="mdi mdi-routes"></span> </a></li>
            <li><a onclick="href='${ctx}/market'" class="btn-floating blue btn-medium tooltipped pulse" data-position="left"
                   data-delay="50" data-tooltip="商城"><span class="mdi mdi-square-inc-cash"></span></a></li>
            <li><a onclick="href='${ctx}/m/mySpace'" class="btn-floating red btn-medium tooltipped pulse" data-position="left"
                   data-delay="50" data-tooltip="我的空间"><span class="mdi mdi-format-list-bulleted-type "></span></a></li>
            <li><a onclick="href='${ctx}/m/infoPublish'" class="btn-floating green tooltipped pulse" data-position="left"
                   data-delay="50" data-tooltip="信息发布"><span class="mdi mdi-new-box"></span></a></li>
        </ul>
    </div>

    <div class="container">
        <div class="card">
            <div class="card-content">
                <h5>二维码制作：</h5>
            </div>
            <div class="card-tabs">
                <ul class="tabs tabs-fixed-width">
                    <li class="tab"><a href="#level_1">普通</a></li>
                    <li class="tab"><a href="#level_2">精美</a></li>
                    <li class="tab"><a href="#level_3">自有</a></li>
                    <li class="tab"><a href="#level_4">共享</a></li>
                    <li class="tab"><a href="#level_5">特殊</a></li>
                </ul>
            </div>
            <div class="card-content grey lighten-4">
                <div id="level_1">
                    <div class="row" style="margin:20px;">
                        <div class="col s12 m4 l3">
                            <div class="card" style="width: 100%;height:15rem">
                                <div class="card-title">
                                    <h6></h6>
                                </div>
                                <div class="card-image">
                                    <img src="${ctx}/img/urlqrcode.png" style="width:100%;height:15rem">
                                </div>
                                <div class="card-action">
                                    <%--<span class="card-title small" style="color: black;">二维码颜色可换</span>--%>
                                    <a href="#">XX积分</a>
                                    <a href="#" class="right">兑换</a>
                                    <br>
                                    <a href="#">&#165;2.00</a>
                                    <a href="#" class="right">购买</a>
                                </div>
                            </div>
                        </div>
                        <div class="col s12 m4 l3">
                            <div class="card" style="width: 100%;height:15rem">
                                <div class="card-image">
                                    <img src="${ctx}/img/QR_1.png" style="width:100%;height:15rem">
                                </div>
                                <div class="card-action">
                                    <%--<span class="card-title" style="color: black;">二维码颜色可换</span>--%>
                                    <a href="#">XX积分</a>
                                    <a href="#" class="right">兑换</a>
                                    <br>
                                    <a href="#">&#165;2.00</a>
                                    <a href="#" class="right">购买</a>
                                </div>
                            </div>
                        </div>
                        <div class="col s12 m4 l3">
                            <div class="card" style="width: 100%;height:15rem">
                                <div class="card-image">
                                    <img src="${ctx}/img/QR_2.png" style="width:100%;height:15rem">

                                </div>
                                <div class="card-action">
                                    <%--<span class="card-title" style="color: black;">图片描述</span>--%>
                                    <a href="#">XX积分</a>
                                    <a href="#" class="right">兑换</a>
                                    <br>
                                    <a href="#">&#165;2.00</a>
                                    <a href="#" class="right">购买</a>
                                </div>
                            </div>
                        </div>
                        <div class="col s12 m4 l3">
                            <div class="card" style="width: 100%;height:15rem">
                                <div class="card-image">
                                    <img src="${ctx}/img/QR_3.png" style="width:100%;height:15rem">

                                </div>
                                <div class="card-action">
                                    <%--<span class="card-title" style="color: black;">图片描述</span>--%>
                                    <a href="#">XX积分</a>
                                    <a href="#" class="right">兑换</a>
                                    <br>
                                    <a href="#">&#165;2.00</a>
                                    <a href="#" class="right">购买</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div id="level_2">
                    <div class="row" style="margin:20px;">
                        <div class="col s12 m4 l3">
                            <div class="card" style="width: 100%;height:15rem">
                                <div class="card-title">
                                    <h6></h6>
                                </div>
                                <div class="card-image">
                                    <img src="${ctx}/img/zy.jpg" style="width:100%;height:11rem">
                                </div>
                                <div class="card-action">
                                    <%--<span class="card-title small" style="color: black;">二维码颜色可换</span>--%>
                                    <a href="#">XX积分</a>
                                    <a href="#" class="right">兑换</a>
                                    <br>
                                    <a href="#">&#165;2.00</a>
                                    <a href="#" class="right">购买</a>
                                </div>
                            </div>
                        </div>
                        <div class="col s12 m4 l3">
                            <div class="card" style="width: 100%;height:15rem">
                                <div class="card-image">
                                    <img src="${ctx}/img/zy.jpg" style="width:100%;height:11rem">
                                    <span class="card-title" style="color: black;">图片描述</span>
                                </div>
                                <div class="card-action">
                                    <a href="#">XX积分</a>
                                    <a href="#" class="right">兑换</a>
                                    <br>
                                    <a href="#">&#165;2.00</a>
                                    <a href="#" class="right">购买</a>
                                </div>
                            </div>
                        </div>
                        <div class="col s12 m4 l3">
                            <div class="card" style="width: 100%;height:15rem">
                                <div class="card-image">
                                    <img src="${ctx}/img/zy.jpg" style="width:100%;height:11rem">
                                    <span class="card-title" style="color: black;">图片描述</span>
                                </div>
                                <div class="card-action">
                                    <a href="#">XX积分</a>
                                    <a href="#" class="right">兑换</a>
                                    <br>
                                    <a href="#">&#165;2.00</a>
                                    <a href="#" class="right">购买</a>
                                </div>
                            </div>
                        </div>
                        <div class="col s12 m4 l3">
                            <div class="card" style="width: 100%;height:15rem">
                                <div class="card-image">
                                    <img src="${ctx}/img/zy.jpg" style="width:100%;height:11rem">
                                    <span class="card-title" style="color: black;">图片描述</span>
                                </div>
                                <div class="card-action">
                                    <a href="#">XX积分</a>
                                    <a href="#" class="right">兑换</a>
                                    <br>
                                    <a href="#">&#165;2.00</a>
                                    <a href="#" class="right">购买</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div id="level_3">
                    <div class="row" style="margin:20px;">
                        <div class="col s12 m4 l3">
                            <div class="card" style="width: 100%;height:15rem">
                                <div class="card-title">
                                    <h6></h6>
                                </div>
                                <div class="card-image">
                                    <img src="${ctx}/img/zy.jpg" style="width:100%;height:11rem">
                                    <span class="card-title" style="color: black;">图片描述</span>
                                </div>
                                <div class="card-action">
                                    <a href="#">XX积分</a>
                                    <a href="#" class="right">兑换</a>
                                    <br>
                                    <a href="#">&#165;2.00</a>
                                    <a href="#" class="right">购买</a>
                                </div>
                            </div>
                        </div>
                        <div class="col s12 m4 l3">
                            <div class="card" style="width: 100%;height:15rem">
                                <div class="card-image">
                                    <img src="${ctx}/img/zy.jpg" style="width:100%;height:11rem">
                                    <span class="card-title" style="color: black;">图片描述</span>
                                </div>
                                <div class="card-action">
                                    <a href="#">XX积分</a>
                                    <a href="#" class="right">兑换</a>
                                    <br>
                                    <a href="#">&#165;2.00</a>
                                    <a href="#" class="right">购买</a>
                                </div>
                            </div>
                        </div>
                        <div class="col s12 m4 l3">
                            <div class="card" style="width: 100%;height:15rem">
                                <div class="card-image">
                                    <img src="${ctx}/img/zy.jpg" style="width:100%;height:11rem">
                                    <span class="card-title" style="color: black;">图片描述</span>
                                </div>
                                <div class="card-action">
                                    <a href="#">XX积分</a>
                                    <a href="#" class="right">兑换</a>
                                    <br>
                                    <a href="#">&#165;2.00</a>
                                    <a href="#" class="right">购买</a>
                                </div>
                            </div>
                        </div>
                        <div class="col s12 m4 l3">
                            <div class="card" style="width: 100%;height:15rem">
                                <div class="card-image">
                                    <img src="${ctx}/img/zy.jpg" style="width:100%;height:11rem">
                                    <span class="card-title" style="color: black;">图片描述</span>
                                </div>
                                <div class="card-action">
                                    <a href="#">XX积分</a>
                                    <a href="#" class="right">兑换</a>
                                    <br>
                                    <a href="#">&#165;2.00</a>
                                    <a href="#" class="right">购买</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div id="level_4">
                    <div class="row" style="margin:20px;">
                        <div class="col s12 m4 l3">
                            <div class="card" style="width: 100%;height:15rem">
                                <div class="card-title">
                                    <h6></h6>
                                </div>
                                <div class="card-image">
                                    <img src="${ctx}/img/zy.jpg" style="width:100%;height:11rem">
                                    <span class="card-title" style="color: black;">图片描述</span>
                                </div>
                                <div class="card-action">
                                    <a href="#">XX积分</a>
                                    <a href="#" class="right">兑换</a>
                                    <br>
                                    <a href="#">&#165;2.00</a>
                                    <a href="#" class="right">购买</a>
                                </div>
                            </div>
                        </div>
                        <div class="col s12 m4 l3">
                            <div class="card" style="width: 100%;height:15rem">
                                <div class="card-image">
                                    <img src="${ctx}/img/zy.jpg" style="width:100%;height:11rem">
                                    <span class="card-title" style="color: black;">图片描述</span>
                                </div>
                                <div class="card-action">
                                    <a href="#">XX积分</a>
                                    <a href="#" class="right">兑换</a>
                                    <br>
                                    <a href="#">&#165;2.00</a>
                                    <a href="#" class="right">购买</a>
                                </div>
                            </div>
                        </div>
                        <div class="col s12 m4 l3">
                            <div class="card" style="width: 100%;height:15rem">
                                <div class="card-image">
                                    <img src="${ctx}/img/zy.jpg" style="width:100%;height:11rem">
                                    <span class="card-title" style="color: black;">图片描述</span>
                                </div>
                                <div class="card-action">
                                    <a href="#">XX积分</a>
                                    <a href="#" class="right">兑换</a>
                                    <br>
                                    <a href="#">&#165;2.00</a>
                                    <a href="#" class="right">购买</a>
                                </div>
                            </div>
                        </div>
                        <div class="col s12 m4 l3">
                            <div class="card" style="width: 100%;height:15rem">
                                <div class="card-image">
                                    <img src="${ctx}/img/zy.jpg" style="width:100%;height:11rem">
                                    <span class="card-title" style="color: black;">图片描述</span>
                                </div>
                                <div class="card-action">
                                    <a href="#">XX积分</a>
                                    <a href="#" class="right">兑换</a>
                                    <br>
                                    <a href="#">&#165;2.00</a>
                                    <a href="#" class="right">购买</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div id="level_5">
                    <div class="row" style="margin:20px;">
                        <div class="col s12 m4 l3">
                            <div class="card" style="width: 100%;height:15rem">
                                <div class="card-title">
                                    <h6></h6>
                                </div>
                                <div class="card-image">
                                    <img src="${ctx}/img/zy.jpg" style="width:100%;height:11rem">
                                    <span class="card-title" style="color: black;">图片描述</span>
                                </div>
                                <div class="card-action">
                                    <a href="#">XX积分</a>
                                    <a href="#" class="right">兑换</a>
                                    <br>
                                    <a href="#">&#165;2.00</a>
                                    <a href="#" class="right">购买</a>
                                </div>
                            </div>
                        </div>
                        <div class="col s12 m4 l3">
                            <div class="card" style="width: 100%;height:15rem">
                                <div class="card-image">
                                    <img src="${ctx}/img/zy.jpg" style="width:100%;height:11rem">
                                    <span class="card-title" style="color: black;">图片描述</span>
                                </div>
                                <div class="card-action">
                                    <a href="#">XX积分</a>
                                    <a href="#" class="right">兑换</a>
                                    <br>
                                    <a href="#">&#165;2.00</a>
                                    <a href="#" class="right">购买</a>
                                </div>
                            </div>
                        </div>
                        <div class="col s12 m4 l3">
                            <div class="card" style="width: 100%;height:15rem">
                                <div class="card-image">
                                    <img src="${ctx}/img/zy.jpg" style="width:100%;height:11rem">
                                    <span class="card-title" style="color: black;">图片描述</span>
                                </div>
                                <div class="card-action">
                                    <a href="#">XX积分</a>
                                    <a href="#" class="right">兑换</a>
                                    <br>
                                    <a href="#">&#165;2.00</a>
                                    <a href="#" class="right">购买</a>
                                </div>
                            </div>
                        </div>
                        <div class="col s12 m4 l3">
                            <div class="card" style="width: 100%;height:15rem">
                                <div class="card-image">
                                    <img src="${ctx}/img/zy.jpg" style="width:100%;height:11rem">
                                    <span class="card-title" style="color: black;">图片描述</span>
                                </div>
                                <div class="card-action">
                                    <a href="#">XX积分</a>
                                    <a href="#" class="right">兑换</a>
                                    <br>
                                    <a href="#">&#165;2.00</a>
                                    <a href="#" class="right">购买</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <%--积分商城--%>
    <div class="container hide-on-small-and-down" style="background: #E5E5E5;padding-top: 8px">
        <h5 style="margin-left: 2rem;">
            商城
        </h5>
        <hr>
        <div class="row" style="margin:20px;">
            <div class="col s12 m4 l3">
                <div class="card" style="width: 100%;height:15rem">
                    <div class="card-image">
                        <img src="${ctx}/img/market_1.png" style="width:100%;height:11rem">
                        <span class="card-title" style="color: black;">钥匙圈</span>
                    </div>
                    <%--<div class="card-content">--%>
                    <%--<p>I am a very simple card. I am good at containing small bits of information.--%>
                    <%--I am convenient because I require little markup to use effectively.</p>--%>
                    <%--</div>--%>
                    <div class="card-action">
                        <a href="#">8积分</a>
                        <a href="#" class="right">兑换</a>
                        <br>
                        <a href="#">&#165;2.00</a>
                        <a href="#" class="right">购买</a>
                    </div>
                </div>
            </div>
            <div class="col s12 m4 l3">
                <div class="card" style="width: 100%;height:15rem">
                    <div class="card-image">
                        <img src="${ctx}/img/market_2.png" style="width:100%;height:11rem">
                        <span class="card-title" style="color: black;">卡贴</span>
                    </div>
                    <%--<div class="card-content">--%>
                    <%--<p>I am a very simple card. I am good at containing small bits of information.--%>
                    <%--I am convenient because I require little markup to use effectively.</p>--%>
                    <%--</div>--%>
                    <div class="card-action">
                        <a href="#">15积分</a>
                        <a href="#" class="right">兑换</a>
                        <br>
                        <a href="#">&#165;5.00</a>
                        <a href="#" class="right">购买</a>
                    </div>
                </div>
            </div>
            <div class="col s12 m4 l3">
                <div class="card" style="width: 100%;height:15rem">
                    <div class="card-image">
                        <img src="${ctx}/img/market_3.png" style="width:100%;height:11rem">
                        <span class="card-title" style="color: black;">卡贴盒</span>
                    </div>
                    <%--<div class="card-content">--%>
                    <%--<p>I am a very simple card. I am good at containing small bits of information.--%>
                    <%--I am convenient because I require little markup to use effectively.</p>--%>
                    <%--</div>--%>
                    <div class="card-action">
                        <a href="#">10积分</a>
                        <a href="#" class="right">兑换</a>
                        <br>
                        <a href="#">&#165;4.00</a>
                        <a href="#" class="right">购买</a>
                    </div>
                </div>
            </div>
            <div class="col s12 m4 l3">
                <div class="card" style="width: 100%;height:15rem">
                    <div class="card-image">
                        <img src="${ctx}/img/market_4.png" style="width:100%;height:11rem">
                        <span class="card-title" style="color: black;">卡套</span>
                    </div>
                    <%--<div class="card-content">--%>
                    <%--<p>I am a very simple card. I am good at containing small bits of information.--%>
                    <%--I am convenient because I require little markup to use effectively.</p>--%>
                    <%--</div>--%>
                    <div class="card-action">
                        <a href="#">15积分</a>
                        <a href="#" class="right">兑换</a>
                        <br>
                        <a href="#">&#165;5.00</a>
                        <a href="#" class="right">购买</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <%--页脚--%>
    <footer class="page-footer">
        <div class="container">
            <div class="row">
                <div class="col s12 m6 l6" style="padding-left: 4rem;">
                    <h3 class="white-text">失物即寻</h3>
                    <p class="grey-text text-lighten-4"><img src="${ctx}/img/wechat.png">扫码关注微信号</p>
                </div>
                <div class="col s12 m4 offset-m2 l4 offset-l2" style="padding-left: 4rem;padding-top: 2rem;">
                    <img src="${ctx}/img/QRcode.jpg" style="width: 8rem;height: 8rem">
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
<script type="text/javascript" color="0,0,255" opacity='0.7' zIndex="-2" count="99" src="//cdn.bootcss.com/canvas-nest.js/1.0.1/canvas-nest.min.js"></script>
<script>
    $(document).ready(function () {
        if ($("#toy").attr("src") == '#') {
            $("#toy").attr("src", '${ctx}/img/1.png')
        }
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
    })

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


</script>

</html>
