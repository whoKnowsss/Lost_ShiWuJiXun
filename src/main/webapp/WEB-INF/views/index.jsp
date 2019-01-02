<%--
  Created by IntelliJ IDEA.
  User: 11655
  Date: 2017/3/23
  Time: 20:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="refer.jsp" %>
<!doctype html>
<html lang="zh-cn">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

    <!-- ===== Site Title===== -->
    <title>失物即寻平台</title>
    <link rel="icon" href="${ctx}/img/favicon.ico" type="image/x-icon"/>
    <link rel="shortcut icon" href="${ctx}/img/favicon.ico" type="image/x-icon"/>
    <link rel="Bookmark" href="${ctx}/img/favicon.ico">
    <!-- ===== Google Fonts ===== -->

    <link rel="stylesheet"
          href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:400,700,400italic|Raleway:500,600,700">


    <!-- ===== Bootstrap ===== -->
    <link rel="stylesheet" href="${ctx}/style/index/css/bootstrap.min.css">

    <!-- ===== Font Icons ===== -->
    <link rel="stylesheet" href="${ctx}/style/index/assets/font-awesome/css/font-awesome.min.css">

    <!-- ===== Corousel and Lightbox ===== -->
    <link rel="stylesheet" href="${ctx}/style/index/css/owl.theme.css">
    <link rel="stylesheet" href="${ctx}/style/index/css/owl.carousel.css">
    <link rel="stylesheet" href="${ctx}/style/index/css/nivo-lightbox.css">
    <link rel="stylesheet" href="${ctx}/style/index/css/themes/default/default.css">

    <!-- ===== Colors ===== -->
    <link rel="stylesheet" href="${ctx}/style/index/css/colors/color.css">


    <!-- ===== Preloader ===== -->
    <link rel="stylesheet" href="${ctx}/style/index/css/preloader.css">

    <!-- ===== style.css ===== -->
    <link rel="stylesheet" href="${ctx}/style/index/css/style.css">

    <!-- ===== Responsive CSS ===== -->
    <link rel="stylesheet" href="${ctx}/style/index/css/responsive.css">

    <!--[===== if lt IE 9]>
                <script src="js/html5shiv.js"></script>
                <script src="js/respond.min.js"></script>
    <![endif]===== -->

    <style>
        .navbar-header a img{
            height: 40px;
        }
    </style>

</head>

<body>
<!-- ===== preloader ===== -->
<div class="preloaders">
    <div class="preloaders-gif">&nbsp;</div>
</div>


<!-- ===== Header ===== -->
<header id="home">

    <!-- ===== Over color Image ===== -->
    <div class="background-overlay">

        <div class="container-header">

            <!-- ===== Sticky Navigation ===== -->
            <div class="navbar navbar-inverse bs-docs-nav navbar-fixed-top sticky-navigation bgc-two">
                <div class="container">
                    <div class="navbar-header">

                        <!-- ===== Logo on Sticky Navigation Bar ===== -->
                        <button type="button" class="navbar-toggle" data-toggle="collapse"
                                data-target="#onepage-navigation">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand" href="#"><img src="${ctx}/img/logo.png" style="height: 2.5rem;!important;"></a>
                        <%--<img src="${ctx}/img/logo.png" >--%>
                    </div>

                    <!-- ===== Navigation Menu ===== -->
                    <div class="navbar-collapse collapse" id="onepage-navigation">
                        <ul class="nav navbar-nav navbar-right main-navigation">
                            <li><a href="#section-portfolio">介绍</a></li>
                            <li><a href="${ctx}/userIndex">失物招领</a></li>
                            <li><a href="#section-testimonial">成员</a></li>
                            <li><a href="#section-contact">联系我们</a></li>
                            <li>
                                <c:if test="${user eq null}">
                                    <a href="${ctx}/userLogin">登录|注册</a>
                                </c:if>
                                <c:if test="${user ne null}">
                                    <a href="${ctx}/logout">退出登录</a>
                                </c:if>
                            </li>
                        </ul>
                    </div>

                </div>

            </div>

            <!-- ===== End Sticky Navigation ===== -->

        </div>

        <!-- ===== Welcome ===== -->
        <div class="container">

            <div class="row">

                <div class="col-md-10 col-md-offset-1 distance-header">

                    <h1>
                        <strong>失物即寻</strong>
                    </h1>
                    <div class="underline"></div>
                    <h1>
                        还在为经常丢东西而烦恼吗？<br>失物即寻平台来了！
                    </h1>


                    <!-- ===== Call To Action Button ===== -->
                    <div id="call_to_action-5" class="distance-button">

                        <a href="#section-portfolio" class="btn standard-button">()</a>

                    </div>

                </div>

            </div>

        </div>
        <!-- ===== End Welcome ===== -->

    </div>

</header>


<!-- ===== Section Portfolio ===== -->
<section id="section-portfolio" class="section-portfolio bgc-one">
    <div class="container">

        <h2>介绍</h2>
        <div class="underline">
        </div>

        <div class="sub-sub">
            <p>生活中总是有这样那样的小事，影响着我们的好心情</p>
            <p>一卡通、钥匙、雨伞等等东西，总是在不经意间离我们而去</p>
            <p>我们懊恼焦躁，却又无可奈何</p>
            <p>但是现在，机会来了</p>
            <p>欢迎使用本平台，给自己一个选择，给我们一个机会</p>
        </div>


        <!-- ===== Portfolio ===== -->
        <div class="row portfolio">

            <div id="portfolio" class="owl-carousel owl-theme">

                <div class="portfolio-images">
                    <a href="${ctx}/img/4.jpg" data-lightbox-gallery="portfolio-gallery"><img
                            src="${ctx}/img/4.jpg" alt="Feature" class="img-responsive"></a>
                </div>

                <div class="portfolio-images">
                    <a href="${ctx}/img/bk7.jpg"
                       data-lightbox-gallery="portfolio-gallery"><img
                            src="${ctx}/img/bk7.jpg" alt="portfolio"></a>
                </div>

                <%--<div class="portfolio-images">--%>
                <%--<a href="${ctx}/img/bk8.jpg" data-lightbox-gallery="portfolio-gallery"><img--%>
                <%--src="${ctx}/img/bk8.jpg" alt="portfolio"></a>--%>
                <%--</div>--%>

                <div class="portfolio-images">
                    <a href="${ctx}/img/bk.jpg"
                       data-lightbox-gallery="portfolio-gallery"><img
                            src="${ctx}/img/bk.jpg" alt="portfolio"></a>
                </div>
            </div>

        </div> <!-- ===== End Portfolio ===== -->

    </div>

</section>


<!-- ===== Testimonial Section ===== -->
<section id="section-testimonial" class="bgc-two">

    <div class="bg-color bg-testimonial">
        <div class="section-testimonial section-padding">
            <div class="testimonial-slide">
                <div id="carousel-testimonial" class="carousel slide" data-ride="carousel">
                    <ol class="carousel-indicators">
                        <li data-target="#carousel-testimonial" data-slide-to="0" class="active"></li>
                        <li data-target="#carousel-testimonial" data-slide-to="1" class=""></li>
                        <li data-target="#carousel-testimonial" data-slide-to="2" class=""></li>
                    </ol>
                    <div class="carousel-inner">

                        <div class="item">
                            <div class="image">
                                <img src="${ctx}/img/dss.jpg" alt=""
                                     style="width: 6.5em;height: 6.5em;border-radius: 50%">
                            </div>
                            <div class="content">
                                <p>我希望我所做的能为那些丢了东西的人尽份微薄之力。</p>
                                <h4><span style="color: orange">XXX</span></h4>
                                <h5><span style="color: orange">网站开发</span></h5>
                            </div>
                        </div>

                        <div class="item active left">
                            <div class="image">
                                <img src="${ctx}/img/lmz.jpg" alt=""
                                     style="width: 6.5em;height: 6.5em;border-radius: 50%">
                            </div>
                            <div class="content">
                                <p>你还在等什么呢？快加入我们吧！</p>
                                <h4><span style="color: orange">XXX</span></h4>
                                <h5><span style="color: orange">策划</span></h5>
                            </div>
                        </div>

                        <div class="item next left">
                            <div class="image">
                                <img src="${ctx}/img/zy.jpg" alt=""
                                     style="width: 6.5em;height: 6.5em;border-radius: 50%">
                            </div>
                            <div class="content">
                                <p>还在为丢东西困扰吗？别怕，有我们在</p>
                                <h4><span style="color: orange">XXX</span></h4>
                                <h5><span style="color: orange">分析</span></h5>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>

</section>
<!-- ===== End Testimonial Section ===== -->

<!-- ===== Contact Us ===== -->
<section id="section-contact" class="section-contact bgc-one">
    <div class="container">

        <div class="row">
            <div class="col-md-8 col-md-offset-2">

                <h2>联系我们</h2>
                <div class="underline"></div>
                <div class="sub-sub">
                    如果我们有哪里做得不够好的地方，欢迎大家进行反馈！
                </div>

                <!-- ===== Form ===== -->
                <form class="contact-form" id="contact" role="form" onsubmit="return check()">

                    <!-- ===== Succes Send Email ===== -->
                    <h6 class="success">
                        <span class="olored-text icon_check"></span> Your message successfully. </h6>

                    <!-- ===== Error Send Email ===== -->
                    <h6 class="error">
                        <span class="colored-text icon_error-circle_alt"></span> your message sent pending. </h6>

                    <div class="field-wrapper col-md-6">
                        <input class="form-control input-box" id="contact-form-name" type="text"
                               name="contact-form-name" placeholder="姓名/昵称" required>
                    </div>

                    <div class="field-wrapper col-md-6">
                        <input class="form-control input-box" id="contact-form-email" type="email"
                               name="contact-form-email" placeholder="邮箱" required>
                    </div>

                    <div class="field-wrapper col-md-12">
                        <input class="form-control input-box" id="contact-form-subject" type="text"
                               name="contact-form-subject" placeholder="主题" required>
                    </div>

                    <div class="field-wrapper col-md-12">
                        <textarea class="form-control textarea-box" id="contact-form-message" rows="7"
                                  maxlength="200"
                                  name="contact-form-message" placeholder="信息,限200字" required></textarea>
                        <span>还可以输入<b id="maxtext">200</b>个字，不支持恶意html语法</span>
                        <hr>
                    </div>

                    <button class="btn standard-button" type="submit" id="contact-form-submit" name="submit"
                            data-style="expand-left">反馈
                    </button>
                </form>
                <!-- ===== End Form ===== -->

            </div>
        </div>

    </div>

</section>


<!-- ===== Footer ===== -->
<footer class="bgc-two">
    <div class="container">
        <div class="copyright">
            ©2017 All Right Reserved 电商小分队
        </div>
    </div>
</footer>


<!-- ===== Script Javascript ===== -->
<script src="${ctx}/style/index/js/jquery.min.js"></script>
<script src="${ctx}/style/index/js/preloader.js"></script>
<script src="${ctx}/style/index/js/bootstrap.min.js"></script>
<%--<script src="${ctx}/style/index/js/retina.js"></script>--%>
<script src="${ctx}/style/index/js/SmoothScroll.js"></script>
<script src="${ctx}/style/index/js/jquery.scrollTo.min.js"></script>
<script src="${ctx}/style/index/js/jquery.localScroll.min.js"></script>
<script src="${ctx}/style/index/js/owl.carousel.min.js"></script>
<script src="${ctx}/style/index/js/nivo-lightbox.min.js"></script>
<%--<script src=${ctx}/style/index/js/simple-expand.min.js"></script>--%>
<script src="${ctx}/style/index/js/jquery.nav.js"></script>
<script src="${ctx}/style/index/js/jquery.fitvids.js"></script>
<%--<script src="${ctx}/style/index/js/jquery.ajaxchimp.min.js"></script>--%>
<script src="${ctx}/style/index/js/custom.js"></script>
<script>
    $(function () {
        $('textarea').each(function () {
            var ta = $(this), p = ta.parent(), ml = parseInt(ta.attr('maxlength')),
                v = ta.val(), h = ta.attr('placeholder');
            if (v == h) v = '';
            if (h && ml) {
//var sp = '<span style="bottom: 10px;position: absolute;right: -10px;">'+v.length+'/'+ml+'</span>';
                p.css({'position': 'relative'});
//ta.before(sp);
                ta.bind('click keyup', function () {
                    var m = $(this), v1 = m.val();
                    if (v1.length > ml) {
                        m.val(v1.substring(0, ml))
                    }
//m.prev().text(m.val().length + '/' + ml);
                    $("#maxtext").text(ml - m.val().length);
                });
            }
        });
    })

    function check() {
        $.ajax({
            type: "post",
            url: '${ctx}/feed/addfeedback',
            data: {
                name: $("#contact-form-name").val().trim(),
                email: $("#contact-form-email").val().trim(),
                content: $("#contact-form-message").val().trim(),
                subject: $("#contact-form-subject").val().trim()
            },
            dataType: "json",
            success: function (date) {
                if (date.result == "success") {
                    alert("感谢您的反馈！祝您生活愉快！");
                    location.href = "${ctx}/";
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