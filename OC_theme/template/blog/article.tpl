<?php echo $header; ?>
<section class="blog">
  <div class="container">
    <div class="blog__content">
      <div class="blog__content--item">
        <?php if ($img) { ?>
            <img src="<?php echo $img; ?>" alt="">
        <?php } ?>
        <h3><?php echo $heading_title; ?></h3>
        <p class="blog__content--item-title"><?php echo $date; ?></p>
        <!-- AddThis Button BEGIN -->
        <div class="addthis_toolbox addthis_default_style"><a class="addthis_button_facebook_like" fb:like:layout="button_count"></a> <a class="addthis_button_tweet"></a> <a class="addthis_button_pinterest_pinit"></a> <a class="addthis_counter addthis_pill_style"></a></div>
        <script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-515eeaf54693130e"></script>
        <!-- AddThis Button END -->
        <div class="blog__content--item-description"><?php echo $description; ?></div>
      </div>
    </div>
  </div>
</section>
<?php echo $footer; ?>
