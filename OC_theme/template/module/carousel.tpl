<?php foreach ($banners as $banner) { ?>
 <section class="main-slider" style="background: url('<?php echo $banner['image']; ?>') no-repeat center center;">
   <div class="container">
     <p class="main-slider__title">New collection <span>«<?php echo $banner['title']; ?>»</span></p>
     <div class="row main-slider__buttons">
       <div class="col-lg-6 text-right"><a href="<?php echo $banner['link']; ?>women">shop women</a></div>
       <div class="col-lg-6 text"><a href="<?php echo $banner['link']; ?>man">shop men</a></div>
     </div>
   </div>
 </section>
 <?php } ?>