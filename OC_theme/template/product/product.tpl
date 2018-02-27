<?php echo $header; ?>
<section class="product-page">
  <div class="product-page__modal"><img src="<?php echo $thumb; ?>" alt=""></div>
  <div class="container">
    <div class="product-page__content">
      <div class="row">
        <div class="col-lg-7 col-sm-12">
          <div class="row">
            <div class="col-lg-9 col-xs-12"><span class="product-page__content--main-img-icon"></span><img class="product-page__content--main-img" src="<?php echo $thumb; ?>" alt="" data-popup="<?php echo $image['popup']; ?>"></div>
            <div class="col-lg-3 col-xs-12">
              <div class="product-page__content--images">
                <img class="active-img" src="<?php echo $thumb; ?>" alt="" data-popup="<?php echo $image['popup']; ?>">
                <?php foreach ($images as $image) { ?>
                  <img src="<?php echo $image['thumb']; ?>" alt="" data-popup="<?php echo $image['popup']; ?>">
                <?php } ?>
              </div>
            </div>
          </div>
        </div>
        <div class="col-lg-5 col-sm-12">
          <div class="product-page__content--description"><span class="product-page__content--description-add_favorits" onclick="wishlist.add('<?php echo $product_id; ?>');"></span>
            <p class="product-page__content--description-title"><?php echo $heading_title; ?></p>
            <p class="product-page__content--description-stock"><?php echo $stock; ?></p>
            <p class="product-page__content--description-price"><?php echo $price; ?></p>
            <p class="product-page__content--description-vendor"><?php echo $text_sku; ?> <?php echo $sku; ?></p>
            <form id="product">
              <div class="row">
              <?php foreach ($options as $option) { ?>
              <?php if ($option['type'] == 'select') { ?>
              <label class="option">
                <select class="turnintodropdown" name="option[<?php echo $option['product_option_id']; ?>]" id="input-option<?php echo $option['product_option_id']; ?>" data="select">
                  <option value=""><?php echo $option['name']; ?></option>
                  <?php foreach ($option['product_option_value'] as $option_value) { ?>
                  <option value="<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?>
                  </option>
                  <?php } ?>
                </select>
              </label>
              <?php } ?>
              <?php } ?>
              </div>
              <a class="guide" href="/size"><?php echo $text_size; ?></a>
              <!-- AddThis Button BEGIN -->
              <div class="addthis_toolbox addthis_default_style"><a class="addthis_button_facebook_like" fb:like:layout="button_count"></a> <a class="addthis_button_tweet"></a> <a class="addthis_button_pinterest_pinit"></a> <a class="addthis_counter addthis_pill_style"></a></div>
              <script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-515eeaf54693130e"></script>
              <!-- AddThis Button END -->
              <input type="hidden" name="product_id" value="<?php echo $product_id; ?>" />
              <input type="hidden" name="quantity" value="<?php echo $minimum; ?>" size="2" id="input-quantity" class="form-control" />
              <input class="add" type="button" value="<?php echo $text_add; ?>" data-btn="<?php echo $text_add; ?>">
              <input type="hidden" name="before" value="<?php echo $text_before; ?>">
              <input type="hidden" name="complete" value="<?php echo $text_complete; ?>">
            </form>
          </div>
        </div>
      </div>
    </div>
    <div class="product-page__details">
      <p class="product-page__details--title"><?php echo $tab_description; ?></p>
      <div class="product-page__details--description"><?php echo $description; ?></div>
      <table class="product-page__details--attr">
        <?php foreach ($attribute_groups as $attribute_group) { ?>
        <thead>
          <tr>
            <td colspan="2"><strong><?php echo $attribute_group['name']; ?></strong></td>
          </tr>
        </thead>
        <tbody>
          <?php foreach ($attribute_group['attribute'] as $attribute) { ?>
          <tr>
            <td><?php echo $attribute['name']; ?></td>
            <td><?php echo $attribute['text']; ?></td>
          </tr>
          <?php } ?>
        </tbody>
        <?php } ?>
      </table>
      <div class="product-page__details--tags"><?php if ($tags) { ?>
        <p><?php echo $text_tags; ?>
          <?php for ($i = 0; $i < count($tags); $i++) { ?>
          <?php if ($i < (count($tags) - 1)) { ?>
          <a href="<?php echo $tags[$i]['href']; ?>"><?php echo $tags[$i]['tag']; ?></a>,
          <?php } else { ?>
          <a href="<?php echo $tags[$i]['href']; ?>"><?php echo $tags[$i]['tag']; ?></a>
          <?php } ?>
          <?php } ?>
        </p>
        <?php } ?></div>
    </div>
  <?php echo $content_bottom; ?>
  </div>
</section>
<?php if ($products) { ?>
<section class="related">
  <div class="category-page__content">
    <div class="container-fluid">
      <p class="related--title"><?php echo $text_related; ?></p>
        <?php $i = 0; ?>
        <?php foreach ($products as $product) { ?>
        <?php if ($i == 0) { ?>
          <div class="row">
        <?php } ?>
        <div class="col-lg-4 col-sm-4 col-xs-12">
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
        <?php $i++; ?>
        <?php if ($i == 3) { ?>
          </div>
        <?php $i=0;} ?>
        <?php } ?>
        <?php if ($i != 0) {?>
        </div>
        <?php } ?>
    </div>
  </div>
</section>
<?php } ?>
<?php echo $footer; ?>