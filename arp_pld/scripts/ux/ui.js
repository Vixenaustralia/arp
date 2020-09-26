$(function(){
    window.onload = (e) => {
        window.addEventListener("message", (event) => {
            var item = event.data;
            if(item !== undefined && item !== 'undefined' && item.type === "pos") {
                document.getElementById("number").innerHTML = item.gps;
            }
            if(item !== undefined && item !== 'undefined' && item.type === "pld") {
                document.getElementById("direction").innerHTML = item.dir;
                document.getElementById("street").innerHTML = item.st;
                document.getElementById("suburb").innerHTML = item.sub;
                if (item.pldui === true) {
                    $('.pld').show();
                    $('.minimap').show();
                }
                if (item.pldui === false) {
                    $('.pld').hide();
                    $('.minimap').hide();
                }
            }
            if(item !== undefined && item !== 'undefined' && item.type === "mm") {
                $(".minimap").css('left', item.startx);
                $(".minimap").css('top', item.starty);
                $(".minimap").css('width', item.width);
                $(".minimap").css('height', item.height);
                $(".pld").css('bottom', item.stopy);
                $(".pld").css('left', item.stopx);
            }
        })
    }
})