<?php echo $header; ?>
<div class="account">
  <div class="container">
    <div class="account__content">
    	<ul class="breadcrumb">
    	  <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    	  <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    	  <?php } ?>
    	</ul>
      <?php echo $content_top; ?>
    </div>
  </div>
</div>
<?php echo $footer; ?>