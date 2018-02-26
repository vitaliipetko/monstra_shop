<section class="main">
  <div class="main-slider">
    <?php foreach ($banners as $banner) { ?>
    <div class="main-slider__item">
      <a href="<?php echo $banner['link']; ?>">
        <img src="<?php echo $banner['image']; ?>" alt="">
        <div class="main-slider__item-content">
          <div class="container">
            <p class="main-slider__title"><span><?php echo $banner['title']; ?></span></p>
          </div>
        </div>
      </a>
    </div>
    <?php } ?>
  </div>
  <div class="main-slider-btn"></div>
</section>
