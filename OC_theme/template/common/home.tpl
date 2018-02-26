<?php echo $header; ?>
<?php echo $content_top; ?>
<?php echo $content_bottom; ?>
	<?php if ($articles) { ?>
	<section class="main-stories">
	  <div class="container">
	    <p class="main-stories__title"><?php echo $name; ?></p>
	    	<?php $i=0;$n=0 ?>
	    	<?php foreach ($articles as $article) { ?>
	    	<?php if ($i == 0) { ?>
		    <div class="row">
	    	<?php } ?>
	    	<div class="col-lg-4 col-sm-12">
	    	  <a href="<?php echo $article['href']; ?>"><div class="main-stories__item"><img src="<?php echo $article['img']; ?>" alt="">
	    	  	  <p class="main-stories__item--description"><?php echo $article['name']; ?></p><p class="main-stories__item--link"><?php echo $button_read_more; ?></p>
	    	  	</div></a>
	    	</div>
	    	<?php $i++;$n++ ?>
	    	<?php if ($i == 3) { ?>
		    </div>
	    	<?php $i=0;} ?>
	    	<?php if ($n == 6) {break;} ?>
	    	<?php } ?>
	    	<?php if ($i != 0) { ?>
		    </div>
	    	<?php } ?>
	    </div>
	  </div>
	</section>
	<?php } ?>
<?php echo $footer; ?>