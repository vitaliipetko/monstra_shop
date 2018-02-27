<?php if (count($currencies) > 1) { ?>
<span class="nav__cash">
  <?php foreach ($currencies as $currency) { ?>
    <?php if ($currency['code'] == $code) { ?>
      <?php echo $currency['title']; ?>
    <?php } ?>
  <?php } ?>
<ul class="nav__cash--menu" id="currency">
  <?php foreach ($currencies as $currency) { ?>
      <li> <a href="<?php echo $currency['code']; ?>"><?php echo $currency['title']; ?></a></li>
  <?php } ?>
</ul></span>
<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" class="hidden" id="currency__form">
  <input type="hidden" name="code" value="" />
  <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
</form>
<?php } ?>
