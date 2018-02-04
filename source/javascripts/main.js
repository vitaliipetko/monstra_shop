$( document ).ready(function() {
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

	$('.nav__main-menu--mobile-btn').click(function(event) {
		$('.nav__main-menu--mobile').slideDown('400');
	});
	$('.nav__main-menu--mobile .close').click(function(event) {
		$('.nav__main-menu--mobile').slideUp('400');
	});
});