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
function forall_ (first,second) {

    if(first) {
        var related = [second];
        related.forEach(showQuestion);
        jQuery(second).trigger('click');
        jQuery(second).trigger('click');
    }
    if(!first) {
        if(!jQuery('#second').hasClass('hidden')){
            related = [second];
            related.forEach(hideQuestion);
        }
    }

}
function fathermother(father,mother) {
variables();
    if(!father && mother)
    {
        forallhajb();
        var related =['Grandfather','FullBrothersBool','FullSistersBool','MaternalBrothersBool','MaternalSistersBool'];
        related.forEach(showQuestion);
        forall_(true,'FullSisters');
        forall_(true,'FullBrothers');
        forall_(true,'MaternalBrothers');
        forall_(true,'MaternalSisters');

        if(sonsBool && (jQuery("input[name='Sons']").val()==0))
        {
            related = ['GrandSons'];
            related.forEach(showQuestion);
        }


    }

    if(!father && !mother)
        {
            forallhajb();
            var related =['Grandfather','PaternalGrandmother','MaternalGrandmother','FullBrothersBool','FullSistersBool','MaternalBrothersBool','MaternalSistersBool'];
            related.forEach(showQuestion);
            forall_(true,'FullSisters');
            forall_(true,'FullBrothers');
            forall_(true,'MaternalBrothers');
            forall_(true,'MaternalSisters');
            if(sonsBool && (jQuery("input[name='Sons']").val()==0))
            {
                related = ['GrandSons'];
                related.forEach(showQuestion);
            }

    }
    if(father && !mother)
    {
        forallhajb();
        var related =['MaternalGrandmother'];
        related.forEach(showQuestion);

    }
    if(father && mother)
    {
        fatherhajb();
    }
    }

function forallhajb() {
    variables() ;
    if(father){fatherhajb()}
    if(mother){motherhajb()}
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

function  returndefault(){
    variables() ;
    if(jQuery('#Father').hasClass('hidden'))
    {
        if(!father)
        {
            jQuery('input[name="Father"]').trigger('click');
        }
    }
    if(jQuery('#Mother').hasClass('hidden'))
    {
        if(!mother)
        {
            jQuery('input[name="Mother"]').trigger('click');
        }
    }


    if(jQuery('#SonsBool').hasClass('hidden'))
    {
        if(!sonsBool)
        {
            jQuery('input[name="SonsBool"]').trigger('click');
            jQuery("input[name='Sons']").val('0');
        }
    }

    if(jQuery('#DaughtersBool').hasClass('hidden'))
    {
        if(!daughtersBool)
        {
            jQuery('input[name="DaughtersBool"]').trigger('click');
        }
    }

    if(jQuery('#FullBrothersBool').hasClass('hidden'))
    {
        if(!fullBrothersBool)
        {
            jQuery('input[name="FullBrothersBool"]').trigger('click');
        }
    }

    if(jQuery('#FullSistersBool').hasClass('hidden'))
    {
        if(!fullSistersBool)
        {
            jQuery('input[name="FullSistersBool"]').trigger('click');
        }
    }

    if(jQuery('#GrandsonsBool').hasClass('hidden'))
    {
        if(!grandsonsBool)
        {
            jQuery('input[name="GrandsonsBool"]').trigger('click');
        }
    }

    if(jQuery('#GrandDaughtersBool').hasClass('hidden'))
    {
        if(!grandDaughtersBool)
        {
            jQuery('input[name="GrandDaughtersBool"]').trigger('click');
        }
    }

    if(jQuery('#FullNephewsBool').hasClass('hidden'))
    {
        if(!fullNephewsBool)
        {
            jQuery('input[name="FullNephewsBool"]').trigger('click');
        }
    }

    if(jQuery('#PaternalBrothersBool').hasClass('hidden'))
    {
        if(!paternalBrothersBool)
        {
            jQuery('input[name="PaternalBrothersBool"]').trigger('click');
        }
    }

    if(jQuery('#PaternalSistersBool').hasClass('hidden'))
    {
        if(!paternalSistersBool)
        {
            jQuery('input[name="PaternalSistersBool"]').trigger('click');
        }
    }

    if(jQuery('#MaternalBrothersBool').hasClass('hidden'))
    {
        if(!maternalBrothersBool)
        {
            jQuery('input[name="MaternalBrothersBool"]').trigger('click');
        }
    }

    if(jQuery('#MaternalSistersBool').hasClass('hidden'))
    {
        if(!maternalSistersBool)
        {
            jQuery('input[name="MaternalSistersBool"]').trigger('click');
        }
    }
    if(jQuery('#PaternalGrandmother').hasClass('hidden'))
    {
        if(!paternalGrandmother)
        {
            jQuery('input[name="PaternalGrandmother"]').trigger('click');
        }
    }
    if(jQuery('#Grandfather').hasClass('hidden'))
    {
        if(!grandfather)
        {
            jQuery('input[name="Grandfather"]').trigger('click');
        }
    }

    if(jQuery('#MaternalGrandmother').hasClass('hidden'))
    {
        if(!maternalGrandmother)
        {
            jQuery('input[name="MaternalGrandmother"]').trigger('click');
        }
    }

    if(jQuery('#FullCousinsBool').hasClass('hidden'))
    {
        if(!fullCousinsBool)
        {
            jQuery('input[name="FullCousinsBool"]').trigger('click');
        }
    }

    if(jQuery('#PaternalUnclesBool').hasClass('hidden'))
    {
        if(!paternalUnclesBool)
        {
            jQuery('input[name="PaternalUnclesBool"]').trigger('click');
        }
    }

    if(jQuery('#PaternalNephewsBool').hasClass('hidden'))
    {
        if(!paternalNephewsBool)
        {
            jQuery('input[name="PaternalNephewsBool"]').trigger('click');
        }
    }
    if(jQuery('#PaternalCousinsBool').hasClass('hidden'))
    {
        if(!paternalCousinsBool)
        {
            jQuery('input[name="PaternalCousinsBool"]').trigger('click');
        }
    }
}

function fatherhajb ()
{
    related =[];

    if(!jQuery('#GrandSonsBool').hasClass('hidden'))
    {
        related.push('GrandsonsBool');
        related.push('GrandSons');
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
    if(!jQuery('#MaternalBrothersBool').hasClass('hidden'))
    {
        related.push('MaternalBrothersBool','MaternalBrothers');
    }
    if(!jQuery('#FullNephewsBool').hasClass('hidden'))
    {
        related.push('FullNephewsBool','FullNephews');
    }
    if(!jQuery('#MaternalSistersBool').hasClass('hidden'))
    {
        related.push('MaternalSistersBool','MaternalSisters');
    }
    if(!jQuery('#PaternalNephewsBool').hasClass('hidden'))
    {
        related.push('PaternalNephewsBool','PaternalNephews');
    }
    if(!jQuery('#FullUnclesBool').hasClass('hidden'))
    {
        related.push('FullUnclesBool','FullUncles');
    }
    if(!jQuery('#PaternalUnclesBool').hasClass('hidden'))
    {
        related.push('PaternalUnclesBool','PaternalUncles');
    }
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
    if(!jQuery('#PaternalBrothersBool').hasClass('hidden'))
    {
        related.push('PaternalBrothersBool','PaternalBrothers');
    }
    if(!jQuery('#FullNephewsBool').hasClass('hidden'))
    {
        related.push('FullNephewsBool','FullNephews');
    }
    if(!jQuery('#PaternalNephewsBool').hasClass('hidden'))
    {
        related.push('PaternalNephewsBool','PaternalNephews');
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
    if(!jQuery('#PaternalUnclesBool').hasClass('hidden')) {
        related.push('PaternalUnclesBool', 'PaternalUncles');
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
    if(!jQuery('#PaternalBrothersBool').hasClass('hidden'))
    {
        related.push('PaternalBrothersBool','PaternalBrothers');
    }
    if(!jQuery('#PaternalSistersBool').hasClass('hidden'))
    {
        related.push('PaternalSistersBool','PaternalSisters');
    }
    if(!jQuery('#FullNephewsBool').hasClass('hidden'))
    {
        related.push('FullNephewsBool','FullNephews');
    }
    if(!jQuery('#PaternalNephewsBool').hasClass('hidden'))
    {
        related.push('PaternalNephewsBool','PaternalNephews');
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
    if(!jQuery('#PaternalCousinsBool').hasClass('hidden'))
    {
        related.push('PaternalCousinsBool','PaternalCousins');
    }
    related.forEach(hideQuestion);
}
function fullbrosonhajb ()
{
    related =[];
    if(!jQuery('#PaternalNephewsBool').hasClass('hidden'))
    {
        related.push('PaternalNephewsBool','PaternalNephews');
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
function motherhajb()
{
    related =[];

    if(!jQuery('#MaternalGrandmother').hasClass('hidden'))
    {
        related.push('MaternalGrandmother');
    }
    if(!jQuery('#PaternalGrandmother').hasClass('hidden'))
    {
        related.push('PaternalGrandmother');
    }    related.forEach(hideQuestion);
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
        returndefault();
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
            jQuery('input[name="SonsBool"]').trigger('click');
            jQuery('input[name="SonsBool"]').trigger('click');
            jQuery('input[name="DaughtersBool"]').trigger('click');
            jQuery('input[name="DaughtersBool"]').trigger('click');

        }
        if (jQuery("input[name='Status']:checked").val() == 2) {

            if(!jQuery('#Wives').hasClass('hidden')){
                related.push('Wives');
            }
            if(!jQuery('#Sons').hasClass('hidden')) {
                related.push('Sons');
            }
            if(!jQuery('#Daughters').hasClass('hidden')){
                    related.push('Daughters');
                }
            if(!jQuery('#GrandDaughtersBool').hasClass('hidden')){
                related.push('GrandDaughtersBool');
            }
            if(!jQuery('#Granddaughters').hasClass('hidden')){
                related.push('Granddaughters');
            }
            if(!jQuery('#GrandSons').hasClass('hidden')){
                related.push('GrandSons');
            }
            if(!jQuery('#GrandSonsBool').hasClass('hidden')){
                related.push('GrandSonsBool');
            }

            related.forEach(hideQuestion);
        }

    });
    //-- الأم والأب
    jQuery('#Father').on('switchChange.bootstrapSwitch',function (e,data) {
        variables();
        forallhajb();
        returndefault()
        fathermother(father,mother);
    });
    jQuery('#Mother').on('switchChange.bootstrapSwitch',function (e,data) {
        variables();
        forallhajb();
        returndefault()
        fathermother(father,mother);

    });

//الأبناء الذكور
    jQuery('#SonsBool').on('switchChange.bootstrapSwitch',function (e,data) {
    forallhajb();
    returndefault();
    if(data)
    {
     forall_(data,'Sons');
        forallhajb();}
     if(!data)
     {
         if(!jQuery('#Sons').hasClass('hidden')){
             related =['Sons'];
             related.forEach(hideQuestion);
         }

         var  related = ['FullBrothersBool','FullSistersBool','MaternalBrothersBool','MaternalSistersBool']
         related.forEach(showQuestion);
         forall_(true,'FullBrothers');
         forall_(true,'FullSisters');
         forall_(true,'MaternalBrothers');
         forall_(true,'MaternalSisters');
     }forallhajb();
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
            var  related = ['GrandDaughtersBool','GrandSonsBool','FullBrothersBool','FullSistersBool','MaternalBrothersBool','MaternalSistersBool'];
            related.forEach(showQuestion);
            forall_(true,'Granddaughters');
            forall_(true,'GrandSons');
            forall_(true,'FullBrothers');
            forall_(true,'FullSisters');
            forall_(true,'MaternalBrothers');
            forall_(true,'MaternalSisters');



            forallhajb();


        }
    });
 //البنات الإناث

    //البنات
    jQuery('#DaughtersBool').on('switchChange.bootstrapSwitch',function (e,data) {
        forallhajb();
        returndefault();
        forall_(data,'Daughters');
        forallhajb();
    });

    //بنت الابن
    jQuery('#GrandDaughtersBool').on('switchChange.bootstrapSwitch',function (e,data){
        forallhajb();
        returndefault();
        forall_(data,'Granddaughters');
        forallhajb();});

    //ابن الابن
    jQuery('#GrandSonsBool').on('switchChange.bootstrapSwitch',function (e,data){
        forallhajb();
        returndefault();
        forall_(data,'Granddaughters');
        forallhajb();});


    //الاح الشقيق
    jQuery('#FullBrothersBool').on('switchChange.bootstrapSwitch',function (e,data)
    {
        forallhajb();
        returndefault();
        if(data)
        {
            forall_(data,'FullBrothers');
            forallhajb();
        }
        if(!data)
        {
            var  related = ['PaternalBrothersBool','PaternalSistersBool'];
            related.forEach(showQuestion);
            forall_(true,'PaternalBrothers');
            forall_(true,'PaternalSisters');
            forallhajb();
            if(!jQuery('#FullBrothers').hasClass('hidden')){
                forall_(data,'FullBrothers');
                forallhajb();
            }
        }
        if(jQuery('#FullBrothers .bootstrap-switch').hasClass('bootstrap-switch-on') && data) {
            forallhajb();
            if (!jQuery('#GrandsonsBool').hasClass('hidden')) {
                related = ['GrandsonsBool']
                related.forEach(hideQuestion);
                forallhajb();

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
            forallhajb();
            var  related = ['PaternalBrothersBool','PaternalSistersBool'];
            related.forEach(showQuestion);
            forall_(true,'PaternalBrothers');
            forall_(true,'PaternalSisters');
            forallhajb();}});


            //لاأخت الشقيقة

            jQuery('#FullSistersBool').on('switchChange.bootstrapSwitch',function (e,data)
            {
                forallhajb();
                returndefault();
                if(data)
                {
                    forall_(data,'FullSisters');
                    forallhajb();
                }
                if(!data)
                {
                    var  related = ['PaternalBrothersBool','PaternalSistersBool'];
                    related.forEach(showQuestion);
                    forall_(true,'PaternalBrothers');
                    forall_(true,'PaternalSisters');
                    forallhajb();

                    if(jQuery('#FullBrothersBool .bootstrap-switch').hasClass('bootstrap-switch-on') && (jQuery("input[name='FullBrothers']").val() == 0))
                    {
                        var  related = ['FullNephewsBool'];
                        related.forEach(showQuestion);
                        forall_(true,'FullNephews');
                        forallhajb();
                    }
                    if(!jQuery('#FullSisters').hasClass('hidden')){
                        forall_(data,'FullSisters');
                    }
                    forallhajb();
                }
                if(jQuery('#FullBrothersBool .bootstrap-switch').hasClass('bootstrap-switch-on') && data) {
                    forallhajb();
                    if (!jQuery('#GrandsonsBool').hasClass('hidden')) {
                        related = ['GrandsonsBool']
                        related.forEach(hideQuestion);
                        forallhajb();
                    }
                }

            });
    jQuery("input[name='FullSisters']").change(function () {
        forallhajb();
        if ((jQuery("input[name='FullSisters']").val() > 0))
        {
            if(!jQuery('#FullSisters').hasClass('hidden')){
                forallhajb();
            }

        }
        if ((jQuery("input[name='FullSisters']").val() == 0))
        {
            forallhajb();
            var  related = ['PaternalBrothersBool','PaternalSistersBool'];
            related.forEach(showQuestion);
            forall_(true,'PaternalBrothers');
            forall_(true,'PaternalSisters');
            forallhajb();

        }});
    //ابن الأخ
    jQuery('#FullNephewsBool').on('switchChange.bootstrapSwitch',function (e,data)
    {
        forallhajb();
    if(data){
        forall_(data,'FullNephews');
        forallhajb();
    }
    if(!data)
    {
        var related =['PaternalBrothersBool'];
        related.forEach(showQuestion);
        forall_(true,'PaternalBrothers');
        forallhajb();
    }
    });

    //الأخ لأب
    jQuery('#PaternalBrothersBool').on('switchChange.bootstrapSwitch',function (e,data)
    {
        forallhajb();
        if(data)
        {
            forall_(data,'PaternalBrothers');
            forallhajb();
        }
        if(!data) {
            var related =['FullUnclesBool'];
            related.forEach(showQuestion);
            forall_(true,'FullUncles');
            if(!jQuery('#PaternalBrothers').hasClass('hidden'))
            {
                related = ['PaternalBrothers'];
                related.forEach(hideQuestion);
            }
            if(!jQuery('#PaternalNephewsBool').hasClass('hidden')) {
                related = ['PaternalNephewsBool'];
                related.forEach(hideQuestion);
            }
                if(!jQuery('#PaternalNephews').hasClass('hidden'))
                {
                    related = ['PaternalNephews'];
                    related.forEach(hideQuestion);
                }
            forallhajb();
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
            forall_(true,'PaternalNephews');
            forallhajb();

        }
    });
    //الأخت لأب
    jQuery('#PaternalSistersBool').on('switchChange.bootstrapSwitch',function (e,data){forall_(data,'PaternalSisters'); forallhajb();});
//ابن الأخ لأب
    jQuery('#PaternalNephewsBool').on('switchChange.bootstrapSwitch',function (e,data)
    { forallhajb();
        if(data){
            forall_(data,'PaternalNephews');
            forallhajb();

        }
        if(!data)
        {
            var related =['FullUnclesBool'];
            related.forEach(showQuestion);
            forall_(true,'FullUncles');
            forallhajb();
        }
        });
    //العم
    jQuery('#FullUnclesBool').on('switchChange.bootstrapSwitch',function (e,data)
    { forallhajb();
        if(data)
        {
            forall_(data,'FullUncles');
            forallhajb();

        }
        if(!data) {
            var related =['PaternalUnclesBool'];
            related.forEach(showQuestion);
            forall_(true,'PaternalUncles');
            forallhajb();

        }

    });
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
            forall_(true,'PaternalUncles');
            forallhajb();


        }
    });

    //العم لأب
    jQuery('#PaternalUnclesBool').on('switchChange.bootstrapSwitch',function (e,data)
    { forallhajb();
        if(data)
        {
            forall_(data,'PaternalUncles');
            forallhajb();

        }
        if(!data) {
            var related =['FullCousinsBool'];
            related.forEach(showQuestion);
            forall_(true,'FullCousins');
            forallhajb();

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
        if ((jQuery("input[name='PaternalUncles']").val() == 0))
        {

            var  related = ['FullCousinsBool'];
            related.forEach(showQuestion);
            forall_(true,'FullCousins');
            forallhajb();


        }
    });
    //ابن العم
    jQuery('#FullCousinsBool').on('switchChange.bootstrapSwitch',function (e,data)
    { forallhajb();
        if(data)
        {
            forall_(data,'FullCousins');
            forallhajb();

        }
        if(!data) {
            var related =['PaternalCousinsBool'];
            related.forEach(showQuestion);
            forall_(true,'PaternalCousins');
            forallhajb();

        }

    });
    jQuery("input[name='FullCousins']").change(function () {
        forallhajb();
        if ((jQuery("input[name='FullCousins']").val() > 0))
        {
            if(!jQuery('#FullCousins').hasClass('hidden')){
                forallhajb();
            }
        }
        if ((jQuery("input[name='FullCousins']").val() == 0))
        {

            var  related = ['PaternalCousinsBool'];
            related.forEach(showQuestion);
            forall_(true,'PaternalCousins');
            forallhajb();



        }
    });

    //ابن العم لأب
    jQuery('#PaternalCousinsBool').on('switchChange.bootstrapSwitch',function (e,data){

        forallhajb(); if(data){forall_(data,'PaternalCousins');  forallhajb();}
    if(!data){
            if(!jQuery('#PaternalCousins').hasClass('hidden')){
       var related = ['PaternalCousins'];
        related.forEach(hideQuestion);
                forallhajb();
    }}
    });
    //الأخ لأم
    //MaternalBrothersBool , MaternalBrothers
    jQuery('#MaternalBrothersBool').on('switchChange.bootstrapSwitch',function (e,data){  forallhajb();forall_(data,'MaternalBrothers'); forallhajb();});


    //الأخت لأم
    //MaternalSistersBool ,MaternalSisters
    jQuery('#MaternalSistersBool').on('switchChange.bootstrapSwitch',function (e,data){forallhajb();forall_(data,'MaternalSisters'); forallhajb();});


    //ابن الأخ الشقيق

    jQuery("input[name='FullUncles']").change(function () {
        if ((jQuery("input[name='FullUncles']").val() > 0))
        {

            if(!jQuery('#FullCousinsBool').hasClass('hidden')){
                related =['FullCousinsBool'];
                related.forEach(hideQuestion);

            }
            forallhajb();
        }
        if ((jQuery("input[name='FullUncles']").val() == 0))
        {
            var  related = ['PaternalUnclesBool'];
            related.forEach(showQuestion);
            forallhajb();
        }
    });
    //العم
   /* jQuery('#FullUnclesBool').on('switchChange.bootstrapSwitch',function (e,data)
    {
        forallhajb();
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
            if(!jQuery('#FullCousinsBool').hasClass('hidden'))
            {
                related = ['FullCousinsBool'];
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
    });*/
    /*
    //ابن العم
    jQuery('#FullCousinsBool').on('switchChange.bootstrapSwitch',function (e,data){forall_(data,'FullCousins');});
    //العم لأب
    jQuery('#PaternalUnclesBool').on('switchChange.bootstrapSwitch',function (e,data)
    {
        forall_(data,'PaternalUncles');
    if(data)
        {
            var  related =['PaternalCousinsBool'];
            related.forEach(showQuestion);
        }
        if(!data){}

        });
    jQuery("input[name='PaternalUncles']").change(function () {
        if ((jQuery("input[name='PaternalUncles']").val() > 0))
        {
            if(!jQuery('#PaternalCousinsBool').hasClass('hidden')){
                related =['PaternalCousinsBool'];
                related.forEach(hideQuestion);
            }
        }
        if ((jQuery("input[name='PaternalUncles']").val() == 0))
        {
            var  related = ['PaternalCousinsBool'];
            related.forEach(showQuestion);

        }

    });
    //لأي ابن العم
    jQuery('#PaternalCousinsBool').on('switchChange.bootstrapSwitch',function (e,data){forall_(data,'PaternalCousins');});
    jQuery('#MaternalBrothersBool').on('switchChange.bootstrapSwitch',function (e,data){forall_(data,'MaternalBrothers');});
    jQuery('#MaternalSistersBool').on('switchChange.bootstrapSwitch',function (e,data){ forall_(data,'MaternalSisters');});
    jQuery('#GrandsonsBool').on('switchChange.bootstrapSwitch',function (e,data){

        forall_(data,'Grandsons');
    } );
    /*
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
    setTimeout(function() {
        forallhajb();
        jQuery('input[name="Father"]').trigger('click');
        jQuery('input[name="Father"]').trigger('click');

    }, 1);
    setTimeout(function() {
        if(!jQuery('#FullBrothers').hasClass('hidden')){
             var related = ['FullBrothers'];
             related.forEach(hideQuestion);
                    }
        if(!jQuery('#FullSisters').hasClass('hidden')){
            var related = ['FullSisters'];
            related.forEach(hideQuestion);
        }
        if(!jQuery('#MaternalBrothers').hasClass('hidden')){
            var related = ['MaternalBrothers'];
            related.forEach(hideQuestion);
        }
        if(!jQuery('#MaternalSisters').hasClass('hidden')){
            var related = ['MaternalSisters'];
            related.forEach(hideQuestion);
        }
    }, 2);
    });
