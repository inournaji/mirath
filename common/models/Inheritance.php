<?php

namespace common\models;

use Yii;
use common\models\Question;
/**
 * This is the model class for table "inheritance".
 *
 * @property int $id
 * @property int $gender
 * @property int $husband
 * @property int $wives
 * @property int $sons
 * @property int $daughters
 * @property int $grandsons
 * @property int $granddaughters
 * @property int $father
 * @property int $mother
 * @property int $grandfather
 * @property int $paternal_grandmother
 * @property int $maternal_grandmother
 * @property int $full_brothers
 * @property int $full_sisters
 * @property int $paternal_brothers
 * @property int $paternal_sisters
 * @property int $maternal_brothers
 * @property int $maternal_sisters
 * @property int $full_nephews
 * @property int $paternal_nephews
 * @property int $fullpaternal_uncles
 * @property int $paternal_paternal_uncles
 * @property int $full_cousins
 * @property int $paternal_cousins
 * @property int $status;
 * @property int $aliveSons ;
 * @property int $aliveDaughters ;
 * @property int $aliveGrandsons ;
 * @property int $aliveGrandDaughters ;
 * @property int $aliveFullBrothers;
 * @property int $aliveFullSisters;
 * @property int $alivePaternalBrothers;
 * @property int $alivePaternalSisters;
 * @property int $aliveMaternalBrothers;
 * @property int $aliveMaternalSisters;
 * @property int $aliveFullNephews;
 * @property int $alivePaternalNephews;
 * @property int $FullUncles;
 * @property int $aliveFullUncles;
 * @property int $PaternalUncles;
 * @property int $alivePaternalUncles;
 * @property int $aliveFullCousins;
 * @property int $alivePaternalCousins;
 */
class Inheritance extends \yii\db\ActiveRecord
{
    Const NOTEXIST =0;
    Const EXIST = 1;
    public $questions = array();
    public $currentAnswers = array();
    public $status;
    public $aliveSons ;
    public $aliveDaughters ;
    public $aliveGrandsons ;
    public $aliveGrandDaughters ;
    public $aliveFullBrothers;
    public $aliveFullSisters;
    public $alivePaternalBrothers;
    public $alivePaternalSisters;
    public $aliveMaternalBrothers;
    public $aliveMaternalSisters;
    public $aliveFullNephews;
    public $alivePaternalNephews;
    public $FullUncles;
    public $aliveFullUncles;
    public $PaternalUncles;
    public $alivePaternalUncles;
    public $aliveFullCousins;
    public $alivePaternalCousins;
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'inheritance';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [

            [['gender', 'husband', 'wives', 'sons', 'daughters', 'grandsons', 'granddaughters', 'father', 'mother', 'grandfather', 'paternal_grandmother', 'maternal_grandmother', 'full_brothers', 'full_sisters', 'paternal_brothers', 'paternal_sisters', 'maternal_brothers', 'maternal_sisters', 'full_nephews', 'paternal_nephews', 'fullpaternal_uncles', 'paternal_paternal_uncles', 'full_cousins', 'paternal_cousins'], 'integer'],
            [['gender', 'status','husband', 'wives', 'sons','aliveSons','daughters','aliveDaughters', 'grandsons','aliveGrandsons', 'granddaughters','aliveGrandDaughters', 'father', 'mother', 'grandfather', 'paternal_grandmother', 'maternal_grandmother', 'full_brothers','aliveFullBrothers', 'full_sisters','aliveFullSisters', 'paternal_brothers','alivePaternalBrothers', 'paternal_sisters','alivePaternalSisters', 'maternal_brothers','aliveMaternalBrothers', 'maternal_sisters','aliveMaternalSisters', 'full_nephews','aliveFullNephews', 'paternal_nephews','alivePaternalNephews', 'FullUncles','aliveFullUncles','PaternalUncles', 'alivePaternalUncles', 'full_cousins','aliveFullCousins', 'paternal_cousins','alivePaternalCousins'], 'required'],
            [['gender', 'status','husband', 'wives', 'sons','aliveSons','daughters','aliveDaughters', 'grandsons','aliveGrandsons', 'granddaughters','aliveGrandDaughters', 'father', 'mother', 'grandfather', 'paternal_grandmother', 'maternal_grandmother', 'full_brothers','aliveFullBrothers', 'full_sisters','aliveFullSisters', 'paternal_brothers','alivePaternalBrothers', 'paternal_sisters','alivePaternalSisters', 'maternal_brothers','aliveMaternalBrothers', 'maternal_sisters','aliveMaternalSisters', 'full_nephews','aliveFullNephews', 'paternal_nephews','alivePaternalNephews', 'FullUncles','aliveFullUncles','PaternalUncles', 'alivePaternalUncles', 'full_cousins','aliveFullCousins', 'paternal_cousins','alivePaternalCousins'],'default' ,'value' => 0],
        ];
    }

    public  function toClips(){
        $tmp ='(assert'.PHP_EOL;
        $tmp .='(dead'.PHP_EOL;
        $tmp .='(Gender '.$this->gender.')'.PHP_EOL;
        $tmp .='(Status '.$this->status.')'.PHP_EOL;
        $tmp .='(Husband '.$this->husband.')'.PHP_EOL;
        $tmp .='(Wives '.$this->wives.')'.PHP_EOL;
        $tmp .='(Sons '.$this->sons.')'.PHP_EOL;
        $tmp .='(aliveSons '.$this->aliveSons.')'.PHP_EOL;
        $tmp .='(Daughters '.$this->daughters.')'.PHP_EOL;
        $tmp .='(aliveDaughters '.$this->aliveDaughters.')'.PHP_EOL;
        $tmp .='(Grandsons '.$this->grandsons.')'.PHP_EOL;
        $tmp .='(aliveGrandsons '.$this->aliveGrandsons.')'.PHP_EOL;
        $tmp .='(Granddaughters '.$this->granddaughters.')'.PHP_EOL;
        $tmp .='(aliveGrandDaughters '.$this->aliveGrandDaughters.')'.PHP_EOL;
        $tmp .='(Father '.$this->father.')'.PHP_EOL;
        $tmp .='(Mother '.$this->mother.')'.PHP_EOL;
        $tmp .='(Grandfather '.$this->grandfather.')'.PHP_EOL;
        $tmp .='(PaternalGrandmother '.$this->paternal_grandmother.')'.PHP_EOL;
        $tmp .='(MaternalGrandmother '.$this->maternal_grandmother.')'.PHP_EOL;
        $tmp .='(FullBrothers  '.$this->full_brothers.')'.PHP_EOL;
        $tmp .='(aliveFullBrothers '.$this->aliveFullBrothers.')'.PHP_EOL;
        $tmp .='(FullSisters '.$this->full_sisters.')'.PHP_EOL;
        $tmp .='(aliveFullSisters '.$this->aliveFullSisters.')'.PHP_EOL;
        $tmp .='(PaternalBrothers '.$this->paternal_brothers.')'.PHP_EOL;
        $tmp .='(alivePaternalBrothers '.$this->alivePaternalBrothers.')'.PHP_EOL;
        $tmp .='(PaternalSisters '.$this->paternal_sisters.')'.PHP_EOL;
        $tmp .='(alivePaternalSisters '.$this->alivePaternalSisters.')'.PHP_EOL;
        $tmp .='(MaternalBrothers '.$this->maternal_brothers.')'.PHP_EOL;
        $tmp .='(aliveMaternalBrothers '.$this->aliveMaternalBrothers.')'.PHP_EOL;
        $tmp .='(MaternalSisters '.$this->maternal_sisters.')'.PHP_EOL;
        $tmp .='(aliveMaternalSisters '.$this->aliveMaternalSisters.')'.PHP_EOL;
        $tmp .='(FullNephews '.$this->full_nephews.')'.PHP_EOL;
        $tmp .='(aliveFullNephews '.$this->aliveFullNephews.')'.PHP_EOL;
        $tmp .='(PaternalNephews '.$this->paternal_nephews.')'.PHP_EOL;
        $tmp .='(alivePaternalNephews '.$this->alivePaternalNephews.')'.PHP_EOL;
        $tmp .='(FullUncles '.$this->FullUncles.')'.PHP_EOL;
        $tmp .='(aliveFullUncles '.$this->aliveFullUncles.')'.PHP_EOL;
        $tmp .='(PaternalUncles '.$this->PaternalUncles.')'.PHP_EOL;
        $tmp .='(alivePaternalUncles '.$this->alivePaternalUncles.')'.PHP_EOL;
        $tmp .='(FullCousins '.$this->full_cousins.')'.PHP_EOL;
        $tmp .='(aliveFullCousins '.$this->aliveFullCousins.')'.PHP_EOL;
        $tmp .='(PaternalCousins '.$this->paternal_cousins.')'.PHP_EOL;
        $tmp .='(alivePaternalCousins '.$this->alivePaternalCousins.')'.PHP_EOL;
        $tmp .='))'.PHP_EOL;

        return $tmp;
    }


    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => Yii::t('app', 'ID'),
            'gender' => Yii::t('app', 'Gender'),
            'husband' => Yii::t('app', 'Husband'),
            'wives' => Yii::t('app', 'Wives'),
            'sons' => Yii::t('app', 'Sons'),
            'daughters' => Yii::t('app', 'Daughters'),
            'grandsons' => Yii::t('app', 'Grandsons'),
            'granddaughters' => Yii::t('app', 'Granddaughters'),
            'father' => Yii::t('app', 'Father'),
            'mother' => Yii::t('app', 'Mother'),
            'grandfather' => Yii::t('app', 'Grandfather'),
            'paternal_grandmother' => Yii::t('app', 'Paternal Grandmother'),
            'maternal_grandmother' => Yii::t('app', 'Maternal Grandmother'),
            'full_brothers' => Yii::t('app', 'Full Brothers'),
            'full_sisters' => Yii::t('app', 'Full Sisters'),
            'paternal_brothers' => Yii::t('app', 'Paternal Brothers'),
            'paternal_sisters' => Yii::t('app', 'Paternal Sisters'),
            'maternal_brothers' => Yii::t('app', 'Maternal Brothers'),
            'maternal_sisters' => Yii::t('app', 'Maternal Sisters'),
            'full_nephews' => Yii::t('app', 'Full Nephews'),
            'paternal_nephews' => Yii::t('app', 'Paternal Nephews'),
            'fullpaternal_uncles' => Yii::t('app', 'Fullpaternal Uncles'),
            'paternal_paternal_uncles' => Yii::t('app', 'Paternal Paternal Uncles'),
            'full_cousins' => Yii::t('app', 'Full Cousins'),
            'paternal_cousins' => Yii::t('app', 'Paternal Cousins'),
        ];
    }
}
