<?php echo $header; ?>
<section class="cart-page">
  <div class="container">
    <p class="cart-page__title"><?php echo $heading_title; ?></p>
    <?php if ($attention) { ?>
    <div class="alert alert-info"><i class="fa fa-info-circle"></i> <?php echo $attention; ?>
      <button type="button" class="close" data-dismiss="alert">&times;</button>
    </div>
    <?php } ?>
    <?php if ($success) { ?>
    <div class="alert alert-success"><i class="fa fa-check-circle"></i> <?php echo $success; ?>
      <button type="button" class="close" data-dismiss="alert">&times;</button>
    </div>
    <?php } ?>
    <?php if ($error_warning) { ?>
    <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
      <button type="button" class="close" data-dismiss="alert">&times;</button>
    </div>
    <?php } ?>
    <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
      <?php foreach ($products as $product) { ?>
      <div class="cart-page__item">
        <div class="row">
          <div class="col-lg-4 col-xs-12"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-thumbnail" /></a></div>
          <div class="col-lg-4 col-xs-12">
            <p class="cart-page__item--title"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a><?php if (!$product['stock']) { ?>
                  <span class="text-danger">***</span>
                  <?php } ?></p>
            <p class="cart-page__item--price"><?php echo $product['price']; ?></p>
            <p class="cart-page__item--option">
              <?php if ($product['option']) { ?>
              <?php foreach ($product['option'] as $option) { ?>
              <?php echo $option['name']; ?>: <?php echo $option['value']; ?><br>
              <?php } ?>
              <?php } ?>
            </p>
          </div>
          <div class="col-lg-4 col-xs-12">
            <p>Колличество</p>
            <input type="number" name="quantity[<?php echo $product['cart_id']; ?>]" value="<?php echo $product['quantity']; ?>" size="1" min="0">
            <button type="submit" data-toggle="tooltip" title="<?php echo $button_update; ?>" class="btn btn-primary"><i class="fresh"></i></button>
            <button type="button" data-toggle="tooltip" title="<?php echo $button_remove; ?>" class="btn btn-danger" onclick="cart.remove('<?php echo $product['cart_id']; ?>');"><i class="del"></i></button>
            <p class="cart-page__item--price"><?php echo $product['total']; ?></p>
          </div>
        </div>
      </div>
      <?php } ?>
    </form>
    <div class="cart-page__btn">
      <p class="cart-page__total">
        <?php foreach ($totals as $total) {?>
          <?php echo $total['title']; ?>:
          <?php echo $total['text']; ?>
          <br>
        <?php } ?>
      </p>
      <a href="<?php echo $checkout; ?>" class="cart-page__apply"><?php echo $button_checkout; ?></a></div>
  </div>
</section>
<?php echo $footer; ?>
