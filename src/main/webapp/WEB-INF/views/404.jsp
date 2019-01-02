<%--
  Created by IntelliJ IDEA.
  User: 11655
  Date: 2017/4/1
  Time: 11:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="refer.jsp" %>
<html>
<head>
    <link rel="stylesheet" href="${ctx}/style/404/css/main.css" type="text/css" media="screen, projection"/>
    <!-- main stylesheet -->
    <link rel="stylesheet" type="text/css" media="all" href="${ctx}/style/404/css/tipsy.css"/>
    <!-- Tipsy implementation -->

    <!--[if lt IE 9]>
    <!--<link rel="stylesheet" type="text/css" href="${ctx}/style/404/css/ie8.css"/>-->
    <![endif]-->

    <link rel="icon" href="${ctx}/img/favicon.ico" type="image/x-icon"/>
    <link rel="shortcut icon" href="${ctx}/img/favicon.ico" type="image/x-icon"/>
    <link rel="Bookmark" href="${ctx}/img/favicon.ico">
    <script type="text/javascript" src="${ctx}/js/jquery-1.8.3.min.js"></script> <!-- uiToTop implementation -->
    <script type="text/javascript" src="${ctx}/style/404/scripts/custom-scripts.js"></script>
    <script type="text/javascript" src="${ctx}/style/404/scripts/jquery.tipsy.js"></script> <!-- Tipsy -->

    <script type="text/javascript">

        $(document).ready(function () {

            universalPreloader();

        });

        $(window).load(function () {

            //remove Universal Preloader
            universalPreloaderRemove();

            rotate();
            dogRun();
            dogTalk();

            //Tipsy implementation
            $('.with-tooltip').tipsy({gravity: $.fn.tipsy.autoNS});

        });

    </script>


    <title>404 - Not found</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
</head>

<body>

<!-- Universal preloader -->
<div id="universal-preloader">
    <div class="preloader">
        <img src="${ctx}/style/404/images/universal-preloader.gif" alt="universal-preloader"
             class="universal-preloader-preloader"/>
    </div>
</div>
<!-- Universal preloader -->

<div id="wrapper">
    <!-- 404 graphic -->
    <div class="graphic"></div>
    <!-- 404 graphic -->
    <!-- Not found text -->
    <div class="not-found-text">
        <h1 class="not-found-text">File not found, sorry!</h1>
    </div>
    <!-- Not found text -->

    <!-- search form -->
    <%--<div class="search">--%>
    <%--<form name="search" method="get" action="#"/>--%>
    <%--<input type="text" name="search" value="Search ..."/>--%>
    <%--<input class="with-tooltip" title="Search!" type="submit" name="submit" value=""/>--%>
    <%--</form>--%>
    <%--</div>--%>
    <!-- search form -->

    <!-- top menu -->
    <div class="top-menu">
        <a href="${ctx}/" class="with-tooltip" title="Return to the home page">官网</a> |
        <a href="${ctx}/#section-contact" class="with-tooltip" title="Contact us!">联系我们</a> | <a href="${ctx}/userLogin"
                                                                                                 class="with-tooltip"
                                                                                                 title="登录/注册">登录/注册</a>
    </div>
    <!-- top menu -->

    <div class="dog-wrapper">
        <!-- dog running -->
        <div class="dog"></div>
        <!-- dog running -->

        <!-- dog bubble talking -->
        <div class="dog-bubble">

        </div>

        <!-- The dog bubble rotates these -->
        <div class="bubble-options">
            <p class="dog-bubble">
                你走丢了吗？不怕不怕，我可是优秀的导航犬！
            </p>
            <p class="dog-bubble">
                <br/>
                汪！汪！！
            </p>
            <p class="dog-bubble">
                <br/>
                别急别急，我还在路上呢！
            </p>
            <p class="dog-bubble">
                我想我需要个cookie<br/><img style="margin-top:8px" src="${ctx}/style/404/images/cookie.png"
                                      alt="cookie"/>
            </p>
            <p class="dog-bubble">
                <br/>
                不得不说，这的确令人烦恼！
            </p>
            <p class="dog-bubble">
                <br/>
                我要被关掉了吗？
            </p>
            <p class="dog-bubble">
                Nah...我想，我可能在绕圈圈..
            </p>
            <p class="dog-bubble">
                <br/>
                好吧，我想我现在的确是走丢了。。。
            </p>
            <p class="dog-bubble">
                哇，我想我看到了 <br/><img style="margin-top:8px" src="${ctx}/style/404/images/cat.png"
                                   alt="cat"/>
            </p>
            <p class="dog-bubble">
                额，话说，我们到底要找什么？ @_@
            </p>n
        </div>
        <!-- The dog bubble rotates these -->
        <!-- dog bubble talking -->
    </div>

    <!-- planet at the bottom -->
    <div class="planet"></div>
    <!-- planet at the bottom -->
</div>


</body>
</html>