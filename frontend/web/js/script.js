/**
 * Created by Nour on 10/03/2018.
 */
function setCookie(cname, cvalue, exdays) {
    var d = new Date();
    d.setTime(d.getTime() + (exdays*24*60*60*1000));
    var expires = "expires="+ d.toUTCString();
    document.cookie = cname + "=" + cvalue + ";" + expires + ";path=/";
}
//Variables
    var father = jQuery('#Father .bootstrap-switch').hasClass('bootstrap-switch-on');
    var mother = jQuery('#Mother .bootstrap-switch').hasClass('bootstrap-switch-on');
    var sonsBool = jQuery('#SonsBool .bootstrap-switch').hasClass('bootstrap-switch-on');
    var daughtersBool = jQuery('#DaughtersBool .bootstrap-switch').hasClass('bootstrap-switch-on');
    var fullBrothersBool = jQuery('#FullBrothersBool .bootstrap-switch').hasClass('bootstrap-switch-on');
    var fullSistersBool = jQuery('#FullSistersBool .bootstrap-switch').hasClass('bootstrap-switch-on');
    var grandsonsBool = jQuery('#GrandsonsBool .bootstrap-switch').hasClass('bootstrap-switch-on');
    var grandDaughtersBool = jQuery('#GrandDaughtersBool .bootstrap-switch').hasClass('bootstrap-switch-on');
    var fullNephewsBool = jQuery('#FullNephewsBool .bootstrap-switch').hasClass('bootstrap-switch-on');
    var paternalBrothersBool = jQuery('#PaternalBrothersBool .bootstrap-switch').hasClass('bootstrap-switch-on');
    var paternalSistersBool = jQuery('#PaternalSistersBool .bootstrap-switch').hasClass('bootstrap-switch-on');
    var maternalBrothersBool = jQuery('#MaternalBrothersBool .bootstrap-switch').hasClass('bootstrap-switch-on');
    var maternalSistersBool = jQuery('#MaternalSistersBool .bootstrap-switch').hasClass('bootstrap-switch-on');
    var paternalGrandmother = jQuery('#PaternalGrandmother .bootstrap-switch').hasClass('bootstrap-switch-on');
    var grandfather = jQuery('#Grandfather .bootstrap-switch').hasClass('bootstrap-switch-on');
    var maternalGrandmother = jQuery('#MaternalGrandmother .bootstrap-switch').hasClass('bootstrap-switch-on');
    var fullUnclesBool = jQuery('#FullUnclesBool .bootstrap-switch').hasClass('bootstrap-switch-on');
    var fullCousinsBool = jQuery('#FullCousinsBool .bootstrap-switch').hasClass('bootstrap-switch-on');
    var paternalUnclesBool = jQuery('#PaternalUnclesBool .bootstrap-switch').hasClass('bootstrap-switch-on');
    var paternalNephewsBool = jQuery('#PaternalNephewsBool .bootstrap-switch').hasClass('bootstrap-switch-on');
    var paternalCousinsBool = jQuery('#PaternalCousinsBool .bootstrap-switch').hasClass('bootstrap-switch-on');
function  variables() {

     father = jQuery('#Father .bootstrap-switch').hasClass('bootstrap-switch-on');
     mother = jQuery('#Mother .bootstrap-switch').hasClass('bootstrap-switch-on');
     sonsBool = jQuery('#SonsBool .bootstrap-switch').hasClass('bootstrap-switch-on');
     daughtersBool = jQuery('#DaughtersBool .bootstrap-switch').hasClass('bootstrap-switch-on');
     fullBrothersBool = jQuery('#FullBrothersBool .bootstrap-switch').hasClass('bootstrap-switch-on');
     fullSistersBool = jQuery('#FullSistersBool .bootstrap-switch').hasClass('bootstrap-switch-on');
     grandsonsBool = jQuery('#GrandsonsBool .bootstrap-switch').hasClass('bootstrap-switch-on');
     grandDaughtersBool = jQuery('#GrandDaughtersBool .bootstrap-switch').hasClass('bootstrap-switch-on');
     fullNephewsBool = jQuery('#FullNephewsBool .bootstrap-switch').hasClass('bootstrap-switch-on');
     paternalBrothersBool = jQuery('#PaternalBrothersBool .bootstrap-switch').hasClass('bootstrap-switch-on');
     paternalSistersBool = jQuery('#PaternalSistersBool .bootstrap-switch').hasClass('bootstrap-switch-on');
     maternalBrothersBool = jQuery('#MaternalBrothersBool .bootstrap-switch').hasClass('bootstrap-switch-on');
     maternalSistersBool = jQuery('#MaternalSistersBool .bootstrap-switch').hasClass('bootstrap-switch-on');
     paternalGrandmother = jQuery('#PaternalGrandmother .bootstrap-switch').hasClass('bootstrap-switch-on');
     grandfather = jQuery('#Grandfather .bootstrap-switch').hasClass('bootstrap-switch-on');
     maternalGrandmother = jQuery('#MaternalGrandmother .bootstrap-switch').hasClass('bootstrap-switch-on');
     fullUnclesBool = jQuery('#FullUnclesBool .bootstrap-switch').hasClass('bootstrap-switch-on');
     fullCousinsBool = jQuery('#FullCousinsBool .bootstrap-switch').hasClass('bootstrap-switch-on');
     paternalUnclesBool = jQuery('#PaternalUnclesBool .bootstrap-switch').hasClass('bootstrap-switch-on');
     paternalNephewsBool = jQuery('#PaternalNephewsBool .bootstrap-switch').hasClass('bootstrap-switch-on');
      paternalCousinsBool = jQuery('#PaternalCousinsBool .bootstrap-switch').hasClass('bootstrap-switch-on');
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
function fathermother(father,mother) {
    if(father)
    {
        fatherhajb();

    }
    if(!father)
    {
        var related =['Grandfather','PaternalGrandmother'];
        related.forEach(showQuestion);
        if(!jQuery('#MaternalGrandmother').hasClass('hidden')){
            related = ['MaternalGrandmother'];
            related.forEach(hideQuestion);
        }

    }
    if(mother)
    {

        if(!jQuery('#Grandfather').hasClass('hidden')){
            related = ['Grandfather'];
            related.forEach(hideQuestion);
        }
        if(!jQuery('#PaternalGrandmother').hasClass('hidden')){
            related = ['PaternalGrandmother'];
            related.forEach(hideQuestion);
        }
        if(!jQuery('#MaternalGrandmother').hasClass('hidden')){
            related = ['MaternalGrandmother'];
            related.forEach(hideQuestion);
        }
    }
    if(!mother)
    {

        var related =['MaternalGrandmother'];
        related.forEach(showQuestion);
        if(!jQuery('#Grandfather').hasClass('hidden')){
            related = ['Grandfather'];
            related.forEach(hideQuestion);
        }
        if(!jQuery('#PaternalGrandmother').hasClass('hidden')){
            related = ['PaternalGrandmother'];
            related.forEach(hideQuestion);
        }
    }
    if(!father && mother)
    {
        var related =['Grandfather'];
        related.forEach(showQuestion);
        if(!jQuery('#MaternalGrandmother').hasClass('hidden')){
            related = ['MaternalGrandmother'];
            related.forEach(hideQuestion);
        }
        if(!jQuery('#PaternalGrandmother').hasClass('hidden')){
            related = ['PaternalGrandmother'];
            related.forEach(hideQuestion);
        }
    }
    if(!father && !mother)
        {
            var related =['Grandfather','PaternalGrandmother','MaternalGrandmother'];
            related.forEach(showQuestion);

    }
    if(father && !mother)
    {
        var related =['MaternalGrandmother'];
        related.forEach(showQuestion);
        fatherhajb();
    }
    if(father && mother)
    {
        fatherhajb();
        if(!jQuery('#MaternalGrandmother').hasClass('hidden')){
            related = ['MaternalGrandmother'];
            related.forEach(hideQuestion);
        }
    }
    }

function forallhajb() {
    variables() ;
    if(father){fatherhajb()}
    if(daughtersBool && (jQuery("input[name='Daughters']").val()>0)){daughterhajb ()}
    if(sonsBool && (jQuery("input[name='Sons']").val()>0)){sonhajb ()}
    if(fullBrothersBool && (jQuery("input[name='FullBrothers']").val()>0)){fulbrohajb ()}
    if(fullSistersBool && (jQuery("input[name='FullSisters']").val()>0)){fullsishajb ()}
    if(fullNephewsBool && (jQuery("input[name='FullNephewsBool']").val()>0)){fullbrosonhajb ()}
    if(paternalNephewsBool && (jQuery("input[name='PaternalNephewsBool']").val()>0)){parbrosonhajb ()}
    if(fullUnclesBool && (jQuery("input[name='FullUnclesBool']").val()>0)){fullunclehajb ()}
    if(paternalUnclesBool && (jQuery("input[name='PaternalUnclesBool']").val()>0)){parunclehajb ()}
    if(fullCousinsBool && (jQuery("input[name='FullCousinsBool']").val()>0)){fullunclesonhajb ()}
}
function fatherhajb ()
{
    related =[];
    if(!jQuery('#GrandsonsBool').hasClass('hidden'))
    {
        related.push('GrandsonsBool');
        related.push('Grandson');

    }
    if(!jQuery('#PaternalGrandmother').hasClass('hidden'))
    {
        related.push('PaternalGrandmother');
    }
    if(!jQuery('#Grandfather').hasClass('hidden'))
    {
        related.push('Grandfather');
    }
    if(!jQuery('#FullBrothersBool').hasClass('hidden'))
    {
        related.push('FullBrothersBool','FullBrothers');
    }
    if(!jQuery('#FullSistersBool').hasClass('hidden'))
    {
        related.push('FullSistersBool','FullSisters');
    }
    if(!jQuery('#FullNephewsBool').hasClass('hidden'))
    {
        related.push('FullNephewsBool','FullNephews');
    }
    if(!jQuery('#PaternalBrothersBool').hasClass('hidden'))
    {
        related.push('PaternalBrothersBool','PaternalBrothers');
    }
    if(!jQuery('#PaternalSistersBool').hasClass('hidden'))
    {
        related.push('PaternalSistersBool','PaternalSisters');
    }
    if(!jQuery('#MaternalBrothersBool').hasClass('hidden'))
    {
        related.push('MaternalBrothersBool','MaternalBrothers');
    }
    if(!jQuery('#MaternalSistersBool').hasClass('hidden'))
    {
        related.push('MaternalSistersBool','MaternalSisters');
    }
    if(!jQuery('#FullUnclesBool').hasClass('hidden'))
    {
        related.push('FullUnclesBool','FullUncles');
    }
    if(!jQuery('#FullCousinsBool').hasClass('hidden'))
    {
        related.push('FullCousinsBool','FullCousins');
    }
    if(!jQuery('#PaternalUnclesBool').hasClass('hidden'))
    {
        related.push('PaternalUnclesBool','PaternalUncles');
    }

    if(!jQuery('#PaternalNephewsBool').hasClass('hidden'))
    {
        related.push('PaternalNephewsBool','PaternalNephews');
    }
    if(!jQuery('#PaternalCousinsBool').hasClass('hidden'))
    {
        related.push('PaternalCousinsBool','PaternalCousins');
    }
related.forEach(hideQuestion);
}
function daughterhajb ()
{
    related =[];

    if(!jQuery('#FullNephewsBool').hasClass('hidden'))
    {
        related.push('FullNephewsBool','FullNephews');
    }

    if(!jQuery('#MaternalBrothersBool').hasClass('hidden'))
    {
        related.push('MaternalBrothersBool','MaternalBrothers');
    }
    if(!jQuery('#MaternalSistersBool').hasClass('hidden'))
    {
        related.push('MaternalSistersBool','MaternalSisters');
    }
    if(!jQuery('#FullUnclesBool').hasClass('hidden'))
    {
        related.push('FullUnclesBool','FullUncles');
    }
    if(!jQuery('#FullCousinsBool').hasClass('hidden'))
    {
        related.push('FullCousinsBool','FullCousins');
    }
    if(!jQuery('#PaternalUnclesBool').hasClass('hidden'))
    {
        related.push('PaternalUnclesBool','PaternalUncles');
    }

    if(!jQuery('#PaternalNephewsBool').hasClass('hidden'))
    {
        related.push('PaternalNephewsBool','PaternalNephews');
    }
    if(!jQuery('#PaternalCousinsBool').hasClass('hidden'))
    {
        related.push('PaternalCousinsBool','PaternalCousins');
    }
    related.forEach(hideQuestion);
}
function sonhajb ()
{
    related =[];
    if(!jQuery('#GrandsonsBool').hasClass('hidden'))
    {
        related.push('GrandsonsBool','Grandson');

    }
    if(!jQuery('#FullBrothersBool').hasClass('hidden'))
    {
        related.push('FullBrothersBool','FullBrothers');
    }
    if(!jQuery('#FullSistersBool').hasClass('hidden'))
    {
        related.push('FullSistersBool','FullSisters');
    }
    if(!jQuery('#GrandDaughtersBool').hasClass('hidden'))
    {
        related.push('GrandDaughtersBool','Granddaughters');
    }
    if(!jQuery('#FullNephewsBool').hasClass('hidden'))
    {
        related.push('FullNephewsBool','FullNephews');
    }
    if(!jQuery('#PaternalBrothersBool').hasClass('hidden'))
    {
        related.push('PaternalBrothersBool','PaternalBrothers');
    }
    if(!jQuery('#PaternalSistersBool').hasClass('hidden'))
    {
        related.push('PaternalSistersBool','PaternalSisters');
    }
    if(!jQuery('#MaternalBrothersBool').hasClass('hidden'))
    {
        related.push('MaternalBrothersBool','MaternalBrothers');
    }
    if(!jQuery('#MaternalSistersBool').hasClass('hidden'))
    {
        related.push('MaternalSistersBool','MaternalSisters');
    }
    if(!jQuery('#FullUnclesBool').hasClass('hidden'))
    {
        related.push('FullUnclesBool','FullUncles');
    }
    if(!jQuery('#FullCousinsBool').hasClass('hidden'))
    {
        related.push('FullCousinsBool','FullCousins');
    }
    if(!jQuery('#PaternalUnclesBool').hasClass('hidden'))
    {
        related.push('PaternalUnclesBool','PaternalUncles');
    }

    if(!jQuery('#PaternalNephewsBool').hasClass('hidden'))
    {
        related.push('PaternalNephewsBool','PaternalNephews');
    }
    if(!jQuery('#PaternalCousinsBool').hasClass('hidden'))
    {
        related.push('PaternalCousinsBool','PaternalCousins');
    }
    related.forEach(hideQuestion);
}
function fulbrohajb ()
{
    related =[];
    if(!jQuery('#GrandsonsBool').hasClass('hidden'))
    {
        related.push('GrandsonsBool','Grandson');

    }
    if(!jQuery('#FullNephewsBool').hasClass('hidden'))
    {
        related.push('FullNephewsBool','FullNephews');
    }
    if(!jQuery('#PaternalBrothersBool').hasClass('hidden'))
    {
        related.push('PaternalBrothersBool','PaternalBrothers');
    }
    if(!jQuery('#PaternalSistersBool').hasClass('hidden'))
    {
        related.push('PaternalSistersBool','PaternalSisters');
    }
    if(!jQuery('#FullUnclesBool').hasClass('hidden'))
    {
        related.push('FullUnclesBool','FullUncles');
    }
    if(!jQuery('#FullCousinsBool').hasClass('hidden'))
    {
        related.push('FullCousinsBool','FullCousins');
    }
    if(!jQuery('#PaternalUnclesBool').hasClass('hidden'))
    {
        related.push('PaternalUnclesBool','PaternalUncles');
    }

    if(!jQuery('#PaternalNephewsBool').hasClass('hidden'))
    {
        related.push('PaternalNephewsBool','PaternalNephews');
    }
    if(!jQuery('#PaternalCousinsBool').hasClass('hidden'))
    {
        related.push('PaternalCousinsBool','PaternalCousins');
    }
    related.forEach(hideQuestion);
}
function fullsishajb ()
{
    related =[];
    if(!jQuery('#GrandsonsBool').hasClass('hidden'))
    {
        related.push('GrandsonsBool','Grandson');

    }
    if(!jQuery('#FullNephewsBool').hasClass('hidden'))
    {
        related.push('FullNephewsBool','FullNephews');
    }
    if(!jQuery('#PaternalBrothersBool').hasClass('hidden'))
    {
        related.push('PaternalBrothersBool','PaternalBrothers');
    }
    if(!jQuery('#PaternalSistersBool').hasClass('hidden'))
    {
        related.push('PaternalSistersBool','PaternalSisters');
    }
    if(!jQuery('#FullUnclesBool').hasClass('hidden'))
    {
        related.push('FullUnclesBool','FullUncles');
    }
    if(!jQuery('#FullCousinsBool').hasClass('hidden'))
    {
        related.push('FullCousinsBool','FullCousins');
    }
    if(!jQuery('#PaternalUnclesBool').hasClass('hidden'))
    {
        related.push('PaternalUnclesBool','PaternalUncles');
    }

    if(!jQuery('#PaternalNephewsBool').hasClass('hidden'))
    {
        related.push('PaternalNephewsBool','PaternalNephews');
    }
    if(!jQuery('#PaternalCousinsBool').hasClass('hidden'))
    {
        related.push('PaternalCousinsBool','PaternalCousins');
    }
    related.forEach(hideQuestion);
}
function fullbrosonhajb ()
{
    related =[];

    if(!jQuery('#FullUnclesBool').hasClass('hidden'))
    {
        related.push('FullUnclesBool','FullUncles');
    }
    if(!jQuery('#FullCousinsBool').hasClass('hidden'))
    {
        related.push('FullCousinsBool','FullCousins');
    }
    if(!jQuery('#PaternalUnclesBool').hasClass('hidden'))
    {
        related.push('PaternalUnclesBool','PaternalUncles');
    }

    if(!jQuery('#PaternalNephewsBool').hasClass('hidden'))
    {
        related.push('PaternalNephewsBool','PaternalNephews');
    }
    if(!jQuery('#PaternalCousinsBool').hasClass('hidden'))
    {
        related.push('PaternalCousinsBool','PaternalCousins');
    }
    related.forEach(hideQuestion);
}
function parbrosonhajb ()
{
    related =[];

    if(!jQuery('#FullUnclesBool').hasClass('hidden'))
    {
        related.push('FullUnclesBool','FullUncles');
    }
    if(!jQuery('#FullCousinsBool').hasClass('hidden'))
    {
        related.push('FullCousinsBool','FullCousins');
    }
    if(!jQuery('#PaternalUnclesBool').hasClass('hidden'))
    {
        related.push('PaternalUnclesBool','PaternalUncles');
    }
    if(!jQuery('#PaternalCousinsBool').hasClass('hidden'))
    {
        related.push('PaternalCousinsBool','PaternalCousins');
    }
    related.forEach(hideQuestion);
}
function fullunclehajb ()
{
    related =[];


    if(!jQuery('#FullCousinsBool').hasClass('hidden'))
    {
        related.push('FullCousinsBool','FullCousins');
    }
    if(!jQuery('#PaternalUnclesBool').hasClass('hidden'))
    {
        related.push('PaternalUnclesBool','PaternalUncles');
    }
    if(!jQuery('#PaternalCousinsBool').hasClass('hidden'))
    {
        related.push('PaternalCousinsBool','PaternalCousins');
    }
    related.forEach(hideQuestion);
}
function parunclehajb ()
{
    related =[];


    if(!jQuery('#FullCousinsBool').hasClass('hidden'))
    {
        related.push('FullCousinsBool','FullCousins');
    }
    if(!jQuery('#PaternalCousinsBool').hasClass('hidden'))
    {
        related.push('PaternalCousinsBool','PaternalCousins');
    }
    related.forEach(hideQuestion);
}
function fullunclesonhajb ()
{
    related =[];

    if(!jQuery('#PaternalCousinsBool').hasClass('hidden'))
    {
        related.push('PaternalCousinsBool','PaternalCousins');
    }
    related.forEach(hideQuestion);
}
//---------------
jQuery(document).on('click','.language-label',function () {
    var lang = jQuery(this).attr('id');
    setCookie('lang',lang,180);
    location.reload();
});

jQuery(document).ready(function () {

variables();

    jQuery('input:radio[name=Status]').change(function () {
        forallhajb();
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

    //-- الأم والأب
    jQuery('#Father').on('switchChange.bootstrapSwitch',function (e,data) {
        variables();
        forallhajb();
        fathermother(father,mother);
       /* var related = ['Grandfather'];
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
            if(!jQuery('#MaternalGrandmother').hasClass('hidden')){
                related.push('MaternalGrandmother');
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
            if(!(jQuery('#Mother .bootstrap-switch').hasClass('bootstrap-switch-on')))
            {
                related.push('MaternalGrandmother')
                related.forEach(showQuestion);
            }

        }*/
    });
    jQuery('#Mother').on('switchChange.bootstrapSwitch',function (e,data) {
        variables();
        forallhajb();
        fathermother(father,mother);
        /*var related = ['MaternalGrandmother'];
        if (!data)  {
            related.forEach(showQuestion);
        }
        if (data)  {
            related.forEach(hideQuestion);
        }
        if (!data && (jQuery('#Father .bootstrap-switch').hasClass('bootstrap-switch-on')) )  {
            related.forEach(hideQuestion);
        }

        });
        */
    });
// الابناء الذكور
    jQuery('#SonsBool').on('switchChange.bootstrapSwitch',function (e,data) {
        forallhajb();
        var related = ['Sons','FullBrothersBool','FullSistersBool','GrandDaughtersBool','MaternalBrothersBool','MaternalSistersBool'];
        if(data) {
            related.forEach(showQuestion);
        }
        if(!data) {
            related =['FullBrothersBool','FullSistersBool','MaternalBrothersBool','MaternalSistersBool'];
            related.forEach(showQuestion);
            if(!jQuery('#Sons').hasClass('hidden'))
            {
                related = ['Sons','GrandsonsBool','GrandDaughtersBool'];
                related.forEach(hideQuestion);
            }

        }
    });
    jQuery("input[name='Sons']").change(function () {
        forallhajb();
        if ((jQuery("input[name='Sons']").val() > 0))
        {
            if(!jQuery('#Sons').hasClass('hidden')){
               forallhajb();
            }

        }
        if ((jQuery("input[name='Sons']").val() == 0))
        {
            var  related = ['FullBrothersBool','FullSistersBool','GrandDaughtersBool','MaternalBrothersBool','MaternalSistersBool'];
            related.forEach(showQuestion);

        }
    });
    //بنت الابن
    jQuery('#GrandDaughtersBool').on('switchChange.bootstrapSwitch',function (e,data){
        forallhajb();
        forall_(data,'Granddaughters')});
    function forall_ (first,second) {

        if(first) {
            var related = [second];
            related.forEach(showQuestion);
        }
        if(!first) {
            if(!jQuery('#second').hasClass('hidden')){
                related = [second];
                related.forEach(hideQuestion);
            }
        }

    }
    //الاح الشقيق
    jQuery('#FullBrothersBool').on('switchChange.bootstrapSwitch',function (e,data)
    {
        forallhajb();
        if(data)
        {
            forall_(data,'FullBrothers');
          var  related =['PaternalBrothersBool','PaternalSistersBool','FullNephewsBool'];
          related.forEach(showQuestion);
        }
        if(!data) {
            related =['PaternalBrothersBool','PaternalSistersBool','GrandsonsBool'];
            related.forEach(showQuestion);
            if(!jQuery('#FullBrothers').hasClass('hidden'))
            {
                related = ['FullBrothers'];
                related.forEach(hideQuestion);
            }if(!jQuery('#FullNephewsBool').hasClass('hidden'))
            {
                related = ['FullNephewsBool'];
                related.forEach(hideQuestion);
            }

        }
        if(jQuery('#FullBrothers .bootstrap-switch').hasClass('bootstrap-switch-on') && data)
        {
            forallhajb();
            if(!jQuery('#GrandsonsBool').hasClass('hidden'))
            {
                related =['GrandsonsBool']
                related.forEach(hideQuestion);

            }

        }
    });
    jQuery("input[name='FullBrothers']").change(function () {
        forallhajb();
        if ((jQuery("input[name='FullBrothers']").val() > 0))
        {
            if(!jQuery('#FullBrothers').hasClass('hidden')){
                forallhajb();
            }
        }
        if ((jQuery("input[name='FullBrothers']").val() == 0))
        {
            var  related = ['GrandsonsBool','PaternalBrothersBool','PaternalSistersBool','FullNephewsBool'];
            related.forEach(showQuestion);

        }
    });
    //لاأخت الشقيقة
    jQuery('#FullSistersBool').on('switchChange.bootstrapSwitch',function (e,data)
    {
        forallhajb();
        forall_(data,'FullSisters');
    });
    //ابن الأخ
    jQuery('#FullNephewsBool').on('switchChange.bootstrapSwitch',function (e,data){forallhajb(); forall_(data,'FullNephews');});
  //
    //الأخ لأب
    jQuery('#PaternalBrothersBool').on('switchChange.bootstrapSwitch',function (e,data)
    {
        forallhajb();
        if(data)
        {
            forall_(data,'PaternalBrothers');
            var  related =['PaternalNephewsBool'];
            related.forEach(showQuestion);
        }
        if(!data) {
            var related =['FullUnclesBool'];
            related.forEach(showQuestion);
            if(!jQuery('#PaternalBrothers').hasClass('hidden'))
            {
                related = ['PaternalBrothers'];
                related.forEach(hideQuestion);
            }
            if(!jQuery('#PaternalNephewsBool').hasClass('hidden'))
            {
                related = ['PaternalNephewsBool'];
                related.forEach(hideQuestion);
            }
        }

    });
    jQuery("input[name='PaternalBrothers']").change(function () {
        forallhajb();
        if ((jQuery("input[name='PaternalBrothers']").val() > 0))
        {
            if(!jQuery('#PaternalBrothers').hasClass('hidden')){
                forallhajb();
            }
        }
        if ((jQuery("input[name='PaternalBrothers']").val() == 0))
        {
            var  related = ['PaternalNephewsBool'];
            related.forEach(showQuestion);

        }
    });
    //الأخت لأب
    jQuery('#PaternalSistersBool').on('switchChange.bootstrapSwitch',function (e,data){forallhajb();forall_(data,'PaternalSisters');});
    //ابن الأخ الشقيق
    jQuery('#PaternalNephewsBool').on('switchChange.bootstrapSwitch',function (e,data){forallhajb();forall_(data,'PaternalNephews');});
    //العم
    jQuery('#FullUnclesBool').on('switchChange.bootstrapSwitch',function (e,data)
    {forallhajb();
        if(data)
        {
            forall_(data,'FullUncles');
            var  related =['FullCousinsBool'];
            related.forEach(showQuestion);
        }
        if(!data) {
            var related =['PaternalUnclesBool'];
            related.forEach(showQuestion);
            if(!jQuery('#FullUncles').hasClass('hidden'))
            {
                related = ['FullUncles'];
                related.forEach(hideQuestion);
            }
            if(!jQuery('#PaternalUnclesBool').hasClass('hidden'))
            {
                related = ['PaternalUnclesBool'];
                related.forEach(hideQuestion);
            }
        }});
    jQuery("input[name='FullUncles']").change(function () {
        forallhajb();
        if ((jQuery("input[name='FullUncles']").val() > 0))
        {
            if(!jQuery('#FullUncles').hasClass('hidden')){
                forallhajb();
            }
        }
        if ((jQuery("input[name='FullUncles']").val() == 0))
        {
            var  related = ['PaternalUnclesBool'];
            related.forEach(showQuestion);

        }
    });
    //ابن العم
    jQuery('#FullCousinsBool').on('switchChange.bootstrapSwitch',function (e,data){forallhajb();forall_(data,'FullCousins');});
    //العم لأب
    jQuery('#FullUnclesBool').on('switchChange.bootstrapSwitch',function (e,data)
    {forallhajb();
        forall_(data,'PaternalUncles');
    if(data)
        {
            var  related =['PaternalCousinsBool'];
            related.forEach(showQuestion);
        }

        });
    jQuery("input[name='PaternalUncles']").change(function () {
        forallhajb();
        if ((jQuery("input[name='PaternalUncles']").val() > 0))
        {
            if(!jQuery('#PaternalUncles').hasClass('hidden')){
                forallhajb();
            }
        }

    });
    //لأي ابن العم
    jQuery('#PaternalCousinsBool').on('switchChange.bootstrapSwitch',function (e,data){forallhajb();forall_(data,'PaternalCousins');});
    jQuery('#MaternalBrothersBool').on('switchChange.bootstrapSwitch',function (e,data){forallhajb();forall_(data,'MaternalBrothers');});
    jQuery('#MaternalSistersBool').on('switchChange.bootstrapSwitch',function (e,data){  forallhajb();forall_(data,'MaternalSisters');});
    jQuery('#GrandsonsBool').on('switchChange.bootstrapSwitch',function (e,data){
        forallhajb();
        forall_(data,'Grandsons');
    } );
    /*
        //البنات
        jQuery('#DaughtersBool').on('switchChange.bootstrapSwitch',function (e,data) {
            forallhajb();
            forall_(data,'Daughters');
        });
        //ابن الابن
       */
    //بنت الابن
    /*jQuery('#GrandDaughtersBool').on('switchChange.bootstrapSwitch',function (e,data){
        if(data) {
            var related = ['Granddaughters'];
            related.forEach(showQuestion);
        }
        if(!data) {
            if(!jQuery('#Granddaughters').hasClass('hidden')){
                related = ['Granddaughters'];
                related.forEach(hideQuestion);
            }
        }
    } )*/
    /*
    jQuery('#GrandDaughtersBool').on('switchChange.bootstrapSwitch',function (e,data){
        forallhajb();
        forall_(data,'Granddaughters')});

    //الأخوة الأشقاء و FullBrothers ,  FullBrothersBool

    //ابن الأخ الشقيق
    //FullNephewsBool , FullNephews


    //الأخ لأب


    //الأخت لأب


    //ابن الأخ لأب
    //PaternalNephewsBool ,PaternalNephews



    //الأخ لأم
    //MaternalBrothersBool , MaternalBrothers


    //الأخت لأم
    //MaternalSistersBool ,MaternalSisters
    jQuery('#MaternalSistersBool').on('switchChange.bootstrapSwitch',function (e,data){  forallhajb();forall_(data,'MaternalSisters');});

    //العم
    //FullUnclesBool , FullUncles

    //ابن العم
    //FullCousins ,  FullCousinsBool
    jQuery('#FullCousinsBool').on('switchChange.bootstrapSwitch',function (e,data){forallhajb();forall_(data,'FullCousins');});

    //العم لأب
    //PaternalUnclesBool , PaternalUncles

    //ابن العم لأب
    //PaternalCousinsBool , PaternalCousins

*/
    });
