/**
 * Created by Nour on 10/03/2018.
 */
function setCookie(cname, cvalue, exdays) {
    var d = new Date();
    d.setTime(d.getTime() + (exdays*24*60*60*1000));
    var expires = "expires="+ d.toUTCString();
    document.cookie = cname + "=" + cvalue + ";" + expires + ";path=/";
}
jQuery(document).on('click','.language-label',function () {
    var lang = jQuery(this).attr('id');
    setCookie('lang',lang,180);
    location.reload();
});
