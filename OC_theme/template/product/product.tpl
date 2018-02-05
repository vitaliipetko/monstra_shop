<?php echo $header; ?>
<section class="product-page">
  <div class="product-page__modal"><img src="<?php echo $thumb; ?>" alt=""></div>
  <div class="container">
    <div class="product-page__content">
      <div class="row">
        <div class="col-lg-7 col-sm-12">
          <div class="row">
            <div class="col-lg-9 col-xs-12"><span class="product-page__content--main-img-icon"></span><img class="product-page__content--main-img" src="<?php echo $thumb; ?>" alt=""></div>
            <div class="col-lg-3 col-xs-12">
              <div class="product-page__content--images">
                <img class="active-img" src="<?php echo $thumb; ?>" alt="">
                <?php foreach ($images as $image) { ?>
                  <img src="<?php echo $image['thumb']; ?>" alt="">
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
              <a class="guide" href="#"><?php echo $text_size; ?></a>
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
    </div>
  <?php echo $content_bottom; ?>
  </div>
</section>

<?php echo $footer; ?>