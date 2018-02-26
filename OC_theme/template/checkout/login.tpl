<div class="content-box">
  <h2><?php echo $text_new_customer; ?></h2>
  <!-- <p><?php echo $text_checkout; ?></p> -->
<!--   <div class="radio">
    <label>
      <?php if ($account == 'register') { ?>
      <input type="checkbox" name="account" value="register" checked="checked" />
      <?php } else { ?>
      <input type="checkbox" name="account" value="register" />
      <?php } ?>
      <?php echo $text_register; ?></label>
  </div> -->
  <?php echo $ulogin_form_marker;?>
  <!-- <?php if ($checkout_guest) { ?>
  <div class="radio">
    <label>
      <?php if ($account == 'guest') { ?>
      <input type="checkbox" name="account" value="guest" checked="checked" />
      <?php } else { ?>
      <input type="checkbox" name="account" value="guest" />
      <?php } ?>
      <?php echo $text_guest; ?></label>
  </div>
  <?php } ?>
  <p><?php echo $text_register_account; ?></p>
  <div class="buttons clearfix">
    <div class="pull-right">
      <input type="button" value="<?php echo $button_continue; ?>" id="button-account" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-primary" />
    </div>
  </div> -->
</div>