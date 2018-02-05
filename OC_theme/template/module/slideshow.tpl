<?php foreach ($banners as $banner) { ?>
 <section class="main-slider" style="background: url('<?php echo $banner['image']; ?>') no-repeat center center;">
   <div class="container">
     <p class="main-slider__title">New collection <span>«<?php echo $banner['title']; ?>»</span></p>
     <div class="row main-slider__buttons">
<?php break;} ?>
<?php $i = 0; 
	foreach ($banners as $banner) { 
	if ($i == 0) {?>
       <div class="col-lg-6 text-right"><a href="<?php echo $banner['link']; ?>">shop women</a></div>
  <?php }
  if ($i == 1) {?>
       <div class="col-lg-6 text"><a href="<?php echo $banner['link']; ?>">shop men</a></div>
  <?php }
  $i++;
  if ($i == 2) {
  break;
	}
}?>
     </div>
   </div>
 </section>
