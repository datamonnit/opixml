window.addEventListener("load", loadXML);

function loadXML(){
    let ajax = new XMLHttpRequest();
    ajax.onload = function(){
        parseXML(this.responseXML);
    }
    ajax.open("GET", "data.xml", true);
    ajax.send();
}

function parseXML(xml){
    const viestit = xml.getElementsByTagName("viesti");
    let htmlData = "";

    for (let i = 0; i < viestit.length; i++){
        htmlData += "<h2>" + viestit[i].getElementsByTagName("aihe")[0].childNodes[0].nodeValue + "</h2>";
        htmlData += "<p>" + viestit[i].getElementsByTagName("lähettäjä")[0].childNodes[0].nodeValue + "</p>";
    }
    
    document.getElementById("viestit").innerHTML = htmlData;
}