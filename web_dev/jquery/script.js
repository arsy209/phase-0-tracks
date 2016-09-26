
$(document).ready(function(){
    $("#btn1").click(function(){
        $("#box").animate({height:"500px"});
    });
    $("#btn2").click(function(){
        $("#box").animate({height:"150px" , width: "240px"});
    });
});


$(document).ready(function() {
    $("h1").click(function() {
        $("h1").fadeTo("slow", 0.01);
    });
});

$(document).ready(function() {
    $("p").click(function() {
        $("p").fadeTo("fast", 0.3);
    });
});