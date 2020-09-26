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
                if (item.clear === true) {
                    $('#help').hide();
                    $('#keybinds').hide();
                }
                if (item.help === true) {
                    $('#help').show();     
                }
                if (item.help === false) {
                    $('#help').hide();     
                }
                if (item.keybinds === true) {
                    $('#keybinds').show();     
                }
                if (item.keybinds === false) {
                    $('#keybinds').hide();     
                }
            }
        })
    }
})