/**
 * Created by Nour on 10/03/2018.
 */
function setCookie(cname, cvalue, exdays) {
    var d = new Date();
    d.setTime(d.getTime() + (exdays*24*60*60*1000));
    var expires = "expires="+ d.toUTCString();
    document.cookie = cname + "=" + cvalue + ";" + expires + ";path=/";
}
function showQuestion(item,index){
    var question = jQuery("#"+item)
    jQuery(question).removeClass('hidden');
    jQuery(question).appendTo('#formfields');
}
function hideQuestion(item,index){
    var question = jQuery("#"+item)
    jQuery(question).addClass('hidden');
}
jQuery(document).on('click','.language-label',function () {
    var lang = jQuery(this).attr('id');
    setCookie('lang',lang,180);
    location.reload();
});


jQuery(document).ready(function () {
    jQuery('input:radio[name=Status]:checked').change(function () {
        var gender = jQuery("input[name='Gender']:checked").val();
        if (jQuery("input[name='Status']:checked").val() == 0) {
            var related = ['Father','Mother','Sons','Daughters'];
            if(gender== 0) {
                related.push('Wives');
            }
            related.forEach(showQuestion);
        }
        if (jQuery("input[name='Status']:checked").val() == 0) {
        }
    });
});
