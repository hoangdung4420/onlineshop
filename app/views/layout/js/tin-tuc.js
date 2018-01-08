/**
 * Created by kukun on 29/06/2017.
 */
var n = 0; var interval;
var index = 0;
jQuery(document).ready(function () {

    jQuery('#featured .rights li a').click(function () {
        return true;
    });
    n = jQuery('#featured .rights li').length;
    LoadFocus();
    interval = setInterval("LoadFocus()", 5000);
    jQuery('#featured .rights li a').each(function (i) {
        jQuery(this).hover(function () {
            clearInterval(interval);
            index = i;
            LoadFocus();
        }, function () {
            interval = setInterval("LoadFocus()", 5000);
        });
        jQuery(this).click(function () {
            var link = jQuery(this).attr('href');
            window.location.href = link;
        });
    });
});
function LoadFocus() {

    if (index >= 0) {
        var item = jQuery('#featured .ct .rights li').eq(index);
        var img = jQuery(item).find('a').attr('aria-label');
        var Des = jQuery(item).find('a').attr('aria-valuetext');
        var link = jQuery(item).find('a').attr('href');
        var title = jQuery(item).find('a').html().replace('<img src="/Publishing_Resources/img/videonew.png" alt="" style="float: none; max-width: 16px; max-height: 16px; margin: 1px 5px;">', '');
        img = img;
        jQuery('#featured .rights li').removeClass('ui-tabs-active');
        jQuery('#featured .rights li').eq(index).addClass('ui-tabs-active');
        jQuery('#featured .lefts').hide().html("<div class=\"box-img\"><div class=\"tit\"><a href=\"" + link + "\">" + title + "</a></div> </div><div class=\"des\"><div class=\"ct\">" + noscript(Des) + "</div></div>").toggle();
        index++;
        if (index == n) index = 0;
    }
}
function noscript(strCode) {
    var div = document.createElement('div');
    div.innerHTML = strCode;
    var scripts = div.getElementsByTagName('script');
    var i = scripts.length;
    while (i--) {
        scripts[i].parentNode.removeChild(scripts[i]);
    }
    return div.innerHTML;
}
