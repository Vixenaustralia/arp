$(function(){
    window.onload = (e) => {
        window.addEventListener("message", (event) => {
            var item = event.data;
            if(item !== undefined && item.type === "els") {
                $(".warning").css('bottom', item.stopyels);
                $(".warning").css('left', item.stopxels);
            }
            if(item !== undefined && item.type === "ui") {
                if (item.display === true) {
                    $('.warning').show();     
                }
                if (item.display === false) {
                    $('.warning').hide();     
                }
                if (item.alert === true) {
                    $('#alert-on').css('display', 'inline-block');
                    $('#alert-off').hide(); 
                }
                if (item.alert === false) {
                    $('#alert-on').hide();
                    $('#alert-off').css('display', 'inline-block');
                }
                if (item.s === "1") {
                    document.getElementById("siren-on").innerHTML = "S1"; 
                    $('#siren-on').css('display', 'inline-block');
                    $('#siren-off').hide();
                }
                if (item.s === "2") {
                    document.getElementById("siren-on").innerHTML = "S2"; 
                    $('#siren-on').css('display', 'inline-block');
                    $('#siren-off').hide();
                }
                if (item.s === "3") {
                    document.getElementById("siren-on").innerHTML = "S3"; 
                    $('#siren-on').css('display', 'inline-block');
                    $('#siren-off').hide();
                }
                if (item.s === "0") {
                    $('#siren-off').css('display', 'inline-block');
                    $('#siren-on').hide();
                }
                if (item.l === "1") {
                    document.getElementById("lights-on").innerHTML = "L1"; 
                    $('#lights-on').css('display', 'inline-block');
                    $('#lights-off').hide();
                }
                if (item.l === "2") {
                    document.getElementById("lights-on").innerHTML = "L2"; 
                    $('#lights-on').css('display', 'inline-block');
                    $('#lights-off').hide();
                }
                if (item.l === "3") {
                    document.getElementById("lights-on").innerHTML = "L3"; 
                    $('#lights-on').css('display', 'inline-block');
                    $('#lights-off').hide();
                }
                if (item.l === "0") {
                    $('#lights-off').css('display', 'inline-block');
                    $('#lights-on').hide();
                }
            }
        })
    }
})