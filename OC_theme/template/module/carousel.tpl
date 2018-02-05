<section class="main-colection">
  <div class="container">
    <div class="row">
      <div class="col-lg-6">
      	<?php foreach ($banners as $banner) { ?>
	      	<img class="main-colection__main-image" src="<?php echo $banner['image']; ?>" alt="">
	      	<?php break; ?>
      	<?php } ?>
      </div>
      <div class="col-lg-6">
      	<?php foreach ($banners as $banner) { ?>
        <div class="main-colection__title"><img class="main-colection__title--logo" src="/catalog/view/theme/monstra/assets/images/content/main-colection_logo.png" alt="">
          <p class="main-colection__title--title"><?php echo $banner['title']; ?></p>
          <p class="main-colection__title--description">now available</p><a class="main-colection__title--link" href="<?php echo $banner['link']; ?>">discover the collection</a>
        </div>
      	<?php break; ?>
      	<?php } ?>
        <?php 
				$i = 0;
        foreach ($banners as $banner) { 
	        if ($i == 1) {?>
	        <img src="<?php echo $banner['image']; ?>" alt="">
	        <?php }
	        $i++;
      	} ?>
      </div>
    </div>
  </div>
</section>