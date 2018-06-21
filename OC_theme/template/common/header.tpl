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
          <div class="col-lg-6 hidden-sm header__left">
            <?php echo $language; ?>
            <?php echo $currency; ?>
            <a class="nav__phone" href="tel:<?php echo $telephone; ?>"><?php echo $telephone; ?></a><a class="nav__instagram" href="https://www.instagram.com/monstra_official" target="_blank"><img src="/catalog/view/theme/monstra/assets/images/icons/instagram.svg" alt=""></a><a class="nav__fb" href="https://www.facebook.com/MONSTRAbrand/" target="_blank"><img src="/catalog/view/theme/monstra/assets/images/icons/fb.svg" alt=""></a>
          </div>
          <div class="col-lg-6 hidden-sm text-right header__right">
            <span class="nav__cabinet">
              <?php if (!$loged) {?>
                <a href="<?php echo $login; ?>">
                  <img src="/catalog/view/theme/monstra/assets/images/icons/login.svg" alt="">
                </a>
              <?php } else { ?>
                <a href="/index.php?route=account/account">
                  <img src="/catalog/view/theme/monstra/assets/images/icons/login.svg" alt="">
                </a>
              <?php } ?>
            </span>
            <a class="nav__favorits" href="<?php echo $wishlist; ?>">
              <img src="/catalog/view/theme/monstra/assets/images/icons/favorits.svg" alt="">
              <div class="wishlist">
                <span><?php echo $text_wishlist; ?></span>
              </div>
            </a>
            <a class="nav__cart" href="<?php echo $shopping_cart; ?>">
              <img src="/catalog/view/theme/monstra/assets/images/icons/cart.svg" alt="">
              <div class="cart">
                <?php echo $cart; ?>
              </div>
            </a>
            <?php echo $search; ?>
          </div>
        </div>
        <div class="row text-center"><a href="/"><img class="nav__logo" src="/catalog/view/theme/monstra/assets/images/icons/logo.png" alt=""></a></div>
      </div>
      <div class="nav">
        <div class="container">
          <div class="row">
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
                <li class="nav__main-menu--item"><a class="nav__main-menu--item-link" href="<?php echo $blog_url; ?>"><?php echo $blog; ?></a></li>
                <li class="nav__main-menu--item"><a class="nav__main-menu--item-link" href="<?php echo $contact; ?>"><?php echo $contacts ?></a></li>
              </ul>
              <div class="nav__main-menu--icons text-right">
                <a href="/" class="nav__logo--mobile" ><img src="/catalog/view/theme/monstra/assets/images/icons/logo.png" alt=""></a>
                <?php echo $language; ?>
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
                <li><a href="<?php echo $blog_url; ?>"><?php echo $blog; ?></a></li>
                <li><a href="<?php echo $contact; ?>"><?php echo $contacts; ?></a></li>
                <li><?php echo $currency; ?></li>
                <li><?php echo $search; ?></li>
                <li><a class="nav__phone" href="tel:<?php echo $telephone; ?>"><?php echo $telephone; ?></a></li>
              </ul>
            </nav>
          </div>
        </div>
      </div>
    </header>