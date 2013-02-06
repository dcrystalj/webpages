/*﻿function loadXMLDoc(dname) {
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


var a;
var idstudenta = "63100281";
var domstudenta;
var i = 0;
xmlDoc = loadXMLDoc("static/XMLocene.xml")
x = xmlDoc.getElementsByTagName("ocene");

for (var i = 0; i < x.length; i++) {
    if (x[i].getAttribute("idstudenta") == idstudenta) {
        domstudenta = x[i].getElementsByTagName("ocena");
        break;
    }
}


function prikaziOceno() {
    var txt = "";
    for (var x = 0; x < domstudenta.length; x++) {
        idpredmet = (domstudenta[x].getElementsByTagName("idpredmet")[0].childNodes[0].nodeValue);
        predmet = (domstudenta[x].getElementsByTagName("predmet")[0].childNodes[0].nodeValue);
        letnik = (domstudenta[x].getElementsByTagName("letnik")[0].childNodes[0].nodeValue);
        vrednost = (domstudenta[x].getElementsByTagName("vrednost")[0].childNodes[0].nodeValue);
        txt+="<tr> <td>"+(x+1)+".</td><td>"+idpredmet+"</td><td onmouseover='description(event)' class='desc'>"+predmet+"</td><td class='c'>"+letnik+"</td><td class='c'>"+vrednost+"</td></tr>";
    }
    var a =document.getElementById("xmlmarks");
    document.getElementById("xmlmarks").innerHTML = txt;

}
i = 0;
while (i < domstudenta.length) {
    prikaziOceno();
    i++;
}
*/
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

var firsttime=0;

function ajaxDescription(e){
    if(firsttime==0){
        firsttime+=1;
         $.get("subjectdesc.php", function(data,status){
                var myObj = JSON.parse(data);
                $.each(myObj, function(i, item) {
                    var string = "<p id='"+item.id+"' style='display:none'>"+item.description+"</p>";
                    $("#descriptions").append(string);
                });
            });
    }
}