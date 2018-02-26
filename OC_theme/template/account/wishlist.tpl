<?php echo $header; ?>
<section class="wishlist-page">
  <div class="container">
    <p class="wishlist-page__title"><?php echo $heading_title; ?></p>
    <?php if ($products) { ?>
      <?php foreach ($products as $product) { ?>
      <div class="wishlist-page__item col-lg-6 col-md-12">
        <div class="row">
          <div class="col-lg-6 col-sm-12"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-thumbnail" /></a></div>
          <div class="col-lg-6 col-sm-12">
            <p class="wishlist-page__item--title"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></p>
            <p class="wishlist-page__item--price"><?php echo $product['price']; ?></p>
            <a href="<?php echo $product['remove']; ?>" data-toggle="tooltip" title="<?php echo $button_remove; ?>" class="wishlist-page__item--del"><i class="fa fa-times"></i></a>
            <span onclick="cart.add('<?php echo $product['product_id']; ?>');" class="wishlist-page__item--link"><?php echo $button_cart; ?></span>
          </div>
        </div>
      </div>
      <?php } ?>
    <?php } else {?>
    <p class="wishlist-page__empty"><?php echo $text_empty; ?></p>
    <?php } ?>
  </div>
</section>
<?php echo $footer; ?>