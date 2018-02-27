<!DOCTYPE html>
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
  <head>
    <meta charset="utf-8">
    <title><?php echo $title; ?></title>
    <base href="<?php echo $base; ?>" />
    <meta name="author" content="Vitalii Petko">
    <meta name="viewport" content="width=device-width, user-scalable=no">
    <?php if ($description) { ?>
    <meta name="description" content="<?php echo $description; ?>" />
    <?php } ?>
    <?php if ($keywords) { ?>
    <meta name="keywords" content= "<?php echo $keywords; ?>" />
    <?php } ?>
    <style>header,header .nav{background:#ff96ce}body.fixed header{padding-bottom:47px}header{padding-top:15px}header .nav{top:0;left:0;right:0;z-index:9999;-moz-transition:all .6s;-o-transition:all .6s;-webkit-transition:all .6s;transition:all .6s}header .nav.scroll{-moz-transform:translate(0,-100%);-o-transform:translate(0,-100%);-ms-transform:translate(0,-100%);-webkit-transform:translate(0,-100%);transform:translate(0,-100%)}header .nav__mini-logo{-moz-transition:all .8s;-o-transition:all .8s;-webkit-transition:all .8s;transition:all .8s;position:absolute;display:block;top:8px;left:25px;width:40px;z-index:9999;-moz-transform:translate(-500%,0);-o-transform:translate(-500%,0);-ms-transform:translate(-500%,0);-webkit-transform:translate(-500%,0);transform:translate(-500%,0);opacity:0}header .nav__lang,header .nav__phone{-o-transition:all .4s;-moz-transition:all .4s}header .nav__lang{color:#fff;letter-spacing:.7px;position:relative;display:inline;cursor:pointer;margin-right:30px;padding-bottom:20px;top:0;-webkit-transition:all .4s;transition:all .4s}header .nav__lang:after{font-family:FontAwesome;content:'\f107';position:absolute;display:block;right:-10px;top:0}header .nav__lang--menu{display:none;position:absolute;background:#fff;z-index:10;left:0}header .nav__lang--menu li{padding:5px 10px 7px;display:block}header .nav__lang--menu li a{color:#ff96ce}header .nav__phone{color:#fff;position:relative;padding-left:20px;letter-spacing:.9px;top:0;-webkit-transition:all .4s;transition:all .4s}header .nav__phone:before{content:url(../images/icons/phone.svg);display:block;position:absolute;left:-2px;top:0}header .nav__cabinet,header .nav__fb,header .nav__instagram{position:relative;display:inline-block}header .nav__phone:hover{top:-5px}header .nav__instagram{margin-left:20px;top:5px}header .nav__instagram:hover{top:0}header .nav__fb{margin-left:10px;top:5px}header .nav__fb:hover{top:0}header .nav__cabinet{top:5px;-moz-transition:all .4s;-o-transition:all .4s;-webkit-transition:all .4s;transition:all .4s}header .nav__cabinet:hover{top:0}header .nav__cabinet:hover .nav__cabinet--menu{opacity:1;visibility:visible}header .nav__cabinet--menu{-moz-transition:all .4s;-o-transition:all .4s;-webkit-transition:all .4s;transition:all .4s;opacity:0;visibility:hidden;position:absolute;background:#fff;padding:10px;text-align:center;top:30px;min-width:170px;left:50%;-moz-transform:translate(-50%,0);-o-transform:translate(-50%,0);-ms-transform:translate(-50%,0);-webkit-transform:translate(-50%,0);transform:translate(-50%,0);z-index:999;-webkit-box-shadow:0 9px 49px 0 rgba(0,0,0,.1);-moz-box-shadow:0 9px 49px 0 rgba(0,0,0,.1);box-shadow:0 9px 49px 0 rgba(0,0,0,.1)}header .nav__search,header nav .nav__main-menu--item{-webkit-transition:all .4s;-o-transition:all .4s;-moz-transition:all .4s}header .nav__cart .cart,header .nav__favorits .wishlist{right:-6px;background:#73dff6;width:12px;height:12px;text-align:center}header .nav__cabinet--menu a{color:#ff96ce}header .nav__favorits{display:inline-block;position:relative;top:5px;margin-left:15px}header .nav__favorits .wishlist{position:absolute;top:-2px;-webkit-border-radius:50%;-moz-border-radius:50%;border-radius:50%}header .nav__favorits .wishlist span{display:block;position:relative;top:-4px;font-size:7px;color:#fff}header .nav__favorits:hover{top:0}header .nav__cart{display:inline-block;position:relative;top:5px;margin-left:15px}header .nav__cart .cart{position:absolute;top:-2px;-webkit-border-radius:50%;-moz-border-radius:50%;border-radius:50%}header .nav__cart .cart span{display:block;position:relative;top:-4px;font-size:7px;color:#fff}header .nav__cart:hover{top:0}header .nav__search{display:inline;position:relative;margin-left:20px;transition:all .4s}header .nav__search input[type=text]{border:none;padding:5px 11px 3px;-webkit-border-radius:10px;-moz-border-radius:10px;border-radius:10px;width:120px;margin-right:10px;letter-spacing:2.5px}header .nav__search--btn{border:none;background-color:transparent;z-index:10;width:20px;height:20px;padding:5px;position:relative;cursor:pointer}header .nav__search:before{content:url(../images/icons/search.svg);display:block;position:absolute;top:0;right:0;z-index:1;cursor:pointer}header .nav__search:hover{padding-top:5px}header .nav__logo{max-width:320px;position:relative;top:-8px;margin-bottom:14px}header nav{padding-top:10px}header nav .nav__main-menu{text-align:center;z-index:999;position:relative}header nav .nav__main-menu--icons{display:none}header nav .nav__main-menu--item{display:inline-block;padding:0 28px 15px;color:#fff;letter-spacing:.1px;text-transform:uppercase;position:relative;cursor:pointer;transition:all .4s}header nav .nav__main-menu--item .box,header nav .nav__main-menu--item .box2{text-align:left;padding:0 20px;left:50%;top:35px;position:absolute;min-width:300px;-moz-transform:translate(-50%,0);-o-transform:translate(-50%,0);-ms-transform:translate(-50%,0);-webkit-transform:translate(-50%,0);transform:translate(-50%,0);background:url(../images/content/menu_bcg.png) top right no-repeat #fff;display:none;-moz-transition:all .4s;-o-transition:all .4s;-webkit-transition:all .4s;transition:all .4s;-webkit-box-shadow:0 9px 49px 0 rgba(0,0,0,.1);-moz-box-shadow:0 9px 49px 0 rgba(0,0,0,.1);box-shadow:0 9px 49px 0 rgba(0,0,0,.1)}header nav .nav__main-menu--item .box ul,header nav .nav__main-menu--item .box2 ul{margin-bottom:20px}header nav .nav__main-menu--item .box ul li,header nav .nav__main-menu--item .box2 ul li{display:block;padding:5px 10px 0;-webkit-transition:all .4s;-o-transition:all .4s;-moz-transition:all .4s;transition:all .4s}header nav .nav__main-menu--item .box ul li a:hover,header nav .nav__main-menu--item .box2 ul li a:hover{background-color:#ff96ce}header nav .nav__main-menu--item .box ul li:first-child,header nav .nav__main-menu--item .box2 ul li:first-child{margin-top:10px}header nav .nav__main-menu--item .box ul a,header nav .nav__main-menu--item .box2 ul a{color:#000;font-family:"Avenir Next Cyr Bold";text-transform:none;display:block}header nav .nav__main-menu--item .box ul a:hover,header nav .nav__main-menu--item .box2 ul a:hover{padding-left:10px;color:#fff}header nav .nav__main-menu--item .box2{width:500px;padding:20px}header nav .nav__main-menu--item .box2 ul li{float:left;width:50%}header nav .nav__main-menu--item .box2 ul li:first-child{margin:0}header nav .nav__main-menu--item .box2 ul li ul li{width:100%}header nav .nav__main-menu--item .box2 ul li ul li a{font-family:"Avenir Next Cyr"}header nav .nav__main-menu--item .box2:after{content:'';display:table;clear:both}header nav .nav__main-menu--item-link{color:#fff}header nav .nav__main-menu--item:hover{color:#fc53ad;background-color:#FFF}header nav .nav__main-menu--item:hover .nav__main-menu--item-link{color:#fc53ad}header nav .nav__main-menu--title,header nav .nav__main-menu--title a{color:#000;font-family:"Avenir Next Cyr Medium";font-size:18px;padding:0 10px}header nav .nav__main-menu--item:hover .box,header nav .nav__main-menu--item:hover .box2{display:block}header nav .nav__main-menu--title a{margin:0 -10px;display:block}header nav .nav__main-menu--title a:hover{padding-left:20px;background-color:#ff96ce;color:#fff}header nav .nav__main-menu--mobile{position:fixed;overflow:auto;display:none;top:0;bottom:0;left:0;right:0;padding-top:40px;background:#ff96ce;z-index:9999}header nav .nav__main-menu--mobile .close,header nav .nav__main-menu--mobile-btn{position:absolute;right:20px;top:10px;cursor:pointer}header nav .nav__main-menu--mobile .close:after{font-family:FontAwesome;content:'\f00d';color:#fff;font-size:20px}header nav .nav__main-menu--mobile-btn{display:none}header nav .nav__main-menu--mobile-btn:after{font-family:FontAwesome;content:'\f0c9';font-size:30px;color:#fff}header nav .nav__main-menu--mobile li{display:block;text-align:center;text-transform:uppercase;padding:10px 0;border:1px sold;-moz-transition:all .4s;-o-transition:all .4s;-webkit-transition:all .4s;transition:all .4s}header nav .nav__main-menu--mobile li:hover{border-color:#ff96ce;background:#fff}header nav .nav__main-menu--mobile li:hover a{color:#ff96ce}header nav .nav__main-menu--mobile li a{color:#fff}header nav .nav__main-menu--mobile li ul{display:none}@media screen and (max-width:1024px){header .nav__logo{top:0;padding-top:20px}header nav{min-height:47px}header nav .nav__main-menu{display:none}header nav .nav__main-menu--mobile-btn{display:block}}@media screen and (max-width:768px){header .header__right a,header nav .nav__main-menu{display:none}header .header__left{text-align:center;padding-bottom:10px}header .header__right{text-align:center}header nav{min-height:47px}header nav .nav__main-menu--icons,header nav .nav__main-menu--mobile-btn{display:block}}@media screen and (max-width:480px){header .header__left{text-align:center;padding-bottom:10px}header .header__right{text-align:center}header .nav__logo{max-width:200px}}</style>
    <link rel="stylesheet" type="text/css" href="/catalog/view/theme/monstra/assets/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="/catalog/view/theme/monstra/assets/css/slick.min.css">
    <link rel="stylesheet" type="text/css" href="/catalog/view/theme/monstra/assets/css/slick-theme.min.css">
    <link rel="stylesheet" type="text/css" href="/catalog/view/theme/monstra/assets/css/main.min.css">
    <?php foreach ($styles as $style) { ?>
    <link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>" media="<?php echo $style['media']; ?>" />
    <?php } ?>
    <?php foreach ($links as $link) { ?>
    <link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
    <?php } ?>
    <script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
    <?php foreach ($scripts as $script) { ?>
    <script src="<?php echo $script; ?>" type="text/javascript"></script>
    <?php } ?>
    <?php foreach ($analytics as $analytic) { ?>
    <?php echo $analytic; ?>
    <?php } ?>
  </head>
  <body>
    <header>
      <div class="container">
        <div class="row">
          <div class="col-lg-6 col-sm-12 col-xs-12 header__left">
            <?php echo $language; ?>
            <?php echo $currency; ?>
            <a class="nav__phone" href="tel:<?php echo $telephone; ?>"><?php echo $telephone; ?></a><a class="nav__instagram" href="https://www.instagram.com/monstra_official" target="_blank"><img src="/catalog/view/theme/monstra/assets/images/icons/instagram.svg" alt=""></a><a class="nav__fb" href="https://www.facebook.com/MONSTRAbrand/" target="_blank"><img src="/catalog/view/theme/monstra/assets/images/icons/fb.svg" alt=""></a>
          </div>
          <div class="col-lg-6 col-sm-12 col-xs-12 text-right header__right">
            <span class="nav__cabinet">
              <?php if (!$loged) {?>
                <a href="/index.php?route=account/login">
                  <img src="/catalog/view/theme/monstra/assets/images/icons/login.svg" alt="">
                </a>
              <?php } else { ?>
                <a href="/index.php?route=account/account">
                  <img src="/catalog/view/theme/monstra/assets/images/icons/login.svg" alt="">
                </a>
              <?php } ?>
            </span>
            <a class="nav__favorits" href="/index.php?route=account/wishlist">
              <img src="/catalog/view/theme/monstra/assets/images/icons/favorits.svg" alt="">
              <div class="wishlist">
                <span><?php echo $text_wishlist; ?></span>
              </div>
            </a>
            <a class="nav__cart" href="/index.php?route=checkout/cart">
              <img src="/catalog/view/theme/monstra/assets/images/icons/cart.svg" alt="">
              <div class="cart">
                <?php echo $cart; ?>
              </div>
            </a>
            <?php echo $search; ?>
          </div>
        </div>
        <div class="row text-center"><a href="/"><img class="nav__logo" src="/catalog/view/theme/monstra/assets/images/icons/logo.svg" alt=""></a></div>
      </div>
      <div class="nav">
        <div class="container">
          <div class="row"><a class="nav__mini-logo" href="/"><img src="/catalog/view/theme/monstra/assets/images/icons/footer_logo.png" alt=""></a>
            <nav>
              <ul class="nav__main-menu">
                <?php foreach ($categories as $category_1) { ?>
                  <li class="nav__main-menu--item">
                    <a href="<?php echo $category_1['href']; ?>" class="nav__main-menu--item-link"><?php echo $category_1['name']; ?></a>
                    <?php $box = 'box'; ?>
                    <?php foreach ($category_1['children'] as $category_2) { ?>
                      <?php foreach ($category_2['children'] as $category_3) { ?>
                        <?php if ($category_3) {?>
                          <?php $box = 'box2' ?>
                        <?php } else {?>
                          <?php $box = 'box' ?>
                        <?php } ?>
                      <?php } ?>
                    <?php } ?>
                    <?php if ($category_1['children']) {?>
                      <div class="<?php echo $box; ?>">
                        <ul>
                        <?php foreach ($category_1['children'] as $category_2) { ?>
                          <li>
                            <a href="<?php echo $category_2['href']; ?>"><?php echo $category_2['name']; ?></a>
                            <?php if ($category_2['children']) {?>
                              <ul>
                              <?php foreach ($category_2['children'] as $category_3) { ?>
                                <li>
                                  <a href="<?php echo $category_3['href']; ?>"><?php echo $category_3['name']; ?></a>
                                </li>
                              <?php } ?>
                            </ul>
                            <?php } ?>
                          </li>
                        <?php } ?>
                        </ul>
                      </div>
                    <?php } ?>
                  </li>
                <?php } ?>
                <?php foreach ($informations as $information) { ?>
                  <li class="nav__main-menu--item"><a class="nav__main-menu--item-link" href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
                <?php break; ?>
                <?php } ?>
                <li class="nav__main-menu--item"><a class="nav__main-menu--item-link" href="/index.php?route=blog/blog"><?php echo $blog; ?></a></li>
                <li class="nav__main-menu--item"><a class="nav__main-menu--item-link" href="<?php echo $contact; ?>"><?php echo $contacts ?></a></li>
              </ul>
              <div class="nav__main-menu--icons text-center">
                <a class="nav__cabinet" href="/index.php?route=account/account">
                  <img src="/catalog/view/theme/monstra/assets/images/icons/login.svg" alt="">
                </a>
                <a class="nav__favorits" href="/index.php?route=account/wishlist">
                  <img src="/catalog/view/theme/monstra/assets/images/icons/favorits.svg" alt="">
                  <div class="wishlist">
                    <span><?php echo $text_wishlist; ?></span>
                  </div>
                </a>
                <a class="nav__cart" href="/index.php?route=checkout/cart">
                  <img src="/catalog/view/theme/monstra/assets/images/icons/cart.svg" alt="">
                  <div class="cart">
                    <?php echo $cart; ?>
                  </div>
                </a>
              </div>
              <i class="nav__main-menu--mobile-btn"></i>
              <ul class="nav__main-menu--mobile"><span class="close"></span>
                <?php foreach ($categories as $category_1) { ?>
                  <li>
                    <a href="<?php echo $category_1['href']; ?>"><?php echo $category_1['name']; ?></a>
                    <?php if ($category_1['children']) {?>
                      <ul>
                      <?php foreach ($category_1['children'] as $category_2) { ?>
                        <li>
                          <a href="<?php echo $category_2['href']; ?>"><?php echo $category_2['name']; ?></a>
                          <?php if ($category_2['children']) {?>
                            <ul>
                            <?php foreach ($category_2['children'] as $category_3) { ?>
                              <li>
                                <a href="<?php echo $category_3['href']; ?>"><?php echo $category_3['name']; ?></a>
                              </li>
                            <?php } ?>
                          </ul>
                          <?php } ?>
                        </li>
                      <?php } ?>
                      </ul>
                    <?php } ?>
                  </li>
                <?php } ?>
                <?php foreach ($informations as $information) { ?>
                  <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
                <?php break; ?>
                <?php } ?>
                <li><a href="/index.php?route=blog/blog"><?php echo $blog; ?></a></li>
                <li><a href="<?php echo $contact; ?>"><?php echo $contacts; ?></a></li>
              </ul>
            </nav>
          </div>
        </div>
      </div>
    </header>