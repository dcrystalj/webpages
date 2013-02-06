
$(document).ready(function () {

var username = document.getElementById("loginusername");
var password = document.getElementById("loginpassword");
var validiteform = document.getElementsByClassName("form")[0];
if(username!=null)
    username.addEventListener("focusout", chklength, true);
if(password!=null)
    password.addEventListener("focusout", chklength, true);
    

list = new Array("loginusername", "loginpassword");
if(validiteform!=null)
    validiteform.addEventListener("submit", chkform, true);
});
