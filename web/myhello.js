/**
 * Created by Elisabeth on 04.05.2017.
 */

function sendRequest() {
    var input= document.getElementById("input").value;
    xhr = new XMLHttpRequest();

    if (!xhr) {
        alert("An Error occurred when trying to initialize XMLHttpRequest!");
        return; //exit
    }

    xhr.onreadystatechange = sendRequest_callback;
    //es wird anstatt text.txt ein servlet pfad hier aufgerufen und gibt man input mit
    xhr.open("GET", "/someservlet?input="+input, true);
    xhr.send(null);
}

function sendRequest_callback() {

    if((xhr.readyState == 4) && (xhr.status == 200)){
        var xmldoc = xhr.responseXML;
        var x = xmldoc.getElementsByTagName("length")[0];
        var y = x.childNodes[0];
        document.getElementById("output").innerHTML = xhr.responseText;
        document.title = xhr.responseText;
    }

}