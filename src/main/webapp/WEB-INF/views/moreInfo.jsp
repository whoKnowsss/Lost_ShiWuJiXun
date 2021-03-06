<%--
  Created by IntelliJ IDEA.
  User: 11574
  Date: 2017/4/21
  Time: 9:39
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
    <title>失物即寻平台-所有信息</title>

    <link rel="icon" href="${ctx}/img/favicon.ico" type="image/x-icon"/>
    <link rel="shortcut icon" href="${ctx}/img/favicon.ico" type="image/x-icon"/>
    <link rel="Bookmark" href="${ctx}/img/favicon.ico">
    <link rel="stylesheet" href="${ctx}/css/reset.css">
    <%--<link rel="stylesheet" href="${ctx}/style/index/css/bootstrap.css">--%>
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
                <a href="${ctx}/m/mySpace" class="right">我的空间</a>
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
<%--<div>--%>
<div class="container" style="background: #E5E5E5;padding-top: 8px">
    <div class="row" style="margin:20px">
        <div class="col s12">
            <div class="card">
                <%--<div class="card-content">--%>
                <%--</div>--%>
                    <div class="row">
                <div class="card-tabs">
                    <ul class="tabs tabs-fixed-width">
                        <div class="col s3"> <li class="tab"><a class="active" href="#info">信息</a></li></div>
                       <div class="col s3"><li class="tab"><a href="#activity">活动</a></li></div>
                        <div class=" col s3"><li class="tab"><a href="#notice">公告</a></li></div>
                        <div class="col s3"><li class="tab"><a href="#thanks">感谢</a></li></div>
                        <%--<li class="tab"><a href="#news">新闻</a></li>--%>

                        <%--<li class="tab"><a href="${ctx}/more">更多<span class="mdi mdi-chevron-double-right"></span></a></li>--%>
                    </ul>

                </div></div>
                <div class="card-content grey lighten-4">
                    <%--信息面板--%>
                    <div id="info">
                        <div class="card-panel">
                                <div class="row">
                                <form id="form_info">
                                    <div class="col m2"><input type="text" id="form_info_type" placeholder="物品类型"></div>
                                    <div class="col m2"><input type="date" class="datepicker" id="form_info_beginTime" placeholder="时间范围"></div>
                                    <div class="col m1 center" style="margin-top: 1rem;">至</div>
                                    <div class="col m2"><input type="date" class="datepicker" id="form_info_endTime" placeholder="时间范围"></div>
                                    <div class="col m2"><input type="text" id="form_info_place" placeholder="大致地点"></div>
                                    <div class="col m1"></div>
                                    <div class="col m2"><input type="button" id="form_info_search" style="font-size: 1rem" value="查询" class="waves-effect waves-light btn"></div>
                                </form>
                            </div>
                        </div>
                        <ul class="collection">
                            <li class="collection-item avatar">
                                <img src="${ctx}/img/lost_small.png" alt="lost" class="circle">
                                <span class="title">[寻物启事]</span>
                                <p class="activator">雨伞 <br>
                                    拾取地点：学活
                                </p>
                                <a href="#detail" class="secondary-content">
                                    <i class="material-icons">2017.1.2</i>
                                    <span class="mdi mdi-chevron-double-right"></span>
                                </a>
                            </li>
                            <li class="collection-item avatar" onclick="">
                                <img src="${ctx}/img/found_small.png" alt="found" class="circle">
                                <span class="title">[寻物启事]</span>
                                <p>一卡通 <br>
                                    遗失地点：未知
                                </p>
                                <a href="#!" class="secondary-content">
                                    <i class="material-icons">2017.1.2</i>
                                    <span class="mdi mdi-chevron-double-right"></span>
                                </a>
                            </li>
                            <li class="collection-item avatar">
                                <img src="${ctx}/img/lost_small.png" alt="lost" class="circle">
                                <span class="title">[失物招领]</span>
                                <p>钱包 <br>
                                    拾取地点：6教南102
                                </p>
                                <a href="#check" class="secondary-content">
                                    <i class="material-icons">2017.1.3</i>
                                    <span class="mdi mdi-chevron-double-right"></span>
                                </a>
                            </li>
                            <li class="collection-item avatar">
                                <img src="${ctx}/img/found_small.png" alt="found" class="circle">
                                <span class="title">[寻物启事]</span>
                                <p>书包 <br>
                                    遗失地点：西北田径场
                                </p>
                                <a href="#!" class="secondary-content">
                                    <i class="material-icons">2017.1.3</i>
                                    <span class="mdi mdi-chevron-double-right"></span>
                                </a>
                            </li>
                        </ul>
                        <%--分页--%>
                        <ul class="pagination">
                            <li class="disabled"><a href="#!"><i class="mdi mdi-chevron-left"></i></a></li>
                            <li class="active"><a href="#!">1</a></li>
                            <li class="waves-effect"><a href="#!">2</a></li>
                            <li class="waves-effect"><a href="#!">3</a></li>
                            <li class="waves-effect"><a href="#!">4</a></li>
                            <li class="waves-effect"><a href="#!">5</a></li>
                            <li class="waves-effect"><a href="#!"><i class="mdi mdi-chevron-right"></i></a></li>
                        </ul>
                    </div>
                    <%--活动面板--%>
                    <div id="activity">
                        <div class="card-panel">
                            <div class="row">
                                <form id="form_activity">
                                    <div class="col m2"><input type="date" class="datepicker" id="form_activity_beginTime" placeholder="时间范围"></div>
                                    <div class="col m1 center" style="margin-top: 1rem;">至</div>
                                    <div class="col m2"><input type="date" class="datepicker" id="form_activity_endTime" placeholder="时间范围"></div>
                                    <div class="col m1"></div>
                                    <div class="col m2"><input type="button" id="form_activity_search" style="font-size: 1rem" value="查询" class="waves-effect waves-light btn"></div>
                                </form>
                            </div>
                        </div>
                        <ul class="collection">
                            <li class="collection-item avatar">
                                <img src="${ctx}/img/activity.png" alt="lost" class="circle">
                                <span class="title">[活动名称]</span>
                                <p>balabala <br>
                                    balabala
                                </p>
                                <a href="#!" class="secondary-content"><i class="material-icons">2017.1.2</i></a>
                            </li>
                            <li class="collection-item avatar">
                                <img src="${ctx}/img/activity.png" alt="lost" class="circle">
                                <span class="title">[活动名称]</span>
                                <p>balabala <br>
                                    balabala
                                </p>
                                <a href="#!" class="secondary-content"><i class="material-icons">2017.1.2</i></a>
                            </li>
                            <li class="collection-item avatar">
                                <img src="${ctx}/img/activity.png" alt="lost" class="circle">
                                <span class="title">[活动名称]</span>
                                <p>balabala <br>
                                    balabala
                                </p>
                                <a href="#!" class="secondary-content"><i class="material-icons">2017.1.2</i></a>
                            </li>
                        </ul>
                        <%--分页--%>
                        <ul class="pagination">
                            <li class="disabled"><a href="#!"><i class="mdi mdi-chevron-left"></i></a></li>
                            <li class="active"><a href="#!">1</a></li>
                            <li class="waves-effect"><a href="#!">2</a></li>
                            <li class="waves-effect"><a href="#!">3</a></li>
                            <li class="waves-effect"><a href="#!">4</a></li>
                            <li class="waves-effect"><a href="#!">5</a></li>
                            <li class="waves-effect"><a href="#!"><i class="mdi mdi-chevron-right"></i></a></li>
                        </ul>
                    </div>
                    <%--公告面板--%>
                    <div id="notice">
                        <div class="card-panel">
                            <div class="row">
                                <form id="form_notice">
                                    <div class="col m2"><input type="date" class="datepicker" id="form_notice_beginTime" placeholder="时间范围"></div>
                                    <div class="col m1 center" style="margin-top: 1rem;">至</div>
                                    <div class="col m2"><input type="date" class="datepicker" id="form_notice_endTime" placeholder="时间范围"></div>
                                    <div class="col m1"></div>
                                    <div class="col m2"><input type="button" id="form_notice_search" value="查询" style="font-size: 1rem"class="waves-effect waves-light btn"></div>
                                </form>
                            </div>
                        </div>
                        <ul class="collection">
                            <li class="collection-item avatar">
                                <img src="${ctx}/img/notice.png" alt="notice" class="circle">
                                <span class="title">[公告精华]</span>
                                <p>balabala <br>
                                    balabala
                                </p>
                                <a href="#!" class="secondary-content"><i class="material-icons">2017.1.2</i></a>
                            </li>
                            <li class="collection-item avatar">
                                <img src="${ctx}/img/notice.png" alt="notice" class="circle">
                                <span class="title">[公告]</span>
                                <p>balabala <br>
                                    balabala
                                </p>
                                <a href="#!" class="secondary-content"><i class="material-icons">2017.1.2</i></a>
                            </li>
                            <li class="collection-item avatar">
                                <img src="${ctx}/img/notice.png" alt="notice" class="circle">
                                <span class="title">[公告]</span>
                                <p>balabala <br>
                                    balabala
                                </p>
                                <a href="#!" class="secondary-content"><i class="material-icons">2017.1.2</i></a>
                            </li>
                            <li class="collection-item avatar">
                                <img src="${ctx}/img/notice.png" alt="notice" class="circle">
                                <span class="title">[公告]</span>
                                <p>balabala <br>
                                    balabala
                                </p>
                                <a href="#!" class="secondary-content"><i class="material-icons">2017.1.2</i></a>
                            </li>
                        </ul>
                        <%--分页--%>
                        <ul class="pagination">
                            <li class="disabled"><a href="#!"><i class="mdi mdi-chevron-left"></i></a></li>
                            <li class="active"><a href="#!">1</a></li>
                            <li class="waves-effect"><a href="#!">2</a></li>
                            <li class="waves-effect"><a href="#!">3</a></li>
                            <li class="waves-effect"><a href="#!">4</a></li>
                            <li class="waves-effect"><a href="#!">5</a></li>
                            <li class="waves-effect"><a href="#!"><i class="mdi mdi-chevron-right"></i></a></li>
                        </ul>
                    </div>
                        <%--感谢--%>
                        <div id="thanks">
                            <div class="card-panel">
                                <div class="row">
                                    <form id="form_thanks">
                                        <div class="col m2"><input type="date" class="datepicker" id="form_thanks_beginTime" placeholder="时间范围"></div>
                                        <div class="col m1 center" style="margin-top: 1rem;">至</div>
                                        <div class="col m2"><input type="date" class="datepicker" id="form_thanks_endTime" placeholder="时间范围"></div>
                                        <div class="col m1"></div>
                                        <div class="col m2"><input type="button" id="form_thanks_search" value="查询" style="font-size: 1rem" class="waves-effect waves-light btn"></div>
                                    </form>
                                </div>
                            </div>
                            <ul class="collection">
                                <li class="collection-item avatar">
                                    <img src="${ctx}/img/aixin.png" alt="notice" class="circle">
                                    <span class="title">[感谢信]</span>
                                    <p>balabala <br>
                                        balabala
                                    </p>
                                    <a href="#!" class="secondary-content"><i class="material-icons">2017.1.2</i></a>
                                </li>
                                <li class="collection-item avatar">
                                    <img src="${ctx}/img/aixin.png" alt="notice" class="circle">
                                    <span class="title">[感谢信]</span>
                                    <p>balabala <br>
                                        balabala
                                    </p>
                                    <a href="#!" class="secondary-content"><i class="material-icons">2017.1.2</i></a>
                                </li>
                                <li class="collection-item avatar">
                                    <img src="${ctx}/img/aixin.png" alt="notice" class="circle">
                                    <span class="title">[感谢信]</span>
                                    <p>balabala <br>
                                        balabala
                                    </p>
                                    <a href="#!" class="secondary-content"><i class="material-icons">2017.1.2</i></a>
                                </li>
                                <li class="collection-item avatar">
                                    <img src="${ctx}/img/aixin.png" alt="notice" class="circle">
                                    <span class="title">[感谢信]</span>
                                    <p>balabala <br>
                                        balabala
                                    </p>
                                    <a href="#!" class="secondary-content"><i class="material-icons">2017.1.2</i></a>
                                </li>
                            </ul>
                            <%--分页--%>
                            <ul class="pagination">
                                <li class="disabled"><a href="#!"><i class="mdi mdi-chevron-left"></i></a></li>
                                <li class="active"><a href="#!">1</a></li>
                                <li class="waves-effect"><a href="#!">2</a></li>
                                <li class="waves-effect"><a href="#!">3</a></li>
                                <li class="waves-effect"><a href="#!">4</a></li>
                                <li class="waves-effect"><a href="#!">5</a></li>
                                <li class="waves-effect"><a href="#!"><i class="mdi mdi-chevron-right"></i></a></li>
                            </ul>
                        </div>
                </div>
            </div>
        </div>
    </div>
</div>
<%--</div>--%>

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

<%--寻物启事详细信息展示框--%>
<%--<a class="waves-effect waves-light btn" href="#detail">Modal</a>--%>
<!-- Modal Structure -->
<div id="detail_1" class="modal">
    <div class="modal-content">
        <div class="card hoverable">
            <div class="card-title card-content"
                 style="color:#EE6E73">
                <span>[${one.status eq 1?'失物招领':'寻物启事'}]${one.kinds}</span><br>
                <c:if test="${one.status eq 2}">
                    <span>感谢方式：${one.daxie}</span>
                </c:if>
            </div>
            <c:if test="${one.status eq 0}">
                <div class="card-image" style="max-width: 100%">
                    <img src="${one.image}" alt="物品图片描述"
                         style="width: 100%;max-height: 25rem;">
                </div>
            </c:if>
            <div class="card-content">
                <form>
                    <c:if test="${one.status ne 1}">
                        <label>物品特征：</label>
                        <c:if test="${ not empty one.special }">
                            <c:forEach items="${one.special.split(',')}" var="two">
                                <div class="chip">${two}</div>
                            </c:forEach>
                        </c:if>
                    </c:if>
                    <%--<div class="chip">balabala</div>--%>
                    <br>
                    <label>${one.status eq 1?'拾取地点':'丢失地点'}：<input type="text" readonly
                                                                   value="${one.doPlace}"></label>
                    <label>${one.status eq 1?'拾取时间':'丢失时间'}：<input type="text" readonly
                                                                   value="<fmt:formatDate value="${one.doTime}" pattern="yyyy-MM-dd HH:mm:ss"/>"></label>
                    <label>联系方式：<input type="text" readonly value="${one.contract}"></label>
                </form>
            </div>
            <div class="card-panel" style="padding-bottom: 4rem">
                <label class="teal-text left">发布时间
                    <fmt:formatDate value="${one.createTime}" pattern="yyyy-MM-dd HH:mm:ss"/>
                </label>
                <c:if test="${one.status eq 1}">
                    <a href="#check" class="waves-effect waves-light btn right" style="font-size: 1rem">我要联系</a>
                </c:if>
                <c:if test="${one.status ne 1}">
                    <a href="#note" class="waves-effect waves-light btn right" style="font-size: 1rem">我要联系</a>
                </c:if>
            </div>
        </div>
    </div>
    <%--<div class="modal-footer">--%>
    <%--</div>--%>
</div>


<%--失物招领详细信息展示框--%>
<%--<a class="waves-effect waves-light btn" href="#detail">Modal</a>--%>
<!-- Modal Structure -->
<div id="detail_1" class="modal">
    <div class="modal-content">
        <div class="card hoverable">
            <div class="card-title card-content"
                 style="color:#EE6E73">
                <span>[失物招领]</span><br>
                <c:if test="${one.status eq 2}">
                    <span>感谢方式：${one.daxie}</span>
                </c:if>
            </div>
            <c:if test="${one.status eq 0}">
                <div class="card-image" style="max-width: 100%">
                    <img src="${one.image}" alt="物品图片描述"
                         style="width: 100%;max-height: 25rem;">
                </div>
            </c:if>
            <div class="card-content">
                <form>
                    <c:if test="${one.status ne 1}">
                        <label>物品特征：</label>
                        <c:if test="${ not empty one.special }">
                            <c:forEach items="${one.special.split(',')}" var="two">
                                <div class="chip">${two}</div>
                            </c:forEach>
                        </c:if>
                    </c:if>
                    <%--<div class="chip">balabala</div>--%>
                    <br>
                    <label>${one.status eq 1?'拾取地点':'丢失地点'}：<input type="text" readonly
                                                                   value="${one.doPlace}"></label>
                    <label>${one.status eq 1?'拾取时间':'丢失时间'}：<input type="text" readonly
                                                                   value="<fmt:formatDate value="${one.doTime}" pattern="yyyy-MM-dd HH:mm:ss"/>"></label>
                    <label>联系方式：<input type="text" readonly value="${one.contract}"></label>
                </form>
            </div>
            <div class="card-panel" style="padding-bottom: 4rem">
                <label class="teal-text left">发布时间
                    <fmt:formatDate value="${one.createTime}" pattern="yyyy-MM-dd HH:mm:ss"/>
                </label>
                    <a href="#check" class="waves-effect waves-light btn right">我要联系</a>
            </div>
        </div>
    </div>
    <%--<div class="modal-footer">--%>
    <%--</div>--%>
</div>

<%--验证图片模态框--%>
<!-- Modal Trigger -->
<%--<a class="waves-effect waves-light btn" href="#check">check</a>--%>
<!-- Modal Structure -->
<div id="check" class="modal">
    <div class="modal-content" style="background-color:#fff;">
        <h4>请问以下哪个是您丢失的物品?</h4>
        <br>
        <div class="row">
            <div class="col s4">
                <img src="${ctx}/img/zy.jpg" style="width: 100%;" onclick="checkSrc(this)">
            </div>
            <div class="col s4">
                <img src="${ctx}/img/zy.jpg" style="width: 100%;" onclick="checkSrc(this)">
            </div>
            <div class="col s4">
                <img src="${ctx}/img/zy.jpg" style="width: 100%;" onclick="checkSrc(this)">
            </div>
            <br>
            <div class="col s4">
                <img src="${ctx}/img/zy.jpg" style="width: 100%;" onclick="checkSrc(this)">
            </div>
            <div class="col s4">
                <img src="${ctx}/img/zy.jpg" style="width: 100%;" onclick="checkSrc(this)">
            </div>
            <div class="col s4">
                <img src="${ctx}/img/zy.jpg" style="width: 100%;" onclick="checkSrc(this)">
            </div>
            <br>
            <div class="col s4">
                <img src="${ctx}/img/zy.jpg" style="width: 100%;" onclick="checkSrc(this)">
            </div>
            <div class="col s4">
                <img src="${ctx}/img/zy.jpg" style="width: 100%;" onclick="checkSrc(this)">
            </div>
            <div class="col s4">
                <img src="${ctx}/img/zy.jpg" style="width: 100%;" onclick="checkSrc(this)">
            </div>
        </div>
    </div>
    <input class="hide" value="正确图片的url" id="rightSrc">
</div>


<!-- 留言 -->
<%--<a class="waves-effect waves-light btn" href="#note">Modal</a>--%>
<!-- Modal Structure -->
<div id="note" class="modal">
    <div class="modal-content">
        <div class="card-content grey lighten-4">
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
                                   data-style="expand-left" style="font-size: 1rem" value="我要留言" />
                        </div>
                    </div>
                </form>
            </div>
            <div class="col m2"></div>
        </div>
    </div>
</div>


<script src="${ctx}/js/jquery-1.8.3.min.js"></script>
<script src="${ctx}/style/materialize/js/materialize.min.js"></script>
<script type="text/javascript" color="0,0,255" opacity='0.7' zIndex="-2" count="99" src="//cdn.bootcss.com/canvas-nest.js/1.0.1/canvas-nest.min.js"></script>
<script>
    $(document).ready(function () {

        $('.modal').modal();
        $('.modal').modal({
                dismissible: true, // Modal can be dismissed by clicking outside of the modal
                opacity: .5, // Opacity of modal background
                inDuration: 300, // Transition in duration
                outDuration: 200, // Transition out duration
                startingTop: '4%', // Starting top style attribute
                endingTop: '10%', // Ending top style attribute
                ready: function(modal, trigger) { // Callback for Modal open. Modal and trigger parameters available.
//                    alert("Ready");
                    console.log(modal, trigger);
                },
                complete: function() {
//                    alert('Closed');
                } // Callback for Modal close
            }
        );

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
        if ($("#toy").attr("src") == '#') {
            $("#toy").attr("src", '${ctx}/img/1.png')
        }
    })

    function checkSrc(image){
//        var rightSrc = $("#rightSrc").val();
//        if(image.src == rightSrc){
        $("#check").modal("close");
        $("#note").modal("open");
//        }
    }

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

    //    日期
    $('.datepicker').pickadate({
        selectMonths: true, // Creates a dropdown to control month
        selectYears: 15 // Creates a dropdown of 15 years to control year
    });
</script>

</body>
</html>
