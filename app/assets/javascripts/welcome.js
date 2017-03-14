// $('#myModal').on('shown.bs.modal', function () {
//   console.log('fire');
//   $('#myInput').focus()
// })
$(".modal-transparent").on('show.bs.modal', function () {
  setTimeout( function() {
    $(".modal-backdrop").addClass("modal-backdrop-transparent");
  }, .5);
});
$(".modal-transparent").on('hidden.bs.modal', function () {
  $(".modal-backdrop").addClass("modal-backdrop-transparent");
});
$(".modal-transparent_register").on('show.bs.modal', function () {
  console.log('fire');
  setTimeout( function() {
    $(".modal-backdrop").addClass("modal-backdrop-transparent");
  }, .5);
});
$(".modal-transparent_register").on('hidden.bs.modal', function () {
  $(".modal-backdrop").addClass("modal-backdrop-transparent");
});

$('.cd-gallery a').on('click', function(event){
	event.preventDefault();
	openItemInfo($(this).attr('href'));
});
function openItemInfo(url) {
	/* check if mobile or desktop */
	var mq = viewportSize();
	if( $('.cd-gallery').offset().top > $(window).scrollTop() && mq != 'mobile') {
		/* if content is visible above the .cd-gallery - scroll before opening the folding panel */
		$('body,html').animate({
			'scrollTop': $('.cd-gallery').offset().top
		}, 100, function(){
           	toggleContent(url, true);
        });

	} else {
		toggleContent(url, true);
	}
}

function toggleContent(url, bool) {
	if( bool ) {
		/* load and show new content */
		$('.cd-fold-content').load(url+' .cd-fold-content > *', function(event){
			$('body').addClass('overflow-hidden');
			$('.cd-folding-panel').addClass('is-open');
			$('.cd-main').addClass('fold-is-open');
		});

	} else {
		/* close the folding panel */
		$('.cd-folding-panel').removeClass('is-open')
		$('.cd-main').removeClass('fold-is-open');

		/* ...*/
	}

}
