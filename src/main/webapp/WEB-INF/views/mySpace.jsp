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
    <title>失物即寻平台-我的空间</title>

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

<%--<div>--%>
<%--<img src="${ctx}/img/userbg.jpg" style="width: 100%;height: 30rem;opacity:0.5;">--%>
<%--</div>--%>
<%--&lt;%&ndash;主要内容&ndash;%&gt;--%>
<%--<img src="${host.imgPath}">--%>
<%--<div class="container" style="background: #E5E5E5;">--%>
<%--<div class="card horizontal">--%>
<%--<div class="card-tabs">--%>
<%--<ul class="tabs right" style="min-height: 50rem;">--%>
<%--<li class="tab" style="display:block"><a href="#test4">QQ</a></li>--%>
<%--<li class="tab" style="display:block"><a href="#test5">WX</a></li>--%>
<%--<li class="tab" style="display:block"><a href="#test6">Phone</a></li>--%>
<%--<li class="tab" style="display:block"><a href="#test7">other</a></li>--%>
<%--</ul>--%>
<%--</div>--%>
<%--<div class="card-content grey lighten-4">--%>
<%--<div id="test4">${host.qq}</div>--%>
<%--<div id="test5">${host.wx}</div>--%>
<%--<div id="test6">${host.phone}</div>--%>
<%--<div id="test7">${host.other}</div>--%>
<%--</div>--%>
<%--<div class="card-content">--%>
<%--<div >--%>
<%--留言：--%>
<%--<textarea id="liuyan"></textarea>--%>
<%--</div>--%>
<%--</div>--%>
<%--</div>--%>
<%--</div>--%>
<%--</div>--%>


<%--主要内容--%>
<div style='background-image: url("${ctx}/img/userbg.jpg");width: 100%;height: 100%;'>
    <div class="container" style="background: #E5E5E5;">
        <div class="card">
            <div class="card-content">
                <div class="card-title">
                    <div class="row">
                        <div class="col m3"></div>
                        <div class="col s12 m6">
                            <c:if test="${host.qq} ne ''">
                                <label for="qq">QQ</label>
                                <p id="qq" class="teal-text">${host.qq}</p>
                            </c:if>
                            <c:if test="${host.wx} ne ''">
                                <label for="wx">微信</label>
                                <p id="wx" class="teal-text">${host.wx}</p>
                            </c:if>
                            <c:if test="${host.phone} ne ''">
                                <label for="phone">电话号码</label>
                                <p id="phone" class="teal-text">${host.phone}</p>
                            </c:if>
                            <c:if test="${host.other} ne ''">
                                <label for="otherContracts">其他方式</label>
                                <p id="otherContracts">${host.other}</p>
                            </c:if>
                        </div>
                        <div class="col m3"></div>
                    </div>
                </div>
            </div>
            <div class="card-tabs">
                <ul class="tabs tabs-fixed-width">
                    <li class="tab"><a href="#history">发布历史</a></li>
                    <li class="tab"><a class="active" href="#myNews">我的消息</a></li>
                    <li class="tab"><a href="#myInfo">个人信息</a></li>
                    <li class="tab"><a href="#myQR">我的二维码</a></li>
                    <%--<li class="tab"><a href="#visiter">最近访客</a></li>--%>
                </ul>
            </div>
            <div class="card-content grey lighten-4">

                    <div id="history">
                        <c:if test="${losts eq null}">
                            <p>您还没有发布过丢失！</p>
                        </c:if>
                        <c:if test="${losts ne null}">
                            <div class="row">
                                <c:forEach items="${losts}" var="one" varStatus="cc">
                                    <div class="col s12 m6">
                                            <div class="card hoverable">
                                                <a class="btn-floating halfway-fab waves-effect waves-light red tooltipped"
                                                   data-position="left" data-delay="50"
                                                   data-tooltip="重新编辑"><i class="mdi mdi-feather"></i></a>
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
                                                        <label class="teal-text left">物品状态:
                                                            <input class="with-gap" name="found" type="radio" id="found1"  ${one.results eq 1?'checked':''}/>
                                                            <label for="found1">${one.status eq 1?'已找到失主':'已找回'}</label>
                                                            <input class="with-gap" name="found" type="radio" id="found2"
                                                                   ${one.results eq 0?'checked':''}/>
                                                            <label for="found2">${one.status eq 1?'尚未找到失主':'未找回'}</label>
                                                        </label>

                                                    </form>
                                                </div>
                                                <div class="card-panel" style="padding-bottom: 2.6rem">
                                                    <i class="mdi mdi-comment-processing-outline right small"
                                                       style="margin-top: -0.8rem;"></i>
                                                    <i class="mdi mdi-star-outline right small"
                                                       style="margin-top: -0.8rem;"></i>
                                                    <i class="mdi mdi-star hide right small"
                                                       style="margin-top: -0.8rem;"></i>
                                                    <label class="teal-text right">发布时间
                                                        <fmt:formatDate value="${one.createTime}" pattern="yyyy-MM-dd HH:mm:ss"/>
                                                    </label>
                                                </div>
                                            </div>
                                    </div>
                                <%--</div>--%>
                            </c:forEach></div>
                        </c:if>
                    </div>

                <div id="myNews">
                    <div class="row">
                        <div class="col m2"></div>
                        <div class="col s12 m8">
                            <c:if test="${mes ne null}">
                                <c:forEach var="one" items="${mes}">
                                    <div class="card">
                                        <%--<div class="card-content white-text">--%>
                                        <div class="card-panel">
                                            <span class="black-text">留言内容：<textarea class="materialize-textarea" style="text-indent: 2em;" readonly>${one.content}</textarea><br></span>
                                            <span class="blue-text left">留言者联系方式：${one.contract}</span>
                                            <div class="right">
                                                <span class="teal-text">留言时间： <fmt:formatDate value="${one.createTime}" pattern="yyyy-MM-dd HH:mm:ss"/></span><br>
                                            </div>
                                        </div>



                                <%--<span class="card-title">--%>
                                    <%--<img src="${ctx}/img/lmz.jpg" style="width:4rem;height: 4rem;border-radius: 50%"--%>
                                         <%--class="left">--%>
                                    <%--<span class="teal-text" style="margin-left: 1rem">用户名</span>--%>
                                    <%--&lt;%&ndash;<span></span>&ndash;%&gt;--%>
                                <%--</span>--%>
                                        <%--</div>--%>
                                        <%--<div class="card-panel">--%>
                                            <%--<p class="teal-text">留言:</p>--%>
                                            <%--<hr>--%>
                                            <%--<label class="black-text">我:</label>--%>
                                            <%--<p class="black-text" style="text-indent: 2em;">回复内容</p>--%>
                                            <%--<label class="teal-text">用户:</label>--%>
                                            <%--<p class="teal-text" style="text-indent: 2em;">回复内容</p>--%>
                                            <%--<label class="black-text">我:</label>--%>
                                            <%--<p class="black-text" style="text-indent: 2em;">回复内容</p>--%>
                                        <%--</div>--%>
                                        <%--<div class="card-action" style="padding-bottom: 4rem">--%>
                                            <%--<input type="text" placeholder="输入回复内容">--%>

                                            <%--<p id="demo">点击按钮，向对方发送您的位置：</p>--%>
                                            <%--<br>--%>
                                            <%--<div>--%>
                                                <%--<input type="button" class="waves-effect waves-light btn right" value="回复">--%>
                                                <%--<input type="button" onclick="getLocation()"--%>
                                                       <%--class="waves-effect waves-light btn left" value="发送">--%>
                                            <%--</div>--%>

                                            <%--<div id="mapholder"></div>--%>
                                        <%--</div>--%>
                                    </div>
                                </c:forEach>
                            </c:if>

                        </div>
                        <div class="col m2"></div>
                    </div>
                </div>

                <div id="myInfo">
                    <div class="row">
                        <div class="col m2"></div>
                        <div class="col s12 m8">
                            <div class="card  blue lighten-5 black-text" style="margin-top: 5rem">
                                <div class="row">
                                    <div class="card-content">
                                        <span class="card-title black-text">信息设置</span>
                                        <p><h6>注意：</h6></p>
                                        <p>以下填写的信息将生成您的个人二维码！</p>
                                        <p>个人二维码可附在您的私人物品上，拾取者可以通过扫描二维码与您获得联系，不会泄露您的联系方式。</p>
                                        <p>点击可生成您的专属二维码，可自行下载并打印，将其粘贴于您的私有物品上。</p>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="card-action black-text">
                                        <div class="col s2"><label for="phoneNumber" class="black-text">手机号码</label></div>
                                        <div class="col s10"><input type="tel" id="phoneNumber"  name="phone"
                                                                    value="${user.phone}"></div>
                                        <div class="col s2"><label for="weChat" class="black-text">微信号</label></div>
                                        <div class="col s10"><input type="text" id="weChat"name="wx"
                                                                     value="${user.wx}"></div>
                                        <div class="col s2"><label for="qqNumber" class="black-text">QQ</label></div>
                                        <div class="col s10"><input type="text" id="qqNumber"name="qq"
                                                                    value="${user.qq}" ></div>
                                        <div class="col s2"><label for="other" class="black-text">其他方式</label></div>
                                        <div class="col s10"><input type="text" id="other" name="other"
                                                                    value="${user.other}"></div>
                                        <%--<div class="col s2"></div>--%>
                                        <%--<div class="col s10"></div>--%>
                                        <%--<div class="col s2"></div>--%>
                                        <input type="button" id="changesave" class="btn left" value="保存修改">
                                        <a href="${ctx}/m/userQR" id="QR" class="btn right" style="font-size:1rem">个性化二维码制作</a>
                                        <div class="row"></div>

                                    </div>
                                </div>

                            </div>

                                <div class="card  blue lighten-5 black-text" style="margin-top: 5rem">
                                    <div class="row">
                                    <div class="card-content blue-grey-text">
                                        <span class="card-title black-text">其他信息</span>
                                    </div>
                                    </div>
                                    <div class="row">
                                    <div class="card-action black-text">
                                        <div class="col s2"><label for="file" class="black-text">修改头像</label></div>
                                        <div class="col s10"><div class="btn">

                                            <input type="file" name="file" class="medium" id="file" onchange="uploadPic()">
                                        </div></div>
                                        <div class="col s2"><label for="username" class="black-text">用户名</label></div>
                                        <div class="col s10"><input type="text" id="username" name="username" class="medium" placeholder="请输入用户名，不少于两位" ></div>
                                        <div class="col s2"><label for="pwd" class="black-text">修改密码</label></div>
                                        <div class="col s10"><input type="password" id="pwd" name="pwd" class="medium" placeholder="请输入密码,不少于五位" ></div>
                                        <div class="col s2"><label for="pwdcheck" class="black-text">确认密码</label></div>
                                        <div class="col s10"><input type="password" id="pwdcheck" name="pwdcheck" class="medium" placeholder="请确认密码" ></div>
                                        <%--<div class="col s2"></div>--%>
                                        <%--<div class="col s10"></div>--%>
                                        <%--<div class="col s2"></div>--%>
                                        <input id="register" type="submit" class="waves-effect waves-light btn right" value="确认修改">
                                        <div class="row"></div>

                                    </div>
                                    </div>

                                </div>
                                </div>
                        </div>

                            </div>


                        </div>
                    </div>
                </div>

                <div id="myQR">
                    <div class="row">
                        <div class="col m2">
                            &nbsp;
                        </div>
                        <div class="col s12 m8">
                            <div class="card">
                                <div class="card-content blue-grey-text"><span class="card-title">您的二维码：</span></div>
                                <div class="card-image" style="margin: 3rem auto;width: 20rem;height: 20rem">
                                    <div id="qrcodeCanvas" ></div>
                                    <%--<img src="${ctx}/img/QRcode.jpg"  alt="二维码生成框"  style="margin: 3rem auto;width: 20rem;height: 20rem">--%>
                                </div>
                                <div class="card-content blue-grey-text">
                                    您可以自行下载打印自己的二维码附于您的私人物品上，也可以向平台申请制作购买您的专属二维码（专为不同物品设计）。<br><br>
                                    <a href="${ctx}/m/userQR">点此进行高级设置，个性化修改二维码样式</a>
                                </div>
                                <div class="card-action">
                                    <div class="row">
                                        <div class="col s5 offset-s1 m4 offset-m2">
                                            <a href="${ctx}/market"><font size="4">申请制作</font></a>
                                        </div>
                                        <div class="col s5 offset-s1 m4 offset-m2">
                                            <a href="#" id="xiazai"><font size="4">自行下载</font></a>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                        <div class="col m2">
                            &nbsp;
                        </div>
                    </div>
                </div>

                <%--<div id="visiter">--%>

                <%--</div>--%>
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
               data-tooltip="官网首页"><span class="mdi mdi-routes"></span></a></li>
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

        $("input[type='button']").css({"font-size":"1rem"});
        $("input[type='file']").css({"font-size":"0.3rem"});
    })
</script>

</body>
</html>
