$(function(){
    window.onload = (e) => {
        window.addEventListener("message", (event) => {
            var item = event.data;
            if(item !== undefined && item !== 'undefined' && item.type === "zones") {
                document.getElementById("zone").innerHTML = item.zn;
                document.getElementById("influencer").innerHTML = item.influencer;
            }
            if(item !== undefined && item !== 'undefined' && item.type === "ui") {
                if (item.display === true) {
                    $('#zones').show();
                }
                if (item.display === false) {
                    $('#zones').hide();
                }
            }
            if(item !== undefined && item !== 'undefined' && item.type === "mm") {
                $(".messagebox").css('right', item.x);
                $(".messagebox").css('top', item.y);
            }
        })
    }
})