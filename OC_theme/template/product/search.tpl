<?php echo $header; ?>
<section class="category-page">
  <div class="category-page__content">
    <div class="container-fluid">
      <div class="search_form">
        <div class="form">
          <h2><?php echo $heading_title; ?></h2>
          <div class="row">
            <div class="col-lg-3 col-sm-6 col-xs-12">
              <input type="text" name="search_key" value="<?php echo $search; ?>" placeholder="<?php echo $text_keyword; ?>" id="input-search" class="form-control" />
            </div>
            <div class="col-lg-3 col-sm-6 col-xs-12">
              <select name="category_id" class="form-control">
                <option value="0"><?php echo $text_category; ?></option>
                <?php foreach ($categories as $category_1) { ?>
                <?php if ($category_1['category_id'] == $category_id) { ?>
                <option value="<?php echo $category_1['category_id']; ?>" selected="selected"><?php echo $category_1['name']; ?></option>
                <?php } else { ?>
                <option value="<?php echo $category_1['category_id']; ?>"><?php echo $category_1['name']; ?></option>
                <?php } ?>
                <?php foreach ($category_1['children'] as $category_2) { ?>
                <?php if ($category_2['category_id'] == $category_id) { ?>
                <option value="<?php echo $category_2['category_id']; ?>" selected="selected">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_2['name']; ?></option>
                <?php } else { ?>
                <option value="<?php echo $category_2['category_id']; ?>">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_2['name']; ?></option>
                <?php } ?>
                <?php foreach ($category_2['children'] as $category_3) { ?>
                <?php if ($category_3['category_id'] == $category_id) { ?>
                <option value="<?php echo $category_3['category_id']; ?>" selected="selected">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_3['name']; ?></option>
                <?php } else { ?>
                <option value="<?php echo $category_3['category_id']; ?>">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_3['name']; ?></option>
                <?php } ?>
                <?php } ?>
                <?php } ?>
                <?php } ?>
              </select>
            </div>
            <div class="col-lg-3 col-sm-6 col-xs-12">
              <label class="checkbox-inline">
                <?php if ($sub_category) { ?>
                <input type="checkbox" name="sub_category" value="1" checked="checked" />
                <?php } else { ?>
                <input type="checkbox" name="sub_category" value="1" />
                <?php } ?>
                <?php echo $text_sub_category; ?></label>
            </div>
            <div class="col-lg-3 col-sm-6 col-xs-12">
              <p>
                <label class="checkbox-inline">
                  <?php if ($description) { ?>
                  <input type="checkbox" name="description" value="1" id="description" checked="checked" />
                  <?php } else { ?>
                  <input type="checkbox" name="description" value="1" id="description" />
                  <?php } ?>
                  <?php echo $entry_description; ?></label>
              </p>
            </div>
          </div>
          <div class="row">
            <div class="col-lg-3 col-sm-6 col-xs-12">
              <input type="button" value="<?php echo $button_search; ?>" id="button-search" class="button" />
            </div>
          </div>
        </div>
      </div>
      <?php if ($products) { ?>
      <div class="items">
        <?php $i = 0; ?>
        <?php foreach ($products as $product) { ?>
        <?php if ($i==0) { ?>
        <div class="row">
        <?php } ?>
        <div class="product-layout col-lg-4 col-sm-4 col-xs-12">
          <div class="category-page__content--item">
            <span class="category-page__content--item-add_favorits" onclick="wishlist.add('<?php echo $product['product_id']; ?>');"></span>
            <a href="<?php echo $product['href']; ?>">
              <img src="<?php echo $product['thumb']; ?>" alt="">
                    <?php foreach ($product['second_img'] as $img) { ?>
                <img class="hidde" src="<?php echo $img;?>" alt="">
              <?php break; } ?>
            </a>
            <p class="category-page__content--item-title"><?php echo $product['name']; ?><span><?php echo $product['price']; ?></span><a class="category-page__content--item-link" href="<?php echo $product['href']; ?>"><?php echo $button_cart; ?></a></p>
          </div>
        </div>
        <?php $i++; ?>
        <?php if ($i == 3) { ?>
        </div>
        <?php $i=0;} ?>
        <?php } ?>
        <?php if ($i!= 0) {?>
        </div>
        <?php } ?>
      </div>
      <div class="row">
        <?php echo $pagination; ?>
      </div>
      <?php } else { ?>
      <div class="empty">
        <h2 class="text-center"><?php echo $text_empty; ?></h2>
      </div>
      <?php } ?>
    </div>
<!--           <div class="container">
      <div class="category-page__content--info">
        <div class="container"><a href="#">payment options</a><a href="#">delivery</a><a href="#">returns & exchanges</a><a href="#">size table</a></div>
      </div>
    </div> -->
  </div>
</section>
<script type="text/javascript"><!--
$('#button-search').on('click', function() {
	url = 'index.php?route=product/search';

	var search = $('input[name=\'search_key\']').prop('value');

	if (search) {
		url += '&search=' + encodeURIComponent(search);
	}

	var category_id = $('select[name=\'category_id\']').prop('value');

	if (category_id > 0) {
		url += '&category_id=' + encodeURIComponent(category_id);
	}

	var sub_category = $('input[name=\'sub_category\']:checked').prop('value');

	if (sub_category) {
		url += '&sub_category=true';
	}

	var filter_description = $('input[name=\'description\']:checked').prop('value');

	if (filter_description) {
		url += '&description=true';
	}

	location = url;
});

$('input[name=\'search_key\']').bind('keydown', function(e) {
	if (e.keyCode == 13) {
		$('#button-search').trigger('click');
	}
});

$('select[name=\'category_id\']').on('change', function() {
	if (this.value == '0') {
		$('input[name=\'sub_category\']').prop('disabled', true);
	} else {
		$('input[name=\'sub_category\']').prop('disabled', false);
	}
});

$('select[name=\'category_id\']').trigger('change');
--></script>
<?php echo $footer; ?>