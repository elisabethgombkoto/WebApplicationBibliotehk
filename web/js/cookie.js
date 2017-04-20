/**
 * Created by Elisabeth on 04.04.2017.
 */

function createCookie(name,value) {
    var d = new Date();
    d.setTime(d.getTime() + (365 * 24 * 60 * 60 * 1000));
    var expires = d.toUTCString();
    document.cookie = name + "=" + value + ";" + "expires=" + expires;
}
