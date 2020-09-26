$(document).ready(function(){

    var header = $('body');
    
    var backgrounds = new Array(
        'url(../images/stills/bg1.jpg)',
        'url(../images/stills/bg2.jpg)',
        'url(../images/stills/bg3.jpg)',
        'url(../images/stills/bg4.jpg)',
        'url(../images/stills/bg5.jpg)',
        'url(../images/stills/bg6.jpg)',
        'url(../images/stills/bg7.jpg)',
        'url(../images/stills/bg8.jpg)',
        'url(../images/stills/bg9.jpg)'
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