<?php

namespace common\component\ClipsCalculator;

use yii\web\ViewAction;
use common\models\Inheritance;
/**
 * Created by PhpStorm.
 * User: Nour
 * Date: 27/03/2018
 * Time: 02:27 م
 */
class ClipsHelper
{
    public static function calculate($ClipsObject)
    {

        $path = \Yii::getAlias('@common') . DIRECTORY_SEPARATOR . "component" . DIRECTORY_SEPARATOR . "core" . DIRECTORY_SEPARATOR;
        $filename =  $path.DIRECTORY_SEPARATOR."calculator.clp";
        $engine =  $path.DIRECTORY_SEPARATOR."engine".DIRECTORY_SEPARATOR;
        $loader_bat_text  = '(clear)'.PHP_EOL;
        $loader_bat_text  .= '(load  ' . $filename. ' )'.PHP_EOL;
        $loader_bat_text .= $ClipsObject . PHP_EOL;
        $loader_bat_text .= '(run)' . PHP_EOL;
        $loader_bat_text .= '(exit)' . PHP_EOL;
        $tmpfname = tempnam($path."/tmp", "prefix-");
        $handle = fopen($tmpfname, "w");
        fwrite($handle, $loader_bat_text);
        fclose($handle);
        $shell_result = shell_exec($engine . "clips-ubuntu -f2 " . $tmpfname);
        $clips_output =  explode("\n",$shell_result);

        $result = array();
        foreach ($clips_output as $row){
            if(strpos($row,',')){
                $tmp = explode(",",$row);
                $is_exists = false;
                foreach ($result as $row2){
                    if($row2[0] == $tmp[0])
                        $is_exists = true;
                }
                if(!$is_exists){
                    $tmp[1]= round($tmp[1],2);
                    $result[] = $tmp;
                }
            }
        }
        return $result;


    }
//    public static function ObjectToClips(Inheritance $object){
//      $tmp ='(assert'.PHP_EOL;
//      $tmp .='(dead'.PHP_EOL;
//      $tmp .='(Gender '.$object->gender.')'.PHP_EOL;
//      $tmp .='(Status '.$object->status.')'.PHP_EOL;
//      $tmp .='(Husband '.$object->husband.')'.PHP_EOL;
//      $tmp .='(Wives '.$object->wives.')'.PHP_EOL;
//      $tmp .='(Sons '.$object->sons.')'.PHP_EOL;
//      $tmp .='(aliveSons '.$object->aliveSons.')'.PHP_EOL;
//      $tmp .='(Daughters '.$object->daughters.')'.PHP_EOL;
//      $tmp .='(aliveDaughters '.$object->aliveDaughters.')'.PHP_EOL;
//      $tmp .='(Grandsons '.$object->grandsons.')'.PHP_EOL;
//      $tmp .='(aliveGrandsons '.$object->aliveGrandsons.')'.PHP_EOL;
//      $tmp .='(Granddaughters '.$object->granddaughters.')'.PHP_EOL;
//      $tmp .='(aliveGrandDaughters '.$object->aliveGrandDaughters.')'.PHP_EOL;
//      $tmp .='(Father '.$object->father.')'.PHP_EOL;
//      $tmp .='(Mother '.$object->mother.')'.PHP_EOL;
//      $tmp .='(Grandfather '.$object->grandfather.')'.PHP_EOL;
//      $tmp .='(PaternalGrandmother '.$object->paternal_grandmother.')'.PHP_EOL;
//      $tmp .='(MaternalGrandmother '.$object->maternal_grandmother.')'.PHP_EOL;
//      $tmp .='(FullBrothers  '.$object->full_brothers.')'.PHP_EOL;
//      $tmp .='(aliveFullBrothers '.$object->aliveFullBrothers.')'.PHP_EOL;
//      $tmp .='(FullSisters '.$object->full_sisters.')'.PHP_EOL;
//      $tmp .='(aliveFullSisters '.$object->aliveFullSisters.')'.PHP_EOL;
//      $tmp .='(PaternalBrothers '.$object->paternal_brothers.')'.PHP_EOL;
//      $tmp .='(alivePaternalBrothers '.$object->alivePaternalBrothers.')'.PHP_EOL;
//      $tmp .='(PaternalSisters '.$object->paternal_sisters.')'.PHP_EOL;
//      $tmp .='(alivePaternalSisters '.$object->alivePaternalSisters.')'.PHP_EOL;
//      $tmp .='(MaternalBrothers '.$object->maternal_brothers.')'.PHP_EOL;
//      $tmp .='(aliveMaternalBrothers '.$object->aliveMaternalBrothers.')'.PHP_EOL;
//      $tmp .='(MaternalSisters '.$object->maternal_sisters.')'.PHP_EOL;
//      $tmp .='(aliveMaternalSisters '.$object->aliveMaternalSisters.')'.PHP_EOL;
//      $tmp .='(FullNephews '.$object->full_nephews.')'.PHP_EOL;
//      $tmp .='(aliveFullNephews '.$object->aliveFullNephews.')'.PHP_EOL;
//      $tmp .='(PaternalNephews '.$object->paternal_nephews.')'.PHP_EOL;
//      $tmp .='(alivePaternalNephews '.$object->alivePaternalNephews.')'.PHP_EOL;
//      $tmp .='(FullUncles '.$object->FullUncles.')'.PHP_EOL;
//      $tmp .='(aliveFullUncles '.$object->aliveFullUncles.')'.PHP_EOL;
//      $tmp .='(PaternalUncles '.$object->PaternalUncles.')'.PHP_EOL;
//      $tmp .='(alivePaternalUncles '.$object->alivePaternalUncles.')'.PHP_EOL;
//      $tmp .='(FullCousins '.$object->full_cousins.')'.PHP_EOL;
//      $tmp .='(aliveFullCousins '.$object->aliveFullCousins.')'.PHP_EOL;
//      $tmp .='(PaternalCousins '.$object->paternal_cousins.')'.PHP_EOL;
//      $tmp .='(alivePaternalCousins '.$object->alivePaternalCousins.')'.PHP_EOL;
//      $tmp .='))'.PHP_EOL;
//
//      return $tmp;
//    }


}