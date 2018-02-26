<?php echo $header; ?>
<?php if ($articles) { ?>
<section class="blog">
  <div class="container">
    <div class="blog__content">
      <p class="blog__content--title"><?php echo $name; ?></p>
      <?php $i=0; ?>
      <?php foreach ($articles as $article) { ?>
      <?php if ($i == 0) { ?>
      <div class="row">
      <?php } ?>
        <div class="col-lg-4 col-sm-12">
          <a href="<?php echo $article['href']; ?>">
            <div class="blog__content--item">
              <?php if ($article['img']) { ?>
                <img src="<?php echo $article['img']; ?>" alt="">
              <?php } ?>
              <p class="blog__content--item-title"><?php echo $article['name']; ?></p>
              <div class="blog__content--item-content"><?php echo $article['intro_text']; ?></div>
            </div>
          </a>
        </div>
      <?php $i++ ?>
      <?php if ($i == 3) { ?>
      </div>
      <?php $i=0;} ?>
      <?php } ?>
      <?php if ($i != 0) { ?>
      </div>
      <?php } ?>
    </div>
    <?php echo $pagination; ?>
  </div>
</section>
<?php } ?>
<?php if (!$articles) { ?>
<section class="blog">
  <div class="container">
    <div class="blog__content">
      <p class="blog__content--title"><?php echo $name; ?></p>
      <p><?php echo $text_empty; ?></p>
    </div>
  </div>
</section>
<?php } ?>
<?php echo $footer; ?>
