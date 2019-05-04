<%@ page import="com.lelar.User" %>
<%@ taglib prefix="c" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" %>

<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta login="viewport" content="width=device-width, initial-scale=1">

    <link rel="icon" href="/resources/img/fav-icon.png" type="image/x-icon"/>
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Variant Store</title>

    <!-- Icon css link -->
    <link href="/resources/css/font-awesome.min.css" rel="stylesheet">
    <link rel="stylesheet" href="/resources/vendors/themify-icon/themify-icons.css">
    <!-- Bootstrap -->
    <link href="/resources/css/bootstrap.min.css" rel="stylesheet">
    <!-- Rev slider css -->
    <link href="/resources/vendors/revolution/css/settings.css" rel="stylesheet">
    <link href="/resources/vendors/revolution/css/layers.css" rel="stylesheet">
    <link href="/resources/vendors/revolution/css/navigation.css" rel="stylesheet">
    <link href="/resources/vendors/animate-css/animate.css" rel="stylesheet">

    <!-- Extra plugin css -->
    <link href="/resources/vendors/magnify-popup/magnific-popup.css" rel="stylesheet">
    <link href="/resources/vendors/bootstrap-selector/bootstrap-select.css" rel="stylesheet">
    <link rel="stylesheet" href="/resources/vendors/owl-carousel/owl.carousel.min.css">
    <link rel="stylesheet" href="/resources/vendors/flexslider/flexslider.css">
    <link rel="stylesheet" href="/resources/vendors/bootstrap-datepicker/css/bootstrap-datetimepicker.min.css">
    <link rel="stylesheet" href="/resources/vendors/scroll/jquery.mCustomScrollbar.css">
    <link rel="stylesheet" href="/resources/vendors/lightbox/simpleLightbox.css">

    <link href="/resources/css/style.css" rel="stylesheet">
    <link rel="stylesheet" href="/resources/css/responsive.css">
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>

    <![endif]-->
</head>
<body>
<!-- pre-loader-->
<div id="pre-loader">
    <div id="preload_inner">
        <div class="spinner">
            <div class="double-bounce1"></div>
            <div class="double-bounce2"></div>
        </div>
    </div>
</div>
<!-- pre-loader-->


<!--================Header Logo Area =================-->
<header class="shop_header_area">
    <div class="shop_top_header">
        <div class="container">
            <div class="pull-left">
                <a href="#"><i class="fa fa-phone"></i>+7(953)522-02-22</a>
                <a href="#"><i class="fa fa-envelope-o"></i>lelarkrylov@gmail.com</a>
            </div>
            <div class="pull-right">
                <%--<div class="shop_sing_item">--%>
                <%--<a href="#"><img src="/resources/img/icon/car-icon.png" alt="">Track Your Order </a>--%>
                <%--</div>--%>

                <div class="shop_sing_item">
                    <select class="selectpicker">
                        <option>$ Dollar (US)</option>
                        <option>₽ Rubles (RUB)</option>
                        <option>€ Euro (EUR)</option>
                    </select>
                </div>

                <div class="shop_sing_item">
                    <%--                    <%=request.getParameter("login")%>--%>
                    <%
                        String user = new User().getLogin();
                        if (user == null) {
                    %>
                    <a href="/registration/validate"><img src="/resources/img/icon/user-icon.png" alt="">Register</a>
                    <span>or</span>
                    <a href="/authorization/validate">Sign in</a>
                    <%
                    } else {
                    %>
                    <%=user%>
                    <a href="/authorization/exit">exit</a>
                    <%}%>
                    <%--                    (${user.login})--%>
                </div>

            </div>
        </div>
    </div>
    <div class="shop_middle_logo_area">
        <div class="container">
            <div class="shop_middle_inner">
                <div class="shop_logo">
                    <a href="#"><img src="/resources/img/clients-logo/shop-logo/shop-logo-6.png" alt=""></a>
                </div>
                <div class="shop_search">
                    <div class="input-group">
                        <%--<input type="text" class="form-control" placeholder="Search for products">--%>
                        <%--<select class="selectpicker">--%>
                        <%--<option>All Categories</option>--%>
                        <%--<option>All Categories</option>--%>
                        <%--<option>All Categories</option>--%>
                        <%--</select>--%>
                        <span class="input-group-btn button_submit">
                                    <a href="/search/validate"><button class="btn btn-default" type="button"><i
                                            class="fa fa-search"></i></button></a>
                        </span>
                    </div>
                </div>
                <div class="shop_cart">
                    <div class="shop_cart_inner">
                        <%--<a href="#"><i class="fa fa-heart-o"></i></a>--%>
                        <a href="/move/basket"><img src="/resources/img/icon/s-bag-icon.png" alt=""></a>
                        <%--<a href="#">$ 3 215.99</a>--%>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="shop_menu_area">
        <div class="container">
            <nav class="navbar navbar-default">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                            data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>

                    <a class="navbar-brand" href="#">

                        <img src="/resources/img/clients-logo/shop-logo/shop-logo-6.png"
                             alt="">
                    </a>

                </div>

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav">
                        <li class="hot mega_menu dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
                               aria-haspopup="true" aria-expanded="false">GoodDeals</a>
                            <div class="mega_menu_inner dropdown-menu">
                                <div class="mega_item">
                                    <h4>MEN’S FASHION</h4>
                                    <ul>
                                        <li><a href="/move/armchair">Armchairs</a></li>
                                        <li><a href="/move/table">Tables</a></li>
                                        <li><a href="/move/bar">Bar furniture</a></li>
                                        <li><a href="/move/couches">Сouches</a></li>
                                        <li><a href="/move/fridge">Fridges</a></li>
                                    </ul>
                                </div>
                                <div class="mega_item">
                                    <h4>WOMEN FASHION</h4>
                                    <ul>
                                        <li><a href="/move/mirror">Mirrors</a></li>
                                        <li><a href="/move/bed">The beds</a></li>
                                        <li><a href="/move/sofa">Sofas</a></li>
                                        <li><a href="/move/oven">Ovens</a></li>
                                        <li><a href="/move/dress">
                                            Dressing tables</a></li>
                                    </ul>
                                </div>
                                <div class="mega_item">
                                    <h4>ACCESSORIES</h4>
                                    <ul>
                                        <li><a href="/move/clock">Clocks</a></li>
                                        <li><a href="/move/curtain">Curtains</a></li>
                                        <li><a href="/move/pouf">Poufs</a></li>
                                        <li><a href="/move/painting">Paintings</a></li>
                                        <li><a href="/move/box">Boxes</a></li>
                                    </ul>
                                </div>
                                <div class="mega_item">
                                    <h4>OTHER</h4>
                                    <ul>
                                        <li><a href="/move/garden">Garden furniture</a></li>
                                        <li><a href="/move/tv">Furniture for TV</a></li>
                                        <li><a href="/move/sink">Sinks</a></li>
                                        <li><a href="/move/glove">Glove</a></li>
                                    </ul>
                                </div>
                                <div class="mega_item">
                                    <img height="214" width="292" src="/resources/img/lava_lamp.jpg" alt="">
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
            </nav>
        </div>
    </div>
</header>
<!--================End Shop Header Area =================-->

<!--================Shop Slider Area =================-->
<section class="shop_slider_area">
    <div class="shop_slider_inner">
        <div id="shop_slider" class="rev_slider" data-version="5.3.1.6">
            <ul>
                <li data-index="rs-3045" data-transition="zoomout" data-slotamount="default" data-hideafterloop="0"
                    data-hideslideonmobile="off" data-easein="Power4.easeInOut" data-easeout="Power4.easeInOut"
                    data-masterspeed="2000" data-thumb="https://lareto.ru/upload/iblock/955/pufik-amato.jpg"
                    data-rotate="0"
                    data-fstransition="fade" data-fsmasterspeed="1500" data-description="">
                    <!-- MAIN IMAGE -->
                    <img height="585" width="1129" src="https://lareto.ru/upload/iblock/955/pufik-amato.jpg" alt=""
                         data-bgposition="center 0"
                         data-bgfit="cover"
                         data-bgrepeat="no-repeat" data-bgparallax="10" class="rev-slidebg" data-no-retina>

                    <!-- LAYER NR. 1 -->
                    <div class="slider_text_box">
                        <div class="tp-caption s_bg_text"
                             data-x="['left','left','left','left','left','center']"
                             data-y="['top']"
                             data-voffset="['280','280','280','240','220','200']"
                             data-hoffset="['550','550','550','40','0','0']"
                             data-fontsize="['48','48','48','48','28']"
                             data-lineheight="['65','65','65','65','40']"
                             data-height="none"
                             data-width="['none','none','none','none','none','320']"
                             data-whitespace="['nowrap','nowrap','nowrap','nowrap','nowrap','normal',]"
                             data-transform_idle="o:1;"
                             data-transform_hover="o:1;rX:0;rY:0;rZ:0;z:0;s:300;e:Power1.easeInOut;"
                             data-style_hover="c:rgba(255, 255, 255, 1.00);bc:rgba(255, 255, 255, 1.00);"
                             data-transform_in="x:50px;opacity:0;s:1500;e:Power4.easeInOut;"
                             data-transform_out="y:50px;s:1000;e:Power2.easeInOut;s:1000;e:Power2.easeInOut;"
                             data-mask_out="x:inherit;y:inherit;"
                             data-start="900"
                             data-splitin="on"
                             data-splitout="none"
                             data-textAlign="['left','left','left','left']"
                             data-responsive_offset="on">hello buyers! i am a
                        </div>
                        <div class="tp-caption s_big_text"
                             data-x="['left','left','left','left','left','center']"
                             data-y="['top']"
                             data-voffset="['320','320','320','280','260','290']"
                             data-hoffset="['550','550','550','40','0']"
                             data-fontsize="['40','40','40','40','30','30']"
                             data-lineheight="['50','50','50','40','40']"
                             data-height="none"
                             data-width="['none','none','none','none','320']"
                             data-whitespace="['nowrap','nowrap','nowrap','nowrap','nowrap','normal',]"
                             data-transform_idle="o:1;"
                             data-transform_in="x:[105%];z:0;rX:0deg;rY:0deg;rZ:0deg;sX:1;sY:1;skX:0;skY:0;s:2000;e:Power2.easeInOut;"
                             data-transform_out="y:[100%];s:1000;e:Power2.easeInOut;s:1000;e:Power2.easeInOut;"
                             data-mask_in="x:50px;y:0px;s:inherit;e:inherit;"
                             data-mask_out="x:inherit;y:inherit;s:inherit;e:inherit;"
                             data-start="500"
                             data-splitout="none"
                             data-responsive_offset="on"
                             data-elementdelay="0.05">Clearance Sales <br class="shop_br"/> up to 70% Off. All Sales are
                            Final!
                        </div>
                        <div class="tp-caption shop_btn"
                             data-x="['left','left','left','left','left','center']"
                             data-y="['top']"
                             data-voffset="['440','440','440','400','370','420']"
                             data-hoffset="['550','550','550','40','0']"
                             data-fontsize="['11','11','11','11','11']"
                             data-height="none"
                             data-width="['none','none','none','none','none','320']"
                             data-whitespace="['nowrap','nowrap','nowrap','nowrap','nowrap','normal',]"
                             data-transform_idle="o:1;"
                             data-transform_hover="o:1;rX:0;rY:0;rZ:0;z:0;s:300;e:Power1.easeInOut;"
                             data-style_hover="c:rgba(255, 255, 255, 1.00);bc:rgba(255, 255, 255, 1.00);"
                             data-transform_in="y:50px;opacity:0;s:1500;e:Power4.easeInOut;"
                             data-transform_out="y:50px;s:1000;e:Power2.easeInOut;s:1000;e:Power2.easeInOut;"
                             data-mask_out="x:inherit;y:inherit;"
                             data-start="1500"
                             data-splitin="on"
                             data-textAlign="['left','left','left','left']"
                             data-splitout="none"
                             data-responsive_offset="on">
                            <a href="/move/pouf" class="shop_now_btn">Shop Now</a>
                        </div>
                    </div>
                </li>
                <li data-index="rs-3046" data-transition="slotzoom-horizontal" data-slotamount="10"
                    data-thumb="http://pngimg.com/uploads/bed/bed_PNG17422.png">
                    <!--                         MAIN IMAGE -->
                    <img width="1600" height="786"
                         src="http://pngimg.com/uploads/bed/bed_PNG17422.png"
                         data-bgparallax="10" alt=""
                         data-bgposition="center center"
                         data-bgfit="cover" data-bgrepeat="no-repeat" class="rev-slidebg">
                    <div class="slider_text_box">
                        <div class="tp-caption s_bg_text"
                             data-x="['left']"
                             data-y="['top']"
                             data-voffset="['280','280','280','280','280','280']"
                             data-hoffset="['550','550','550','550','0']"
                             data-fontsize="['48','48','48']"
                             data-lineheight="['65','65','65']"
                             data-width="['none']"
                             data-height="none"
                             data-whitespace="nowrap"
                             data-transform_idle="o:1;"
                             data-transform_hover="o:1;rX:0;rY:0;rZ:0;z:0;s:300;e:Power1.easeInOut;"
                             data-style_hover="c:rgba(255, 255, 255, 1.00);bc:rgba(255, 255, 255, 1.00);"
                             data-transform_in="x:50px;opacity:0;s:1500;e:Power4.easeInOut;"
                             data-transform_out="y:50px;s:1000;e:Power2.easeInOut;s:1000;e:Power2.easeInOut;"
                             data-mask_out="x:inherit;y:inherit;"
                             data-start="900"
                             data-splitin="on"
                             data-splitout="none"
                             data-textAlign="['left','left','left','left']"
                             data-responsive_offset="on">hello buyers! i am a
                        </div>
                        <div class="tp-caption s_big_text"
                             data-x="['left']"
                             data-y="['top']"
                             data-voffset="['320','320','320','320','320']"
                             data-hoffset="['550','550','550','550','0']"
                             data-fontsize="['40','40','40','40','40','40']"
                             data-lineheight="['50','50','50','50','50']"
                             data-width="none"
                             data-height="none"
                             data-whitespace="nowrap"
                             data-transform_idle="o:1;"
                             data-transform_in="x:[105%];z:0;rX:0deg;rY:0deg;rZ:0deg;sX:1;sY:1;skX:0;skY:0;s:2000;e:Power2.easeInOut;"
                             data-transform_out="y:[100%];s:1000;e:Power2.easeInOut;s:1000;e:Power2.easeInOut;"
                             data-mask_in="x:50px;y:0px;s:inherit;e:inherit;"
                             data-mask_out="x:inherit;y:inherit;s:inherit;e:inherit;"
                             data-start="500"
                             data-splitout="none"
                             data-responsive_offset="on"
                             data-elementdelay="0.05">Clearance Sales <br/> up to 70% Off. All Sales are Final!
                        </div>
                        <div class="tp-caption shop_btn"
                             data-x="['left']"
                             data-y="['top']"
                             data-voffset="['440','440','440','440','440']"
                             data-hoffset="['550','550','550','550','550']"
                             data-width="none"
                             data-fontsize="['11','11','11','11','11']"
                             data-height="none"
                             data-whitespace="nowrap"
                             data-transform_idle="o:1;"
                             data-transform_hover="o:1;rX:0;rY:0;rZ:0;z:0;s:300;e:Power1.easeInOut;"
                             data-style_hover="c:rgba(255, 255, 255, 1.00);bc:rgba(255, 255, 255, 1.00);"
                             data-transform_in="y:50px;opacity:0;s:1500;e:Power4.easeInOut;"
                             data-transform_out="y:50px;s:1000;e:Power2.easeInOut;s:1000;e:Power2.easeInOut;"
                             data-mask_out="x:inherit;y:inherit;"
                             data-start="1500"
                             data-splitin="on"
                             data-textAlign="['left','left','left','left']"
                             data-splitout="none"
                             data-responsive_offset="on">
                            <a href="/move/bed" class="shop_now_btn">Shop Now</a>
                        </div>
                    </div>
                </li>
            </ul>
        </div>
    </div>
</section>
<!--================End Shop Slider Area =================-->

<!--================Promotion Area =================-->
<section class="promotion_area">
    <div class="container">
        <div class="row promotion_inner">
            <div class="col-sm-5">
                <div class="promotion_item">
                    <img height="620" width="470" src="http://pngimg.com/uploads/clock/clock_PNG6608.png" alt="">
                    <div class="promotion_text">
                        <h4>THE NEW COLLECTIONS</h4>
                        <h3>TOP FASHION</h3>
                    </div>
                </div>
            </div>
            <div class="col-sm-7">
                <div class="promotion_item">
                    <img height="310" width="670"
                         src="https://e-matras.ua/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/t/a/tablo_tv2.jpg"
                         alt="">
                    <div class="promotion_text">
                        <h4>THE NEW COLLECTIONS</h4>
                        <h3>TOP FASHION</h3>
                    </div>
                </div>
                <div class="promotion_item">
                    <img height="310" width="670"
                         src="http://lastmag.ru/wp-content/uploads/2016/01/couch-the-simpsons.jpg" alt="">
                    <div class="promotion_text">
                        <h4>THE NEW COLLECTIONS</h4>
                        <h3>TOP FASHION</h3>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!--================End Promotion Area =================-->


<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="/resources/js/jquery-2.2.4.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="/resources/js/bootstrap.min.js"></script>
<!-- Rev slider js -->
<script src="/resources/vendors/revolution/js/jquery.themepunch.tools.min.js"></script>
<script src="/resources/vendors/revolution/js/jquery.themepunch.revolution.min.js"></script>
<script src="/resources/vendors/revolution/js/extensions/revolution.extension.carousel.min.js"></script>
<script src="/resources/vendors/revolution/js/extensions/revolution.extension.actions.min.js"></script>
<script src="/resources/vendors/revolution/js/extensions/revolution.extension.kenburn.min.js"></script>
<script src="/resources/vendors/revolution/js/extensions/revolution.extension.migration.min.js"></script>
<script src="/resources/vendors/revolution/js/extensions/revolution.extension.video.min.js"></script>
<script src="/resources/vendors/revolution/js/extensions/revolution.extension.slideanims.min.js"></script>
<script src="/resources/vendors/revolution/js/extensions/revolution.extension.layeranimation.min.js"></script>
<script src="/resources/vendors/revolution/js/extensions/revolution.extension.navigation.min.js"></script>

<script src="/resources/vendors/magnify-popup/jquery.magnific-popup.min.js"></script>
<script src="/resources/vendors/isotope/imagesloaded.pkgd.min.js"></script>
<script src="/resources/vendors/isotope/isotope.pkgd.min.js"></script>
<script src="/resources/vendors/bootstrap-datepicker/js/moment.js"></script>
<script src="/resources/vendors/bootstrap-datepicker/js/bootstrap-datetimepicker.min.js"></script>
<script src="/resources/vendors/bootstrap-selector/bootstrap-select.js"></script>
<script src="/resources/vendors/jquery-ui/jquery-ui.js"></script>

<!-- counter js-->
<script type="text/javascript" src="/resources/vendors/counterup/jquery.counterup.min.js"></script>
<script type="text/javascript" src="/resources/vendors/counterup/waypoints.min.js"></script>
<script type="text/javascript" src="/resources/vendors/counterup/countto.js"></script>
<script type="text/javascript" src="/resources/vendors/counterup/apear.js"></script>
<script type="text/javascript" src="/resources/vendors/lightbox/simpleLightbox.min.js"></script>
<script type="text/javascript" src="/resources/vendors/scroll/jquery.nicescroll.min.js"></script>
<script type="text/javascript" src="/resources/vendors/scroll/jquery.mCustomScrollbar.concat.min.js"></script>
<!-- owl carousel js-->
<script type="text/javascript" src="/resources/vendors/owl-carousel/owl.carousel.min.js"></script>
<script type="text/javascript" src="/resources/vendors/flexslider/jquery.flexslider.js"></script>

<script src="/resources/js/theme.js"></script>
</body>
</html>