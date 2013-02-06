var list;

function chklength(event) {
    var chk = event.currentTarget.value.search(/^[a-z0-9_-]{3,15}/);
    if (chk) {
        alert("Napacno izpolnjeno");
    }
}
function chkform(event) {
    for (var i = 0; i < list.length; i++) {

        var el = document.getElementById(list[i]);
        if (el && el.value.search(/^[a-z0-9_-]{3,15}/)) {
            alert("Napacno izpolnjeni obrazec");
            event.preventDefault();
            return
        }
    }

}


function addchoosen(e) {
    e.preventDefault();
    if ($("option:selected").val()) {
        var newNode = document.createElement("li");
        newNode.setAttribute("id", $("option:selected").val());
        newNode.setAttribute("id", $("option:selected").val());
        newNode.appendChild(document.createTextNode($("option:selected").text()));
        document.getElementById("choosen").appendChild(newNode);
        $(":selected").remove();
    }
}

$(document).ready(function () {
    //premikanje menija
    $("#leftdiv").draggable();

    //dodaten opis slike
    $(".imagewithcaption").mouseenter(
        function () {
            var img = $(this);

            img.find(".caption").animate({
                opacity: "show",
                bottom: 0
            }, "fast");

        }).mouseleave(

        function () {
            $(this).find(".caption").animate({
                opacity: "hide",
                bottom: -50
            }, "fast");
        });


    var choose = document.getElementById("choose");
    if(choose!=null)
        choose.addEventListener("click", addchoosen, true);
});
