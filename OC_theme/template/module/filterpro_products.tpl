<?php $i = 0; ?>
<?php foreach ($products as $product) { ?>
<?php if ($i==0) { ?>
<div class="row">
<?php } ?>
<div class="product-layout col-lg-4 col-sm-4 col-xs-12">
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
<?php if ($i!= 0) {?>
</div>
<?php } ?>


<?php if(empty($products)) { ?>
<div class="product-layout">
	<?php echo $text_empty; ?>
</div>
<?php } ?>