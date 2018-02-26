<?php echo $header; ?>
<div class="account">
  <div class="container">
    <div class="account__content">
      <ul class="breadcrumb">
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
        <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
        <?php } ?>
      </ul>
        <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
          <h2><?php echo $heading_title; ?></h2>
          <div class="buttons">
            <div class="pull-right"><a href="<?php echo $continue; ?>" class="btn btn-primary"><?php echo $button_continue; ?></a></div>
          </div>
          <?php echo $content_bottom; ?>
        </div>
    </div>
  </div>
</div>
<?php echo $footer; ?>