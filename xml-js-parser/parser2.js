window.addEventListener("load", loadXML);

let xmlDoc; //globaali muuttuja xml-tiedostolle
let i = 0; //viestin indeksi

function loadXML(){
    let ajax = new XMLHttpRequest();
    ajax.onload = function(){
        xmlDoc = this.responseXML;
        parseXML(i);
    }
    ajax.open("GET", "data.xml", true);
    ajax.send();
}

function next(){
    parseXML(++i);
}

function prev(){
    parseXML(--i);
}

function parseXML(index){ 
    
    const viestit = xmlDoc.getElementsByTagName("viesti");

    if (index < 0) {
        index = 0;
        i = 0;
    }

    if (index > viestit.length - 1){
        index = viestit.length - 1;
        i = viestit.length - 1;
    }
    
    let htmlData = "<h2>" + viestit[index].getElementsByTagName("lähettäjä")[0].childNodes[0].nodeValue + "</h2>";
    htmlData += "<h3>" + viestit[index].getElementsByTagName("aihe")[0].childNodes[0].nodeValue + "</h3>";
    htmlData += "<p>" + viestit[index].getElementsByTagName("teksti")[0].childNodes[0].nodeValue + "</p>";
    htmlData += "<p>" + viestit[index].getElementsByTagName("aika")[0].childNodes[0].nodeValue + "</p>";
    htmlData += "<p>" + viestit[index].getElementsByTagName("vuosi")[0].childNodes[0].nodeValue + "</p>";

    document.getElementById("viesti").innerHTML = htmlData;
    
    

}