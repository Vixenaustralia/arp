$(function(){
    window.onload = (e) => {
        window.addEventListener("message", (event) => {
            var item = event.data;
            if(item !== undefined && item !== 'undefined' && item.type === "ui") {
                if (item.display === true) {
                    $('.ui').show();     
                }
                if (item.display === false) {
                    $('.ui').hide();
                    $('.ui-off').hide();     
                }
                if (item.bus === true) {
                    $('#bustimetable').show();     
                }
                if (item.bus === false) {
                    $('#bustimetable').hide();     
                }
            }
        })
    }
})