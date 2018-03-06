<?php echo $header; ?>
<?php if ($categories || $products) {?>
  <?php if ($categories) { ?>
    <?php if ($products) { ?>
    <section class="category-page">
      <?php if ($thumb) {?>
      <div class="category-page__title" style="background: url('<?php echo $thumb; ?>') no-repeat center center; background-size: cover;"><!-- <img src="/catalog/view/theme/monstra/assets/images/icons/footer_logo.png" alt=""> -->
        <p class="category-page__title--text"><?php echo $heading_title; ?></p>
      </div>
      <?php } ?>
      <div class="category-page__content">
        <div class="container-fluid">
          <div class="category-page__content--filter">
            <?php echo $content_top; ?>
            <div class="logo--mobile">
              <img src="/catalog/view/theme/monstra/assets/images/icons/footer_logo.png" alt="">
            </div>
          </div>
          <div class="items">
            <div class="row">
              <?php foreach ($products as $product) { ?>
              <div class="product-layout col-lg-4 col-sm-4 col-xs-6">
                <div class="category-page__content--item">
                  <span class="category-page__content--item-add_favorits" onclick="wishlist.add('<?php echo $product['product_id']; ?>');"></span>
                  <a href="<?php echo $product['href']; ?>">
                    <img src="<?php echo $product['thumb']; ?>" alt="">
                    <?php foreach ($product['second_img'] as $img) { ?>
                      <img class="hidde" src="<?php echo $img;?>" alt="">
                    <?php break; } ?>
                  </a>
                  <p class="category-page__content--item-title"><?php echo $product['name']; ?><span><?php echo $product['price']; ?></span><a class="category-page__content--item-link" href="<?php echo $product['href']; ?>"><?php echo $button_cart; ?></a></p>
                </div>
              </div>
              <?php } ?>
            </div>
          </div>
          <div class="row">
            <?php echo $pagination; ?>
          </div>
        </div>
        <div class="container">
  <div class="category-page__content--info">
    <div class="container"><a href="/payment"><?php echo $text_pay; ?></a><a href="/delivery"><?php echo $text_delivery; ?></a><!-- <a href="#">returns & exchanges</a> --><a href="/size"><?php echo $text_size; ?></a></div>
  </div>
</div>
      </div>
    </section>
    <?php } else {?>
    <section class="category-page">
    <?php if ($thumb) {?>
    <div class="category-page__title" style="background: url('<?php echo $thumb; ?>') no-repeat center center; background-size: cover;"><!-- <img src="/catalog/view/theme/monstra/assets/images/icons/footer_logo.png" alt=""> -->
      <p class="category-page__title--text"><?php echo $heading_title; ?></p>
    </div>
    <?php } ?>
      <div class="runway-page__items">
        <div class="container">
					<?php $i = 0; ?>
            <?php foreach ($categories as $category) { ?>
            <?php if ($i==0) { ?>
            <div class="row">
            <?php } ?>
            <div class="col-lg-6 col-xs-12">
              <div class="runway-page__items--item"><a href="<?php echo $category['href']; ?>"><img src="<?php echo $category['thumb']; ?>" alt="">
                  <p class="runway-page__items--item-title"><?php echo $category['name']; ?></p></a></div>
            </div>
            <?php $i++; ?>
            <?php if ($i == 2) { ?>
            </div>
            <?php $i=0;} ?>
            <?php } ?>
            <?php if ($i!= 0) {?>
            </div>
            <?php } ?>

        </div>
      </div>
    </section>
    <section class="info">
  <div class="container"><a href="/payment"><?php echo $text_pay; ?></a><a href="/delivery"><?php echo $text_delivery; ?></a><!-- <a href="#">returns & exchanges</a> --><a href="/size"><?php echo $text_size; ?></a></div>
</section>
    <?php } ?>
    <?php } else {?>
      <section class="category-page">
        <?php if ($thumb) {?>
        <div class="category-page__title" style="background: url('<?php echo $thumb; ?>') no-repeat center center; background-size: cover;"><!-- <img src="/catalog/view/theme/monstra/assets/images/icons/footer_logo.png" alt=""> -->
          <p class="category-page__title--text"><?php echo $heading_title; ?></p>
        </div>
        <?php } ?>
        <div class="category-page__content">
          <div class="container-fluid">
            <div class="category-page__content--filter">
              <?php echo $content_top; ?>
              <div class="logo--mobile">
                <img src="/catalog/view/theme/monstra/assets/images/icons/footer_logo.png" alt="">
              </div>
            </div>
            <div class="items">
              <div class="row">
                <?php foreach ($products as $product) { ?>
                <div class="product-layout col-lg-4 col-sm-4 col-xs-6">
                  <div class="category-page__content--item">
                    <span class="category-page__content--item-add_favorits" onclick="wishlist.add('<?php echo $product['product_id']; ?>');"></span>
                    <a href="<?php echo $product['href']; ?>">
                      <img src="<?php echo $product['thumb']; ?>" alt="">
                      <?php foreach ($product['second_img'] as $img) { ?>
                        <img class="hidde" src="<?php echo $img;?>" alt="">
                      <?php break; } ?>
                    </a>
                    <p class="category-page__content--item-title"><?php echo $product['name']; ?><span><?php echo $product['price']; ?></span><a class="category-page__content--item-link" href="<?php echo $product['href']; ?>"><?php echo $button_cart; ?></a></p>
                  </div>
                </div>
                <?php } ?>
              </div>
            </div>
            <div class="row">
              <?php echo $pagination; ?>
            </div>
          </div>
          <div class="container">
  <div class="category-page__content--info">
    <div class="container"><a href="/payment"><?php echo $text_pay; ?></a><a href="/delivery"><?php echo $text_delivery; ?></a><!-- <a href="#">returns & exchanges</a> --><a href="/size"><?php echo $text_size; ?></a></div>
  </div>
</div>
        </div>
      </section>
    <?php } ?>
<?php } else { ?>
<div class="account">
  <div class="container">
    <div class="account__content">
      <h2 class="text-center"><?php echo $text_empty; ?></h2>
    </div>
  </div>
</div>
<?php } ?>
<?php echo $footer; ?>
