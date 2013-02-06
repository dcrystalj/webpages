$(document).ready(function () {

    var studentid = document.getElementById("studentid");
    var validiteform = document.getElementsByClassName("form")[0];
    if (studentid != null)
        studentid.addEventListener("focusout", chklength, true);
    list = new Array("studentid");
    if (validiteform != null)
        validiteform.addEventListener("submit", chkform, true);
});
