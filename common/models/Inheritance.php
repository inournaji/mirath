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
 */
class Inheritance extends \yii\db\ActiveRecord
{
    Const NOTEXIST =0;
    Const EXIST = 1;
    public $questions = array();
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
        ];
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
