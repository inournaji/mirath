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
    jQuery('input:radio[name=Status]').change(function () {
        var related = ['SonsBool','DaughtersBool'];
        var gender = jQuery("input[name='Gender']:checked").val();
        var status = jQuery("input[name='Status']:checked").val();
        if (status == 1 || status == 3) {
            if(status ==3 && !jQuery('#Wives').hasClass('hidden')){
                hideQuestion('Wives',0);
            }
            if(gender== 1 && status ==1) {
                related.push('Wives');
            }
            related.forEach(showQuestion);
        }
        if (jQuery("input[name='Status']:checked").val() == 2) {
            if(!jQuery('#Wives').hasClass('hidden')){
                related.push('Wives');
            }
            related.forEach(hideQuestion);
        }

    });

    //--
    jQuery('#Father').on('switchChange.bootstrapSwitch',function (e,data) {
        var related = ['Grandfather'];
        if (!data)  {
            related.forEach(showQuestion);
        }
        if(data)
        {
            if(!jQuery('#Grandfather').hasClass('hidden')){

                related.forEach(hideQuestion);
            }
            if(!jQuery('#PaternalGrandmother').hasClass('hidden')){
                related.push('PaternalGrandmother');
                related.forEach(hideQuestion);
            }
            if(!jQuery('#FullBrothersBool').hasClass('hidden')){
                related.push('FullBrothersBool');
                related.forEach(hideQuestion);
            }
            if(!jQuery('#FullBrothers').hasClass('hidden')){
                related.push('FullBrothers');
                related.forEach(hideQuestion);
            }
            if(!jQuery('#FullSistersBool').hasClass('hidden')){
                related.push('FullSistersBool');
                related.forEach(hideQuestion);
            }
            if(!jQuery('#FullSisters').hasClass('hidden')){
                related.push('FullSisters');
                related.forEach(hideQuestion);
            }
            if(!jQuery('#GrandsonsBool').hasClass('hidden')){
                related.push('GrandsonsBool');
                related.forEach(hideQuestion);
            }
            if(!jQuery('#Grandsons').hasClass('hidden')){
                related.push('Grandsons');
                related.forEach(hideQuestion);
            }
            if(!jQuery('#GrandDaughtersBool').hasClass('hidden')){
                related.push('GrandDaughtersBool');
                related.forEach(hideQuestion);
            }
            if(!jQuery('#FullNephewsBool').hasClass('hidden')){
                related.push('FullNephewsBool');
                related.forEach(hideQuestion);
            }
            if(!jQuery('#PaternalBrothersBool').hasClass('hidden')){
                related.push('PaternalBrothersBool');
                related.forEach(hideQuestion);
            }
            if(!jQuery('#PaternalBrothers').hasClass('hidden')){
                related.push('PaternalBrothers');
                related.forEach(hideQuestion);
            }
            if(!jQuery('#PaternalSistersBool').hasClass('hidden')){
                related.push('PaternalSistersBool');
                related.forEach(hideQuestion);
            }
            if(!jQuery('#PaternalSisters').hasClass('hidden')){
                related.push('PaternalSisters');
                related.forEach(hideQuestion);
            }
            if(!jQuery('#MaternalBrothersBool').hasClass('hidden')){
                related.push('MaternalBrothersBool');
                related.forEach(hideQuestion);
            }
            if(!jQuery('#MaternalBrothers').hasClass('hidden')){
                related.push('MaternalBrothers');
                related.forEach(hideQuestion);
            }
            if(!jQuery('#MaternalSistersBool').hasClass('hidden')){
                related.push('MaternalSistersBool');
                related.forEach(hideQuestion);
            }
            if(!jQuery('#MaternalSisters').hasClass('hidden')){
                related.push('MaternalSisters');
                related.forEach(hideQuestion);
            }
            if(!jQuery('#FullUnclesBool').hasClass('hidden')){
                related.push('FullUnclesBool');
                related.forEach(hideQuestion);
            }
            if(!jQuery('#FullUncles').hasClass('hidden')){
                related.push('FullUncles');
                related.forEach(hideQuestion);
            }
            if(!jQuery('#FullCousinsBool').hasClass('hidden')){
                related.push('FullCousinsBool');
                related.forEach(hideQuestion);
            }
            if(!jQuery('#FullCousins').hasClass('hidden')){
                related.push('FullCousins');
                related.forEach(hideQuestion);
            }
            if(!jQuery('#PaternalUnclesBool').hasClass('hidden')){
                related.push('PaternalUnclesBool');
                related.forEach(hideQuestion);
            }
            if(!jQuery('#PaternalNephewsBool').hasClass('hidden')){
                related.push('PaternalNephewsBool');
                related.forEach(hideQuestion);
            }
            if(!jQuery('#PaternalNephews').hasClass('hidden')){
                related.push('PaternalNephews');
                related.forEach(hideQuestion);
            }
            if(!jQuery('#FullNephews').hasClass('hidden')){
                related.push('FullNephews');
                related.forEach(hideQuestion);
            }
            if(!jQuery('#PaternalCousinsBool').hasClass('hidden')){
                related.push('PaternalCousinsBool');
                related.forEach(hideQuestion);
            }
            if(!jQuery('#PaternalCousins').hasClass('hidden')){
                related.push('PaternalCousins');
                related.forEach(hideQuestion);
            }
            if(!jQuery('#Granddaughters').hasClass('hidden')){
                related.push('Granddaughters');
                related.forEach(hideQuestion);
            }

        }
    });
    //  jQuery('input:checkbox[name=Father]').on('change',function () {

});
