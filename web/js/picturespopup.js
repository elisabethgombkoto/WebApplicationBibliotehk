/**
 * Created by Elisabeth on 28.03.2017.
 */

function openWindow() {
var pic= document.getElementById("logo");
var close= false;

    var height = pic.height;
    var width= pic.width;
    var win=window.open("logo.jpg", "logo",'width=' + width + ', height=' + height);
    var button='<html><body><img src="../logo.JPG" onclick="window.close()"> </body>'
win.document.write(button);

}

