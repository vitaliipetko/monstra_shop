<?php echo $header; ?>
  <?php if ($categories) { ?>
    <?php if ($products) { ?>
    <section class="category-page">
      <?php if ($thumb) {?>
      <div class="category-page__title" style="background: url('<?php echo $thumb; ?>') no-repeat center center; background-size: cover;"><img src="/catalog/view/theme/monstra/assets/images/icons/footer_logo.png" alt="">
        <p class="category-page__title--text"><?php echo $heading_title; ?></p>
      </div>
      <?php } ?>
      <div class="category-page__content">
        <div class="container-fluid">
          <div class="category-page__content--filter">
            <!-- <form>
              <div class="row">
                <label>
                  <select class="turnintodropdown">
                    <option>Category</option>
                    <option>123</option>
                    <option>123</option>
                    <option>123</option>
                    <option>123</option>
                  </select>
                </label>
                <label>
                  <select class="turnintodropdown"> 
                    <option>Filter</option>
                    <option>123</option>
                    <option>123</option>
                    <option>123</option>
                    <option>123</option>
                  </select>
                </label>
                <label>
                  <select class="turnintodropdown"> 
                    <option>Sort by</option>
                    <option>123</option>
                    <option>123</option>
                    <option>123</option>
                    <option>123</option>
                  </select>
                </label>
              </div>
            </form> -->
            <?php echo $content_top; ?>
          </div>
          <div class="row">
            <?php foreach ($products as $product) { ?>
            <div class="col-lg-4 col-sm-6 col-xs-12">
              <div class="category-page__content--item">
                <span class="category-page__content--item-add_favorits" onclick="wishlist.add('<?php echo $product['product_id']; ?>');"></span>
                <img src="<?php echo $product['thumb']; ?>" alt="">
                <?php foreach ($product['second_img'] as $img) { ?>
                  <img class="hidde" src="<?php echo $img;?>" alt="">
                <?php break; } ?>
                <p class="category-page__content--item-title"><?php echo $product['name']; ?><span><?php echo $product['price']; ?></span><a href="<?php echo $product['href']; ?>">shop this></a></p>
              </div>
            </div>
            <?php } ?>
          </div>
          <div class="category-page__content--more"><a href="#">view all</a></div>
        </div>
        <div class="container">
          <div class="category-page__content--info">
            <div class="container"><a href="#">payment options</a><a href="#">delivery</a><a href="#">returns & exchanges</a><a href="#">size table</a></div>
          </div>
        </div>
      </div>
    </section>
    <?php } else {?>
    <section class="category-page">
    <?php if ($thumb) {?>
    <div class="category-page__title" style="background: url('<?php echo $thumb; ?>') no-repeat center center; background-size: cover;"><img src="/catalog/view/theme/monstra/assets/images/icons/footer_logo.png" alt="">
      <p class="category-page__title--text"><?php echo $heading_title; ?></p>
    </div>
    <?php } ?>
      <div class="runway-page__items">
        <div class="container">
          <div class="row">
            <?php foreach ($categories as $category) { ?>
            <div class="col-lg-6 col-xs-12">
              <div class="runway-page__items--item"><a href="<?php echo $category['href']; ?>"><img src="<?php echo $category['thumb']; ?>" alt="">
                  <p class="runway-page__items--item-title"><?php echo $category['name']; ?><span>view all></span></p></a></div>
            </div>
            <?php } ?>
          </div>
        </div>
      </div>
    </section>
    <section class="info">
      <div class="container"><a href="#">payment options</a><a href="#">delivery</a><a href="#">returns & exchanges</a><a href="#">size table</a></div>
    </section>
    <?php } ?>
    <?php } else {?>
      <section class="category-page">
        <?php if ($thumb) {?>
        <div class="category-page__title" style="background: url('<?php echo $thumb; ?>') no-repeat center center; background-size: cover;"><img src="/catalog/view/theme/monstra/assets/images/icons/footer_logo.png" alt="">
          <p class="category-page__title--text"><?php echo $heading_title; ?></p>
        </div>
        <?php } ?>
        <div class="category-page__content">
          <div class="container-fluid">
            <div class="category-page__content--filter">
              <!-- <form>
                <div class="row">
                  <label>
                    <select class="turnintodropdown">
                      <option>Category</option>
                      <option>123</option>
                      <option>123</option>
                      <option>123</option>
                      <option>123</option>
                    </select>
                  </label>
                  <label>
                    <select class="turnintodropdown"> 
                      <option>Filter</option>
                      <option>123</option>
                      <option>123</option>
                      <option>123</option>
                      <option>123</option>
                    </select>
                  </label>
                  <label>
                    <select class="turnintodropdown"> 
                      <option>Sort by</option>
                      <option>123</option>
                      <option>123</option>
                      <option>123</option>
                      <option>123</option>
                    </select>
                  </label>
                </div>
              </form> -->
              <?php echo $content_top; ?>
            </div>
            <div class="row">
              <?php foreach ($products as $product) { ?>
              <div class="col-lg-4 col-sm-6 col-xs-12">
                <div class="category-page__content--item">
                  <span class="category-page__content--item-add_favorits" onclick="wishlist.add('<?php echo $product['product_id']; ?>');"></span>
                  <img src="<?php echo $product['thumb']; ?>" alt="">
                  <?php foreach ($product['second_img'] as $img) { ?>
                    <img class="hidde" src="<?php echo $img;?>" alt="">
                  <?php break; } ?>
                  <p class="category-page__content--item-title"><?php echo $product['name']; ?><span><?php echo $product['price']; ?></span><a href="<?php echo $product['href']; ?>">shop this></a></p>
                </div>
              </div>
              <?php } ?>
            </div>
            <div class="category-page__content--more"><a href="#">view all</a></div>
          </div>
          <div class="container">
            <div class="category-page__content--info">
              <div class="container"><a href="#">payment options</a><a href="#">delivery</a><a href="#">returns & exchanges</a><a href="#">size table</a></div>
            </div>
          </div>
        </div>
      </section>
    <?php } ?>
<?php echo $footer; ?>
