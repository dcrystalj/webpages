function loadXMLDoc(dname) {
    if (window.XMLHttpRequest) {
        xhttp = new XMLHttpRequest();
    }
    else {
        xhttp = new ActiveXObject("Microsoft.XMLHTTP");
    }
    xhttp.open("GET", dname, false);
    xhttp.send();
    return xhttp.responseXML;
}

function toeng() {
    xmlDoc = loadXMLDoc("static/XMLtrans.xml")
    x = xmlDoc.getElementsByTagName("prevod");

    for (var i = 0; i < x.length; i++) {
        var id = x[i].getAttribute("id");
        var dom = document.getElementById(id);
        if (x[i].getAttribute("attr")) {
            if (dom != null) {
                dom.setAttribute(x[i].getAttribute("attr"), x[i].getElementsByTagName("eng")[0].childNodes[0].nodeValue);
            }
        }
        else {
            if (dom != null) {
                document.getElementById(id).innerText = x[i].getElementsByTagName("eng")[0].childNodes[0].nodeValue
            }
        }

    }

}

function toslo() {
    xmlDoc = loadXMLDoc("static/XMLtrans.xml")
    x = xmlDoc.getElementsByTagName("prevod");

    for (var i = 0; i < x.length; i++) {
        var id = x[i].getAttribute("id");
        var dom = document.getElementById(id);
        if (x[i].getAttribute("attr")) {
            if (dom != null) {
                dom.setAttribute(x[i].getAttribute("attr"), x[i].getElementsByTagName("slo")[0].childNodes[0].nodeValue);
            }
        }
        else {
            if (dom != null) {
                var test = x[i].getElementsByTagName("slo")[0].childNodes[0].nodeValue
                document.getElementById(id).innerText = x[i].getElementsByTagName("slo")[0].childNodes[0].nodeValue
            }
        }
    }

}


$(document).ready(function () {
    var slo = document.getElementById("slo");
    var eng = document.getElementById("eng");
    if (slo != null)
        slo.addEventListener("click", toslo, false);
    if (eng != null)
        eng.addEventListener("click", toeng, false);


});