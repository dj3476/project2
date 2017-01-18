var refreshRating = function() {
    $('.rating').raty( { path: '/assets', scoreName: 'comment[rating]' });
    $('.rated').raty({ path: '/assets',
        readOnly: true,
        score: function() {
            return $(this).attr('data-score');
        }
    });
};


$(document).on('turbolinks:load ajaxSuccess', function(){
    $(".alert").delay(4000).fadeOut("slow");

    /* raty plugin */
    refreshRating();

    /* elevate zoom plugin*/
    $('.img-zoom').elevateZoom();
});

/*
$(document).on('turbolinks:load', function(){
  console.log($(".alert"));
  $(".alert").delay(4000).fadeOut("slow");
});
/*$(document).on('turbolinks:load', function(){
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

    elevate zoom plugin
    $(".img-zoom").elevateZoom();
});*/
