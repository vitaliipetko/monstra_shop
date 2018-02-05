<?php if (count($languages) > 1) { ?>
<span class="nav__lang">  <?php foreach ($languages as $language) { ?>
  <?php if ($language['code'] == $code) { 
  echo $language['name'];
  } ?>
  <?php } ?>
<ul class="nav__lang--menu" id="language">
  <?php foreach ($languages as $language) { ?>
  <li><a href="<?php echo $language['code']; ?>"><?php echo $language['name']; ?></a></li>
  <?php } ?>
</ul>
</span>
<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="language__form" class="hidden">
  <input type="hidden" name="code" value="" />
  <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
</form>
<?php } ?>
