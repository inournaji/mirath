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
 * @property int $paternalcousins
 * @property int $status;
 * @property int $fulluncles;
 * @property int $paternaluncles;
 * @property int $paternalgrandmother;
 * @property int $maternalgrandmother;
 * @property int $fullbrothers;
 * @property int $fullsisters;
 * @property int $paternalbrothers;
 * @property int $paternalsisters;
 * @property int $maternalbrothers;
 * @property int $maternalsisters;
 * @property int $fullnephews;
 * @property int $paternalnephews;
 * @property int $fullpaternaluncles;
 * @property int $paternalpaternaluncles;
 * @property int $fullcousins;
 */
class Inheritance extends \yii\db\ActiveRecord
{
    Const NOTEXIST =0;
    Const EXIST = 1;
    public $questions = array();
    public $currentAnswers = array();
    public $status;
    public $fulluncles;
    public $paternaluncles;
    public $paternalgrandmother;
    public $maternalgrandmother;
    public $fullbrothers;
    public $fullsisters;
    public $paternalbrothers;
    public $paternalsisters;
    public $maternalbrothers;
    public $maternalsisters;
    public $fullnephews;
    public $paternalnephews;
    public $fullpaternaluncles;
    public $paternalpaternaluncles;
    public $fullcousins;
    public $paternalcousins;

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
            [['fulluncles','paternaluncles','paternalgrandmother','maternalgrandmother','fullbrothers','fullsisters','paternalbrothers','paternalsisters','maternalbrothers','maternalsisters','fullnephews','paternalnephews','fullpaternaluncles','paternalpaternaluncles','fullcousins','paternalcousins'],'safe'],
            [['gender', 'status','husband', 'wives', 'sons','daughters', 'grandsons','granddaughters', 'father', 'mother', 'grandfather', 'paternal_grandmother', 'maternal_grandmother', 'full_brothers', 'full_sisters', 'paternal_brothers', 'paternal_sisters', 'maternal_brothers', 'maternal_sisters', 'full_nephews', 'paternal_nephews', 'fulluncles','paternaluncles',  'full_cousins', 'paternalcousins','fulluncles','paternaluncles','paternalgrandmother','maternalgrandmother','fullbrothers','fullsisters','paternalbrothers','paternalsisters','maternalbrothers','maternalsisters','fullnephews','paternalnephews','fullpaternaluncles','paternalpaternaluncles','fullcousins'], 'integer'],
            [['gender', 'status','husband', 'wives', 'sons','daughters', 'grandsons','granddaughters', 'father', 'mother', 'grandfather','fulluncles','paternaluncles','paternalgrandmother','maternalgrandmother','fullbrothers','fullsisters','paternalbrothers','paternalsisters','maternalbrothers','maternalsisters','fullnephews','paternalnephews','fullcousins','paternalcousins'], 'required'],
            [['gender', 'status','husband', 'wives', 'sons','daughters', 'grandsons','granddaughters', 'father', 'mother', 'grandfather','fulluncles','paternaluncles','paternalgrandmother','maternalgrandmother','fullbrothers','fullsisters','paternalbrothers','paternalsisters','maternalbrothers','maternalsisters','fullnephews','paternalnephews','fullpaternaluncles','paternalpaternaluncles','fullcousins','paternalcousins'],'default' ,'value' => 0],
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
        $tmp .='(Daughters '.$this->daughters.')'.PHP_EOL;
        $tmp .='(Grandsons '.$this->grandsons.')'.PHP_EOL;
        $tmp .='(Granddaughters '.$this->granddaughters.')'.PHP_EOL;
        $tmp .='(Father '.$this->father.')'.PHP_EOL;
        $tmp .='(Mother '.$this->mother.')'.PHP_EOL;
        $tmp .='(Grandfather '.$this->grandfather.')'.PHP_EOL;
        $tmp .='(PaternalGrandmother '.$this->paternalgrandmother.')'.PHP_EOL;
        $tmp .='(MaternalGrandmother '.$this->maternalgrandmother.')'.PHP_EOL;
        $tmp .='(FullBrothers  '.$this->fullbrothers.')'.PHP_EOL;
        $tmp .='(FullSisters '.$this->fullsisters.')'.PHP_EOL;
        $tmp .='(PaternalBrothers '.$this->paternalbrothers.')'.PHP_EOL;
        $tmp .='(PaternalSisters '.$this->paternalsisters.')'.PHP_EOL;
        $tmp .='(MaternalBrothers '.$this->maternalbrothers.')'.PHP_EOL;
        $tmp .='(MaternalSisters '.$this->maternalsisters.')'.PHP_EOL;
        $tmp .='(FullNephews '.$this->fullnephews.')'.PHP_EOL;
        $tmp .='(PaternalNephews '.$this->paternalnephews.')'.PHP_EOL;
        $tmp .='(FullUncles '.$this->fulluncles.')'.PHP_EOL;
        $tmp .='(PaternalUncles '.$this->paternaluncles.')'.PHP_EOL;
        $tmp .='(FullCousins '.$this->fullcousins.')'.PHP_EOL;
        $tmp .='(PaternalCousins '.$this->paternalcousins.')'.PHP_EOL;
        $tmp .='))';

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
