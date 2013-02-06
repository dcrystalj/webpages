
//descriptions
function removechoosen(e) {
    var theElement = e.currentTarget;
    var id = theElement.previousSibling.innerHTML;
    document.getElementById(id).setAttribute("style", "display: none;");
    document.getElementById(id)
}

function description(e) {
    var theElement = e.currentTarget;
    theElement.addEventListener("mouseout", removechoosen, false);
    var id = theElement.previousSibling.innerHTML;
    document.getElementById(id).setAttribute("style", "display: block;");
    document.getElementById(id)
}