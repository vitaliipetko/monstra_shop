$( document ).ready(function() {
	//slider
	$('.main-slider').slick({
		dots: true,
		adaptiveHeight: true,
		autoplay: true,
		appendDots: $('.main-slider-btn'),
		touchThreshold: 12
	});
	
	var nav_h = $('.nav').height(),
			off = $('.nav').offset().top;

	$(window).scroll(function() {
		var scr = $(this).scrollTop();
		if (scr > off) {
			$('body').addClass('fixed');
		} else {
			$('body').removeClass('fixed');
		}
	});

	$('.panel-heading').click(function(event) {
		console.log('true');
		$('.panel-body').slideUp(400);
		$(this).next().children('.panel-body').slideDown(400);
	});

	$('button.close').click(function(event) {
		$(this).parent().fadeOut(400);
	});

	$('.nav__main-menu--mobile-btn').click(function(event) {
		$('.nav__main-menu--mobile').slideDown('400');
	});
	$('.nav__main-menu--mobile .close').click(function(event) {
		$('.nav__main-menu--mobile').slideUp('400');
	});

	$('.product-page__content--images img').click(function(event) {
		var src = $(this).attr('src');

		$('.active-img').removeClass('active-img');
		$(this).addClass('active-img');

		$('.product-page__content--main-img').attr('src', src);
	});

	$('.product-page__content--main-img').click(function(event) {
		var src = $('.product-page__content--main-img').attr('src');
		$('.product-page__modal img').attr('src', src);
		$('.product-page__modal').fadeIn(400);
		$('body').addClass('modal');
	});

	$('.product-page__modal').click(function(event) {
		$(this).fadeOut(400);
		$('body').removeClass('modal');
	});

	//lang
	$('.nav__lang').click(function(event) {
		$('.nav__lang--menu').slideToggle(400);
	});

	$('#language a').on('click', function(e) {
		e.preventDefault();

		$('#language__form input[name=\'code\']').attr('value', $(this).attr('href'));

		$('#language__form').submit();
	});

	//search
	$('.nav__search--btn').on('click', function() {
		url = $('base').attr('href') + 'index.php?route=product/search';

		var value = $('#search').val();

		if (value) {
			url += '&search=' + encodeURIComponent(value);
		}

		location = url;
	});

});

//add
function updatecart(id) {
	var quantity = $('input[name=quantity-'+id+']').val();
	cart.update(id, quantity);
}
var cart = {
	'add': function(product_id, quantity) {
		$.ajax({
			url: 'index.php?route=checkout/cart/add',
			type: 'post',
			data: 'product_id=' + product_id + '&quantity=' + (typeof(quantity) != 'undefined' ? quantity : 1),
			dataType: 'json',
			beforeSend: function() {
				$('.add').val($('input[name=before]').val());
			},
			complete: function() {
				$('.add').val($('input[name=complete]').val());
			},
			success: function(json) {
				$('.add').val($('input[name=complete]').val());
				setTimeout(function() {
					$('.add').val($('.add').attr('data-btn'));
				}, 3000);

				if (json['redirect']) {
					location = json['redirect'];
				}

				if (json['success']) {
					$('.cart').load('index.php?route=common/cart/info span');
				}
			},
      error: function(xhr, ajaxOptions, thrownError) {
          alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
      }
		});
	},
	'update': function(key, quantity) {
		$.ajax({
			url: 'index.php?route=checkout/cart/edit',
			type: 'post',
			data: 'key=' + key + '&quantity=' + (typeof(quantity) != 'undefined' ? quantity : 1),
			dataType: 'json',
			beforeSend: function() {
			},
			complete: function() {
			},
			success: function(json) {
				// Need to set timeout otherwise it wont update the total
				location = 'index.php?route=checkout/cart';
			},
      error: function(xhr, ajaxOptions, thrownError) {
          alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
      }
		});
	},
	'remove': function(key) {
		$.ajax({
			url: 'index.php?route=checkout/cart/remove',
			type: 'post',
			data: 'key=' + key,
			dataType: 'json',
			beforeSend: function() {
			},
			complete: function() {
			},
			success: function(json) {
				// Need to set timeout otherwise it wont update the total
					location = 'index.php?route=checkout/cart';
			},
      error: function(xhr, ajaxOptions, thrownError) {
          alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
      }
		});
	}
};

var wishlist = {
	'add': function(product_id) {
		$.ajax({
			url: 'index.php?route=account/wishlist/add',
			type: 'post',
			data: 'product_id=' + product_id,
			dataType: 'json',
			success: function(json) {

				if (json['redirect']) {
					location = json['redirect'];
				}

				if (json['success']) {
					$('.wishlist span').html(json['total']);
				}

			},
	        error: function(xhr, ajaxOptions, thrownError) {
	            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
	        }
		});
	},
	'remove': function() {

	}
};

$('#product').change(function(){
	$.ajax({
		url: 'index.php?route=product/product/getRecurringDescription',
		type: 'post',
		data: $('input[name=\'product_id\'], input[name=\'quantity\'], select[name=\'recurring_id\']'),
		dataType: 'json',
		beforeSend: function() {
		},
		success: function(json) {
		}
	});
});

$('#product .add').on('click', function() {
  $.ajax({
    url: 'index.php?route=checkout/cart/add',
    type: 'post',
    data: $('#product input[type=text], #product input[type=hidden], #product input[type=radio]:checked, #product input[type=checkbox]:checked, #product select, #product textarea'),
    dataType: 'json',
    beforeSend: function() {
      $('.add').val($('input[name=before]').val());
    },
    complete: function() {

    },
    success: function(json) {
    	$('.add').val($('.add').attr('data-btn'));
    	$('.err').removeClass('err');
      if (json['error']) {
        if (json['error']['option']) {
          for (i in json['error']['option']) {
            var element = $('#input-option' + i.replace('_', '-'));

            if (element.parent().hasClass('input-group')) {
				      console.log('err');
              element.next().addClass('err');
            } else {
				      console.log('err');
              element.next().addClass('err');
            }
          }
        }

        if (json['error']['recurring']) {
        	console.log('err');
          $('select[name=\'recurring_id\']').after('<div class="text-danger">' + json['error']['recurring'] + '</div>');
        }

        // Highlight any found errors
        $('.text-danger').parent().addClass('has-error');
      }

      if (json['success']) {
      	$('.add').val($('input[name=complete]').val());
      	setTimeout(function() {
      		$('.add').val($('.add').attr('data-btn'));
      	}, 3000);
      	$('.cart').load('index.php?route=common/cart/info span');
      }
    },
    error: function(xhr, ajaxOptions, thrownError) {
        alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
    }
  });
});