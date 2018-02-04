<?php foreach ($banners as $banner) { ?>
<section class="main-category">
  <div class="container"><img class="main-category__img" src="<?php echo $banner['image']; ?>" alt=""><a class="main-category__link" href="<?php echo $banner['link']; ?>">shop <?php echo $banner['title']; ?></a></div>
</section>
<?php } ?>