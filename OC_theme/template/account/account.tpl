<?php echo $header; ?>
<div class="account">
  <div class="container">
    <div class="account__content">
      <ul class="breadcrumb">
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
        <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
        <?php } ?>
      </ul>
      <?php if ($success) { ?>
      <div class="alert alert-success"><i class="fa fa-check-circle"></i> <?php echo $success; ?></div>
      <?php } ?>
      <h2><?php echo $text_my_account; ?></h2>
        <div id="content"><?php echo $content_top; ?>
          <ul class="list-unstyled">
            <li><a href="<?php echo $edit; ?>"><?php echo $text_edit; ?></a></li>
            <li><a href="<?php echo $address; ?>"><?php echo $text_address; ?></a></li>
            <li><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
          </ul>
          <h2><?php echo $text_my_orders; ?></h2>
          <ul class="list-unstyled">
            <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
            <?php if ($reward) { ?>
            <!-- <li><a href="<?php echo $reward; ?>"><?php echo $text_reward; ?></a></li> -->
            <?php } ?>
            <li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
          </ul>
          <h2><?php echo $text_my_newsletter; ?></h2>
          <ul class="list-unstyled">
            <li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
          </ul>
          <?php echo $content_bottom; ?>
        </div>
    </div>
  </div>
</div>
<?php echo $footer; ?>
