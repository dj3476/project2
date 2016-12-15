$(document).on('turbolinks:load', function(){
	console.log($(".alert"));
  	$(".alert").delay(2500).fadeOut("slow");

  	console.log($(".notice"));
	$(".notice").delay(2500).fadeOut("slow");

    $('.rating').raty( { path: '/assets', scoreName: 'comment[rating]' });

    $('.rated').raty({ path: '/assets',
      readOnly: true,
      score: function() {
        return $(this).attr('data-score');
      }
    });
});
