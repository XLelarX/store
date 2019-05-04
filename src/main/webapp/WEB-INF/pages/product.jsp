<%@ taglib prefix="spring" uri="http://www.springframework.org/tags/form" %>
<%@ page import="com.lelar.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="icon" href="/resources/img/fav-icon.png" type="image/x-icon"/>
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Product</title>

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
    <link rel="stylesheet" href="/resources/vendors/jquery-ui/jquery-ui.css">
    <link rel="stylesheet" href="/resources/vendors/dzsparallaxer/dzsparallaxer.css">
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
                    <%}%>
                    <%--                    (${product.user.login})--%>
                </div>

            </div>
        </div>
    </div>
    <div class="shop_middle_logo_area">
        <div class="container">
            <div class="shop_middle_inner">
                <div class="shop_logo">
                    <a href="/"><img src="/resources/img/clients-logo/shop-logo/shop-logo-6.png" alt=""></a>
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
                    <script>
                        document.write("<a class=\"navbar-brand\" href=\"#\">\n" +
                            "\n" +
                            "                        <img src=\"/resources/img/clients-logo/shop-logo/shop-logo-6.png\"\n" +
                            "                             alt=\"\">\n" +
                            "                    </a>");
                    </script>


                    <%--<a class="navbar-brand" href="#">--%>

                    <%--<img src="/resources/img/clients-logo/shop-logo/shop-logo-6.png"--%>
                    <%--alt="">--%>
                    <%--</a>--%>

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
                        <%--<li><a href="#">Featured Product</a></li>--%>
                        <%--<li><a href="#">Trending Product</a></li>--%>
                        <%--<li><a href="#">Gift Cards</a></li>--%>
                        <%--<li><a href="#">Blog</a></li>--%>
                    </ul>
                    <%--<ul class="nav navbar-nav navbar-right">--%>
                    <%--<li><a href="#">Laptina Free Shipping on Orders $40+</a></li>--%>
                    <%--</ul>--%>
                </div>
            </nav>
        </div>
    </div>
</header>
<!--================End Shop Header Area =================-->
<!--================Banner Area =================-->
<%--<section class="shop_banner_area dzsparallaxer auto-init" data-options='{direction: "reverse"}' style="height: 555px;">--%>
<%--<div class="divimage dzsparallaxer--target " style="width: 100%; height: 150%; background: url(/resources/img/shop-banner-img2.jpg);background-size: cover;"></div>--%>
<%--<div class="container display-flex">--%>
<%--<div class="banner_inner_text flex">--%>
<%--<h3>Our Shop List</h3>--%>
<%--<ul>--%>
<%--<li><a href="#">Home</a></li>--%>
<%--<li>Shop List V4</li>--%>
<%--</ul>--%>
<%--</div>--%>
<%--</div>--%>
<%--</section>--%>
<!--================End Banner Area =================-->
<!--================Product Details Area =================-->
<section class="product_details_area flex_pro_details">
    <div class="container">
        <div class="row product_details_inner">
            <div class="col-md-5">
                <div class="product_flex_slider">
                    <div id="slider_p" class="flexslider">
                        <ul class="slides">

                            <li>
                                <img width="450" height="493" src="${product.path}" alt="">
                            </li>
                            <!-- items mirrored twice, total of 12 -->
                        </ul>
                    </div>
                    <%--<div id="carousel_p" class="flexslider">--%>
                    <%--<ul class="slides">--%>
                    <%--<li>--%>
                    <%--<img src="/resources/img/product/product-details/product-tab-9.jpg" alt="">--%>
                    <%--</li>--%>
                    <%--<li>--%>
                    <%--<img src="/resources/img/product/product-details/product-tab-10.jpg" alt="">--%>
                    <%--</li>--%>
                    <%--<li>--%>
                    <%--<img src="/resources/img/product/product-details/product-tab-11.jpg" alt="">--%>
                    <%--</li>--%>
                    <%--<li>--%>
                    <%--<img src="/resources/img/product/product-details/product-tab-9.jpg" alt="">--%>
                    <%--</li>--%>
                    <%--<li>--%>
                    <%--<img src="/resources/img/product/product-details/product-tab-10.jpg" alt="">--%>
                    <%--</li>--%>
                    <%--<li>--%>
                    <%--<img src="/resources/img/product/product-details/product-tab-11.jpg" alt="">--%>
                    <%--</li>--%>
                    <%--<!-- items mirrored twice, total of 12 -->--%>
                    <%--</ul>--%>
                    <%--<div class="custom-navigation">--%>
                    <%--<a href="#" class="flex-prev"><i class="fa fa-angle-left"></i></a>--%>
                    <%--<a href="#" class="flex-next"><i class="fa fa-angle-right"></i></a>--%>
                    <%--</div>--%>
                    <%--</div>--%>
                </div>
            </div>
            <div class="col-md-7">
                <div class="product_d_text">
                    <div class="product_name">
                        <h2>${product.name}</h2>
                        <%--<ul>--%>
                        <%--<li><a href="#">--%>
                        <%--<i class="fa fa-star"></i>--%>
                        <%--<i class="fa fa-star"></i>--%>
                        <%--<i class="fa fa-star"></i>--%>
                        <%--<i class="fa fa-star"></i>--%>
                        <%--<i class="fa fa-star-half-o"></i>--%>
                        <%--</a></li>--%>
                        <%--<li><a href="#">4Review(s)</a></li>--%>
                        <%--<li><a href="#">Add your review</a></li>--%>
                        <%--</ul>--%>
                        <h3>$45.05</h3>
                    </div>
                    <%--<div class="available_stock available_stock_2">--%>
                    <%--<div class="in_stock">--%>
                    <%--<select class="selectpicker">--%>
                    <%--<option>Only 15 left 3</option>--%>
                    <%--<option>Only 16 left 3</option>--%>
                    <%--<option>Only 17 left 3</option>--%>
                    <%--</select>--%>
                    <%--<h4> Availalbe: <a href="#">In Stock</a></h4>--%>
                    <%--</div>--%>
                    <%--<p>A simple product in Logancee is just that: simple physical product that you ship. There are--%>
                    <%--no options like size or color that the end user can pick during the order.</p>--%>
                    <%--<p>Each simple product has a unique SKU (Stock Keeping Unit); inventory is handled at the simple--%>
                    <%--product level.</p>--%>
                    <%--</div>--%>
                    <div class="add_cart_btn">
<%--                        <div class="product_count">--%>
<%--                            <input type="text" name="qty" id="sst" maxlength="12" value="03" title="Quantity:"--%>
<%--                                   class="input-text qty">--%>
<%--                            <button onclick="var result = document.getElementById('sst'); var sst = result.value; if( !isNaN( sst ) &amp;&amp; sst > 0 ) result.value--;return false;"--%>
<%--                                    class="reduced items-count" type="button"><i class="ti-minus"></i></button>--%>
<%--                            <button onclick="var result = document.getElementById('sst'); var sst = result.value; if( !isNaN( sst )) result.value++;return false;"--%>
<%--                                    class="increase items-count" type="button"><i class="ti-plus"></i></button>--%>
<%--                        </div>--%>
                        <%
                            if (user == null) {
                        %>
                        <a class="cart_btn" href="/authorization/validate">Sign in</a>
                        <%
                        } else {
                        %>
<%--                        <button class="cart_btn" href="/basket/validate">add to cart</button>--%>
                        <a class="cart_btn" href="/basket/validate">add to cart</a>

                        <%}%>
                        <%--<ul>--%>
                        <%--<li><a href="#"><i class="fa fa-facebook-square" aria-hidden="true"></i></a></li>--%>
                        <%--<li><a href="#"><i class="fa fa-twitter-square" aria-hidden="true"></i></a></li>--%>
                        <%--<li><a href="#"><i class="fa fa-google-plus-square" aria-hidden="true"></i></a></li>--%>
                        <%--<li><a href="#"><i class="fa fa-linkedin-square" aria-hidden="true"></i></a></li>--%>
                        <%--</ul>--%>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!--================End Product Details Area =================-->

<!--================Product Description Area =================-->
<%--<section class="product_description_tab p_des_2">--%>
<%--<div class="container">--%>
<%--<div class="product_desc_tab">--%>
<%--<div class="row">--%>
<%--<div class="col-md-12">--%>
<%--<ul class="nav nav-tabs" role="tablist">--%>
<%--<li role="presentation" class="active"><a href="#des_1" aria-controls="des_1" role="tab"--%>
<%--data-toggle="tab">Product Description</a></li>--%>
<%--&lt;%&ndash;<li role="presentation"><a href="#des_2" aria-controls="des_2" role="tab" data-toggle="tab">Reviews</a>&ndash;%&gt;--%>
<%--&lt;%&ndash;</li>&ndash;%&gt;--%>
<%--&lt;%&ndash;<li role="presentation"><a href="#des_3" aria-controls="des_3" role="tab"&ndash;%&gt;--%>
<%--&lt;%&ndash;data-toggle="tab">Tags</a></li>&ndash;%&gt;--%>
<%--&lt;%&ndash;<li role="presentation"><a href="#des_4" aria-controls="des_4" role="tab" data-toggle="tab">additional&ndash;%&gt;--%>
<%--&lt;%&ndash;information</a></li>&ndash;%&gt;--%>
<%--&lt;%&ndash;<li role="presentation"><a href="#des_5" aria-controls="des_5" role="tab" data-toggle="tab">custom&ndash;%&gt;--%>
<%--&lt;%&ndash;tab info</a></li>&ndash;%&gt;--%>
<%--</ul>--%>
<%--<div class="tab-content">--%>
<%--<div role="tabpanel" class="tab-pane fade in active" id="des_1">--%>
<%--<div class="tab_desc">--%>
<%--<p>Coupling a blended linen construction with tailored style, the River Island HR Jasper--%>
<%--Blazer will imprint a touch of dapper charm into your after-dark wardrobe. Our model--%>
<%--is wearing a size medium blazer, and usually takes a size medium/38L shirt. He is--%>
<%--6’2 1/2” (189cm) tall with a 38” (96 cm) chest and a 31” (78 cm) waist.</p>--%>
<%--<ul>--%>
<%--<li><a href="#"><span>^</span>Length: 74cm</a></li>--%>
<%--<li><a href="#"><span>^</span>Regular fit</a></li>--%>
<%--<li><a href="#"><span>^</span>Notched lapels</a></li>--%>
<%--<li><a href="#"><span>^</span>Twin button front fastening</a></li>--%>
<%--<li><a href="#"><span>^</span>Front patch pockets; chest pocket</a></li>--%>
<%--<li><a href="#"><span>^</span>Internal pockets</a></li>--%>
<%--<li><a href="#"><span>^</span>Centre-back vent</a></li>--%>
<%--<li><a href="#"><span>^</span>Please refer to the garment for care instructions.</a>--%>
<%--</li>--%>
<%--<li><a href="#"><span>^</span>Length: 74cm</a></li>--%>
<%--<li><a href="#"><span>^</span>Material: Outer: 50% Linen & 50% Polyamide; Body--%>
<%--Lining: 100% Cotton; Lining: 100% Acetate</a></li>--%>
<%--</ul>--%>
<%--</div>--%>
<%--</div>--%>
<%--&lt;%&ndash;<div role="tabpanel" class="tab-pane fade" id="des_2">&ndash;%&gt;--%>
<%--&lt;%&ndash;<div class="tab_desc">&ndash;%&gt;--%>
<%--&lt;%&ndash;<p>Coupling a blended linen construction with tailored style, the River Island HR Jasper&ndash;%&gt;--%>
<%--&lt;%&ndash;Blazer will imprint a touch of dapper charm into your after-dark wardrobe. Our model&ndash;%&gt;--%>
<%--&lt;%&ndash;wearing a size medium blazer, and usually takes a size medium/38L shirt. He is 6’2&ndash;%&gt;--%>
<%--&lt;%&ndash;1/2” (189cm) tall with a 38” (96 cm) chest and a 31” (78 cm) waist.</p>&ndash;%&gt;--%>
<%--&lt;%&ndash;<ul>&ndash;%&gt;--%>
<%--&lt;%&ndash;<li><a href="#"><span>^</span>Length: 74cm</a></li>&ndash;%&gt;--%>
<%--&lt;%&ndash;<li><a href="#"><span>^</span>Regular fit</a></li>&ndash;%&gt;--%>
<%--&lt;%&ndash;<li><a href="#"><span>^</span>Notched lapels</a></li>&ndash;%&gt;--%>
<%--&lt;%&ndash;<li><a href="#"><span>^</span>Twin button front fastening</a></li>&ndash;%&gt;--%>
<%--&lt;%&ndash;<li><a href="#"><span>^</span>Front patch pockets; chest pocket</a></li>&ndash;%&gt;--%>
<%--&lt;%&ndash;<li><a href="#"><span>^</span>Internal pockets</a></li>&ndash;%&gt;--%>
<%--&lt;%&ndash;<li><a href="#"><span>^</span>Centre-back vent</a></li>&ndash;%&gt;--%>
<%--&lt;%&ndash;<li><a href="#"><span>^</span>Please refer to the garment for care instructions.</a>&ndash;%&gt;--%>
<%--&lt;%&ndash;</li>&ndash;%&gt;--%>
<%--&lt;%&ndash;<li><a href="#"><span>^</span>Length: 74cm</a></li>&ndash;%&gt;--%>
<%--&lt;%&ndash;<li><a href="#"><span>^</span>Material: Outer: 50% Linen & 50% Polyamide; Body&ndash;%&gt;--%>
<%--&lt;%&ndash;Lining: 100% Cotton; Lining: 100% Acetate</a></li>&ndash;%&gt;--%>
<%--&lt;%&ndash;</ul>&ndash;%&gt;--%>
<%--&lt;%&ndash;</div>&ndash;%&gt;--%>
<%--&lt;%&ndash;</div>&ndash;%&gt;--%>
<%--&lt;%&ndash;<div role="tabpanel" class="tab-pane fade" id="des_3">&ndash;%&gt;--%>
<%--&lt;%&ndash;<div class="tab_desc">&ndash;%&gt;--%>
<%--&lt;%&ndash;<p>Coupling a blended linen construction with tailored style, the River Island HR Jasper&ndash;%&gt;--%>
<%--&lt;%&ndash;Blazer will imprint a touch of dapper charm into your after-dark wardrobe. Our model&ndash;%&gt;--%>
<%--&lt;%&ndash;wearing a size medium blazer, and usually takes a size medium/38L shirt. He is 6’2&ndash;%&gt;--%>
<%--&lt;%&ndash;1/2” (189cm) tall with a 38” (96 cm) chest and a 31” (78 cm) waist.</p>&ndash;%&gt;--%>
<%--&lt;%&ndash;<ul>&ndash;%&gt;--%>
<%--&lt;%&ndash;<li><a href="#"><span>^</span>Length: 74cm</a></li>&ndash;%&gt;--%>
<%--&lt;%&ndash;<li><a href="#"><span>^</span>Regular fit</a></li>&ndash;%&gt;--%>
<%--&lt;%&ndash;<li><a href="#"><span>^</span>Notched lapels</a></li>&ndash;%&gt;--%>
<%--&lt;%&ndash;<li><a href="#"><span>^</span>Twin button front fastening</a></li>&ndash;%&gt;--%>
<%--&lt;%&ndash;<li><a href="#"><span>^</span>Front patch pockets; chest pocket</a></li>&ndash;%&gt;--%>
<%--&lt;%&ndash;<li><a href="#"><span>^</span>Internal pockets</a></li>&ndash;%&gt;--%>
<%--&lt;%&ndash;<li><a href="#"><span>^</span>Centre-back vent</a></li>&ndash;%&gt;--%>
<%--&lt;%&ndash;<li><a href="#"><span>^</span>Please refer to the garment for care instructions.</a>&ndash;%&gt;--%>
<%--&lt;%&ndash;</li>&ndash;%&gt;--%>
<%--&lt;%&ndash;<li><a href="#"><span>^</span>Length: 74cm</a></li>&ndash;%&gt;--%>
<%--&lt;%&ndash;<li><a href="#"><span>^</span>Material: Outer: 50% Linen & 50% Polyamide; Body&ndash;%&gt;--%>
<%--&lt;%&ndash;Lining: 100% Cotton; Lining: 100% Acetate</a></li>&ndash;%&gt;--%>
<%--&lt;%&ndash;</ul>&ndash;%&gt;--%>
<%--&lt;%&ndash;</div>&ndash;%&gt;--%>
<%--&lt;%&ndash;</div>&ndash;%&gt;--%>
<%--&lt;%&ndash;<div role="tabpanel" class="tab-pane fade" id="des_4">&ndash;%&gt;--%>
<%--&lt;%&ndash;<div class="tab_desc">&ndash;%&gt;--%>
<%--&lt;%&ndash;<p>Coupling a blended linen construction with tailored style, the River Island HR Jasper&ndash;%&gt;--%>
<%--&lt;%&ndash;Blazer will imprint a touch of dapper charm into your after-dark wardrobe. Our model&ndash;%&gt;--%>
<%--&lt;%&ndash;wearing a size medium blazer, and usually takes a size medium/38L shirt. He is 6’2&ndash;%&gt;--%>
<%--&lt;%&ndash;1/2” (189cm) tall with a 38” (96 cm) chest and a 31” (78 cm) waist.</p>&ndash;%&gt;--%>
<%--&lt;%&ndash;<ul>&ndash;%&gt;--%>
<%--&lt;%&ndash;<li><a href="#"><span>^</span>Length: 74cm</a></li>&ndash;%&gt;--%>
<%--&lt;%&ndash;<li><a href="#"><span>^</span>Regular fit</a></li>&ndash;%&gt;--%>
<%--&lt;%&ndash;<li><a href="#"><span>^</span>Notched lapels</a></li>&ndash;%&gt;--%>
<%--&lt;%&ndash;<li><a href="#"><span>^</span>Twin button front fastening</a></li>&ndash;%&gt;--%>
<%--&lt;%&ndash;<li><a href="#"><span>^</span>Front patch pockets; chest pocket</a></li>&ndash;%&gt;--%>
<%--&lt;%&ndash;<li><a href="#"><span>^</span>Internal pockets</a></li>&ndash;%&gt;--%>
<%--&lt;%&ndash;<li><a href="#"><span>^</span>Centre-back vent</a></li>&ndash;%&gt;--%>
<%--&lt;%&ndash;<li><a href="#"><span>^</span>Please refer to the garment for care instructions.</a>&ndash;%&gt;--%>
<%--&lt;%&ndash;</li>&ndash;%&gt;--%>
<%--&lt;%&ndash;<li><a href="#"><span>^</span>Length: 74cm</a></li>&ndash;%&gt;--%>
<%--&lt;%&ndash;<li><a href="#"><span>^</span>Material: Outer: 50% Linen & 50% Polyamide; Body&ndash;%&gt;--%>
<%--&lt;%&ndash;Lining: 100% Cotton; Lining: 100% Acetate</a></li>&ndash;%&gt;--%>
<%--&lt;%&ndash;</ul>&ndash;%&gt;--%>
<%--&lt;%&ndash;</div>&ndash;%&gt;--%>
<%--&lt;%&ndash;</div>&ndash;%&gt;--%>
<%--&lt;%&ndash;<div role="tabpanel" class="tab-pane fade" id="des_5">&ndash;%&gt;--%>
<%--&lt;%&ndash;<div class="tab_desc">&ndash;%&gt;--%>
<%--&lt;%&ndash;<p>Coupling a blended linen construction with tailored style, the River Island HR Jasper&ndash;%&gt;--%>
<%--&lt;%&ndash;Blazer will imprint a touch of dapper charm into your after-dark wardrobe. Our model&ndash;%&gt;--%>
<%--&lt;%&ndash;wearing a size medium blazer, and usually takes a size medium/38L shirt. He is 6’2&ndash;%&gt;--%>
<%--&lt;%&ndash;1/2” (189cm) tall with a 38” (96 cm) chest and a 31” (78 cm) waist.</p>&ndash;%&gt;--%>
<%--&lt;%&ndash;<ul>&ndash;%&gt;--%>
<%--&lt;%&ndash;<li><a href="#"><span>^</span>Length: 74cm</a></li>&ndash;%&gt;--%>
<%--&lt;%&ndash;<li><a href="#"><span>^</span>Regular fit</a></li>&ndash;%&gt;--%>
<%--&lt;%&ndash;<li><a href="#"><span>^</span>Notched lapels</a></li>&ndash;%&gt;--%>
<%--&lt;%&ndash;<li><a href="#"><span>^</span>Twin button front fastening</a></li>&ndash;%&gt;--%>
<%--&lt;%&ndash;<li><a href="#"><span>^</span>Front patch pockets; chest pocket</a></li>&ndash;%&gt;--%>
<%--&lt;%&ndash;<li><a href="#"><span>^</span>Internal pockets</a></li>&ndash;%&gt;--%>
<%--&lt;%&ndash;<li><a href="#"><span>^</span>Centre-back vent</a></li>&ndash;%&gt;--%>
<%--&lt;%&ndash;<li><a href="#"><span>^</span>Please refer to the garment for care instructions.</a>&ndash;%&gt;--%>
<%--&lt;%&ndash;</li>&ndash;%&gt;--%>
<%--&lt;%&ndash;<li><a href="#"><span>^</span>Length: 74cm</a></li>&ndash;%&gt;--%>
<%--&lt;%&ndash;<li><a href="#"><span>^</span>Material: Outer: 50% Linen & 50% Polyamide; Body&ndash;%&gt;--%>
<%--&lt;%&ndash;Lining: 100% Cotton; Lining: 100% Acetate</a></li>&ndash;%&gt;--%>
<%--&lt;%&ndash;</ul>&ndash;%&gt;--%>
<%--&lt;%&ndash;</div>&ndash;%&gt;--%>
<%--&lt;%&ndash;</div>&ndash;%&gt;--%>
<%--</div>--%>
<%--</div>--%>
<%--</div>--%>
<%--</div>--%>
<%--</div>--%>
<%--</section>--%>
<!--================End Product Description Area =================-->

<!--================Our Product Area =================-->
<%--<section class="our_product_area related_product">--%>
<%--<div class="container">--%>
<%--<div class="trainer_title">--%>
<%--<h2>Related Product<span>.</span></h2>--%>
<%--</div>--%>
<%--<div class="our_product_slider owl-carousel">--%>
<%--<div class="item">--%>
<%--<div class="product_item">--%>
<%--<div class="product_img">--%>
<%--<img src="/resources/img/product/our-product/product-1.jpg" alt="">--%>
<%--</div>--%>
<%--<div class="product_content">--%>
<%--<div class="row m0">--%>
<%--<div class="pull-left">--%>
<%--<h4>$45.05</h4>--%>
<%--</div>--%>
<%--<div class="pull-right">--%>
<%--<ul>--%>
<%--<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>--%>
<%--<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>--%>
<%--<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>--%>
<%--<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>--%>
<%--<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>--%>
<%--</ul>--%>
<%--</div>--%>
<%--</div>--%>
<%--<h5>Lose Oversized Shirt</h5>--%>
<%--</div>--%>
<%--</div>--%>
<%--</div>--%>
<%--<div class="item">--%>
<%--<div class="product_item">--%>
<%--<div class="product_img">--%>
<%--<img src="/resources/img/product/our-product/product-2.jpg" alt="">--%>
<%--</div>--%>
<%--<div class="product_content">--%>
<%--<div class="row m0">--%>
<%--<div class="pull-left">--%>
<%--<h4>$45.05</h4>--%>
<%--</div>--%>
<%--<div class="pull-right">--%>
<%--<ul>--%>
<%--<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>--%>
<%--<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>--%>
<%--<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>--%>
<%--<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>--%>
<%--<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>--%>
<%--</ul>--%>
<%--</div>--%>
<%--</div>--%>
<%--<h5>Lose Oversized Shirt</h5>--%>
<%--</div>--%>
<%--</div>--%>
<%--</div>--%>
<%--<div class="item">--%>
<%--<div class="product_item">--%>
<%--<div class="product_img">--%>
<%--<img src="/resources/img/product/our-product/product-3.jpg" alt="">--%>
<%--</div>--%>
<%--<div class="product_content">--%>
<%--<div class="row m0">--%>
<%--<div class="pull-left">--%>
<%--<h4>$45.05</h4>--%>
<%--</div>--%>
<%--<div class="pull-right">--%>
<%--<ul>--%>
<%--<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>--%>
<%--<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>--%>
<%--<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>--%>
<%--<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>--%>
<%--<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>--%>
<%--</ul>--%>
<%--</div>--%>
<%--</div>--%>
<%--<h5>Lose Oversized Shirt</h5>--%>
<%--</div>--%>
<%--</div>--%>
<%--</div>--%>
<%--<div class="item">--%>
<%--<div class="product_item">--%>
<%--<div class="product_img">--%>
<%--<img src="/resources/img/product/our-product/product-4.jpg" alt="">--%>
<%--</div>--%>
<%--<div class="product_content">--%>
<%--<div class="row m0">--%>
<%--<div class="pull-left">--%>
<%--<h4>$45.05</h4>--%>
<%--</div>--%>
<%--<div class="pull-right">--%>
<%--<ul>--%>
<%--<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>--%>
<%--<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>--%>
<%--<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>--%>
<%--<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>--%>
<%--<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>--%>
<%--</ul>--%>
<%--</div>--%>
<%--</div>--%>
<%--<h5>Lose Oversized Shirt</h5>--%>
<%--</div>--%>
<%--</div>--%>
<%--</div>--%>
<%--</div>--%>
<%--</div>--%>
<%--</section>--%>
<!--================End Our Product Area =================-->

<!--================Start ag Footer Area =================-->
<%--<footer class="footer_area shop_footer">--%>
<%--<div class="footer_top">--%>
<%--<div class="container">--%>
<%--<div class="row">--%>
<%--<div class="col-md-3 col-xs-6">--%>
<%--<aside class="f_widget shop_f_about">--%>
<%--<a href="#" class="f_logo">--%>
<%--<img src="/resources/img/shop-f-logo.png" alt="f-logo">--%>
<%--</a>--%>
<%--<p class="f_brif">Before we talk destination, we shine a spotlight across your organization to--%>
<%--fully understand its people, processes</p>--%>
<%--<div class="footer_info">--%>
<%--<h4><i class="fa fa-map-marker"></i>Postal Address:</h4>--%>
<%--<p>PO Box 16122 Collins Street West Victoria 8007 Australia</p>--%>
<%--<h4><i class="fa fa-phone"></i>Business Phone:</h4>--%>
<%--<a href="#"><p>+8030-738-839</p></a>--%>
<%--</div>--%>
<%--</aside>--%>
<%--</div>--%>
<%--<div class="col-md-3 col-xs-6">--%>
<%--<aside class="f_widget s_product_widget">--%>
<%--<div class="s_f_title">--%>
<%--<h2>TOP RATED <span>PRODUCTS</span></h2>--%>
<%--</div>--%>
<%--<div class="s_p_list">--%>
<%--<div class="media">--%>
<%--<div class="media-left">--%>
<%--<img src="/resources/img/footer/top-r-product/f-t-product-1.png" alt="">--%>
<%--</div>--%>
<%--<div class="media-body">--%>
<%--<a href="#"><h4>Creator Of Quality</h4></a>--%>
<%--<h5>£125.00</h5>--%>
<%--<ul>--%>
<%--<li><a href="#"><i class="fa fa-star"></i></a></li>--%>
<%--<li><a href="#"><i class="fa fa-star"></i></a></li>--%>
<%--<li><a href="#"><i class="fa fa-star"></i></a></li>--%>
<%--<li><a href="#"><i class="fa fa-star"></i></a></li>--%>
<%--<li><a href="#"><i class="fa fa-star"></i></a></li>--%>
<%--</ul>--%>
<%--</div>--%>
<%--</div>--%>
<%--<div class="media">--%>
<%--<div class="media-left">--%>
<%--<img src="/resources/img/footer/top-r-product/f-t-product-2.png" alt="">--%>
<%--</div>--%>
<%--<div class="media-body">--%>
<%--<a href="#"><h4>Creator Of Quality</h4></a>--%>
<%--<h5>£125.00</h5>--%>
<%--<ul>--%>
<%--<li><a href="#"><i class="fa fa-star"></i></a></li>--%>
<%--<li><a href="#"><i class="fa fa-star"></i></a></li>--%>
<%--<li><a href="#"><i class="fa fa-star"></i></a></li>--%>
<%--<li><a href="#"><i class="fa fa-star"></i></a></li>--%>
<%--<li><a href="#"><i class="fa fa-star"></i></a></li>--%>
<%--</ul>--%>
<%--</div>--%>
<%--</div>--%>
<%--<div class="media">--%>
<%--<div class="media-left">--%>
<%--<img src="/resources/img/footer/top-r-product/f-t-product-3.png" alt="">--%>
<%--</div>--%>
<%--<div class="media-body">--%>
<%--<a href="#"><h4>Creator Of Quality</h4></a>--%>
<%--<h5>--%>
<%--<del>£109.00</del>--%>
<%--£125.00--%>
<%--</h5>--%>
<%--<ul>--%>
<%--<li><a href="#"><i class="fa fa-star"></i></a></li>--%>
<%--<li><a href="#"><i class="fa fa-star"></i></a></li>--%>
<%--<li><a href="#"><i class="fa fa-star"></i></a></li>--%>
<%--<li><a href="#"><i class="fa fa-star"></i></a></li>--%>
<%--<li><a href="#"><i class="fa fa-star"></i></a></li>--%>
<%--</ul>--%>
<%--</div>--%>
<%--</div>--%>
<%--</div>--%>
<%--</aside>--%>
<%--</div>--%>
<%--<div class="col-md-3 col-xs-6">--%>
<%--<div class="f_widget o_f_product s_product_widget">--%>
<%--<div class="s_f_title">--%>
<%--<h2>OUr <span>PRODUCTS</span></h2>--%>
<%--</div>--%>
<%--<div class="s_p_list">--%>
<%--<div class="media">--%>
<%--<div class="media-left">--%>
<%--<img src="/resources/img/footer/our-product/o-product-1.png" alt="">--%>
<%--</div>--%>
<%--<div class="media-body">--%>
<%--<a href="#"><h4>Creator Of Quality</h4></a>--%>
<%--<h5>--%>
<%--<del>£109.00</del>--%>
<%--£125.00--%>
<%--</h5>--%>
<%--</div>--%>
<%--</div>--%>
<%--<div class="media">--%>
<%--<div class="media-left">--%>
<%--<img src="/resources/img/footer/our-product/o-product-2.png" alt="">--%>
<%--</div>--%>
<%--<div class="media-body">--%>
<%--<a href="#"><h4>Creator Of Quality</h4></a>--%>
<%--<h5>£125.00</h5>--%>
<%--</div>--%>
<%--</div>--%>
<%--<div class="media">--%>
<%--<div class="media-left">--%>
<%--<img src="/resources/img/footer/our-product/o-product-3.png" alt="">--%>
<%--</div>--%>
<%--<div class="media-body">--%>
<%--<a href="#"><h4>Creator Of Quality</h4></a>--%>
<%--<h5>--%>
<%--<del>£109.00</del>--%>
<%--£125.00--%>
<%--</h5>--%>
<%--</div>--%>
<%--</div>--%>
<%--</div>--%>
<%--</div>--%>
<%--</div>--%>
<%--<div class="col-md-3 col-xs-6">--%>
<%--<div class="f_widget o_f_gallery">--%>
<%--<div class="s_f_title">--%>
<%--<h2>TOP RATED <span>PRODUCTS</span></h2>--%>
<%--</div>--%>
<%--<ul class="o_footer_gallery">--%>
<%--<li>--%>
<%--<a href="#"><img src="/resources/img/footer/f-our-gallery/f-o-gallery-1.png" alt=""></a>--%>
<%--</li>--%>
<%--<li>--%>
<%--<a href="#"><img src="/resources/img/footer/f-our-gallery/f-o-gallery-2.png" alt=""></a>--%>
<%--</li>--%>
<%--<li>--%>
<%--<a href="#"><img src="/resources/img/footer/f-our-gallery/f-o-gallery-3.png" alt=""></a>--%>
<%--</li>--%>
<%--<li>--%>
<%--<a href="#"><img src="/resources/img/footer/f-our-gallery/f-o-gallery-4.png" alt=""></a>--%>
<%--</li>--%>
<%--<li>--%>
<%--<a href="#"><img src="/resources/img/footer/f-our-gallery/f-o-gallery-5.png" alt=""></a>--%>
<%--</li>--%>
<%--<li>--%>
<%--<a href="#"><img src="/resources/img/footer/f-our-gallery/f-o-gallery-6.png" alt=""></a>--%>
<%--</li>--%>
<%--</ul>--%>
<%--<a href="#" class="view_m"><i class="fa fa-arrow-circle-o-right"></i>View More Photos</a>--%>
<%--<h6>Subscribe to rss</h6>--%>
<%--<div class="input-group">--%>
<%--<input type="text" class="form-control" placeholder="Type your email">--%>
<%--<span class="input-group-btn">--%>
<%--<button class="btn btn-default" type="button"><i class="fa fa-rss"--%>
<%--aria-hidden="true"></i></button>--%>
<%--</span>--%>
<%--</div><!-- /input-group -->--%>
<%--</div>--%>
<%--</div>--%>
<%--</div>--%>
<%--</div>--%>
<%--</div>--%>
<%--<div class="footer_bottom">--%>
<%--<div class="container">--%>
<%--<h4 class="f-text">©--%>
<%--<script>document.write(new Date().getFullYear());</script>--%>
<%--leptina CREATIVE PSD TEMPLATE. Powered By Mexopixel--%>
<%--</h4>--%>
<%--</div>--%>
<%--</div>--%>
<%--</footer>--%>
<!--================End ag Footer Area =================-->

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

<!-- Extra plugin js -->
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
<script src="/resources/vendors/dzsparallaxer/dzsparallaxer.js"></script>
<!-- owl carousel js-->
<script type="text/javascript" src="/resources/vendors/owl-carousel/owl.carousel.min.js"></script>
<script type="text/javascript" src="/resources/vendors/flexslider/jquery.flexslider.js"></script>
<script type="text/javascript" src="/resources/vendors/scroll/jquery.nicescroll.min.js"></script>
<script type="text/javascript" src="/resources/vendors/scroll/jquery.mCustomScrollbar.concat.min.js"></script>

<script src="/resources/js/theme.js"></script>
</body>
</html>