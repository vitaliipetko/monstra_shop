<?php echo $header; ?>
<section class="contacts">
  <div class="container">
    <div class="contacts__description">
      <p class="contacts__description--title"><?php echo $store; ?></p>
      <div class="row">
        <div class="col-lg-5 text-right">
          <p><?php echo $address; ?></p>
        </div>
        <div class="col-lg-2"></div>
        <div class="col-lg-5 text-left">
          <p>
            <?php if ($open) { ?>
            <?php echo $text_open; ?><br />
            <?php echo $open; ?>
            <?php } ?>
          </p>
        </div>
      </div>
      <p><a href="tel:<?php echo $telephone; ?>"><?php echo $telephone; ?></a></p>
      <?php if ($comment) { ?>
      <p><?php echo $text_comment; ?></p>
      <p><?php echo $comment; ?></p>
      <?php } ?>
      <p><a href="#"><img src="/catalog/view/theme/monstra/assets/images/icons/fb_b.svg" alt=""></a><a href="#"><img src="/catalog/view/theme/monstra/assets/images/icons/instagram_b.svg" alt=""></a></p>
    </div>
    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d6042.039133232623!2d30.474058020578145!3d50.4529363619433!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x40d4ce87ba59af8b%3A0x1805366a98b7b74!2z0LLRg9C70LjRhtGPINCT0YDQuNCz0L7RgNGW0Y8g0JDQvdC00YDRjtGJ0LXQvdC60LAsIDbQkywg0JrQuNGX0LIsIDAyMDAw!5e0!3m2!1suk!2sua!4v1518997929049" width="100%" height="450" frameborder="0" style="border:0;" allowfullscreen></iframe>
  </div>
</section>
<?php echo $footer; ?>
