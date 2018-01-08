/**
 * Created by kukun on 03/07/2017.
 */
function refrClock() {

    var d=new Date();

    var s=d.getSeconds();

    var m=d.getMinutes();

    var h=d.getHours();

    var day=d.getDay();

    var date=d.getDate();

    var month=d.getMonth();

    var year=d.getFullYear();

    var days=new Array("Chủ nhật","Thứ hai","Thứ ba","Thứ tu","Thứ 5","Thứ 6","Thứ 7");
    var months=new Array("01","02","03","04","05","06","07","08","09","10","11","12")
    var am_pm;
    if (s<10) {s="0" + s}

    if (m<10) {m="0" + m}

    if (h>12)

    {h-=12;AM_PM = "PM"}

    else {AM_PM="AM"}

    if (h<10) {h="0" + h}

    // document.getElementById("clock").innerHTML=days[day] + ": " + date + "/" +months[month] + "/" + year + " Bây giờ là "+ " [" + h + ":" + m + ":" + s + "] " + AM_PM; setTimeout("refrClock()",1000); } refrClock();
    document.getElementById("clock").innerHTML=days[day] + ", " + date + "/" +months[month] + "/" + year; setTimeout("refrClock()",1000); } refrClock();
