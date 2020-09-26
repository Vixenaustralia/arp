$(function(){
    window.onload = (e) => {
        window.addEventListener("message", (event) => {
            var item = event.data;
            if(item !== undefined && item !== 'undefined' && item.type === "mm") {
                $(".minimap").css('left', item.startx);
                $(".minimap").css('top', item.starty);
                $(".minimap").css('width', item.width);
                $(".minimap").css('height', item.height);
            }
            if(item !== undefined && item !== 'undefined' && item.type === "sl") {
                document.getElementById("speedlimit").innerHTML = item.speed;
                if (item.slui === true) {
                    $('#speedlimit').css('display', 'inline-block');
                }
                if (item.slui === false) {
                    $('#speedlimit').hide();
                }
            }
        })
    }
})