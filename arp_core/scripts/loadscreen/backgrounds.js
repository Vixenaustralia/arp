$(document).ready(function(){

    var header = $('body');
    
    var backgrounds = new Array(
        'url(../images/stills/bg5.jpg)',
        'url(../images/stills/bg6.jpg)',
        'url(../images/stills/bg7.jpg)',
        'url(../images/stills/bg8.jpg)',
        'url(../images/stills/bg9.jpg)',
        'url(../images/stills/bg1.jpg)',
        'url(../images/stills/bg2.jpg)',
        'url(../images/stills/bg3.jpg)',
        'url(../images/stills/bg4.jpg)'
    );
    
    var current = 0;
    
    function nextBackground() {
        current++;
        current = current % backgrounds.length;
        header.css('background-image', backgrounds[current]);
    }

    setInterval(nextBackground, 10000);
    
    header.css('background-image', backgrounds[0]);
});

setTimeout(function() {
    $('#NSLlogo').fadeIn('slow');
}, 0);

setTimeout(function() {
    $('#NSLlogo').fadeOut('slow');
}, 3000);

setTimeout(function() {
    $('#notice').fadeIn('slow');
}, 4000);

setTimeout(function() {
    $('#notice').fadeOut('slow');
}, 9000);

setTimeout(function() {
    $('.beforeload').fadeOut('slow');
    $('#load-header').fadeIn('slow');
    $('#load-menu').fadeIn('slow');
    $('#load-footer').fadeIn('slow');
}, 10000);