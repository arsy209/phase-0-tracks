
$(document).ready(function(){
    $("#first").click(function(){
        $("#puppy").hide();
    });
    $("#second").click(function(){
        $("#puppy").show();
    });
});


$(document).ready(function() {
    $("h1").click(function() {
        $("h1").fadeTo("slow", 0.01);
    });
});


$(document).ready(function(){
    $("#multi").click(function(){
        $("#multiply").clone().appendTo("body");
    });
});