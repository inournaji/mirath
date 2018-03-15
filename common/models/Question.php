<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "question".
 *
 * @property int $id
 * @property string $question
 * @property string $question_en
 * @property string $desc
 * @property string $desc_en
 * @property int $pp
 * @property int $type_id
 *
 * @property Type $type
 * @property Question $parent
 */
class Question extends \yii\db\ActiveRecord
{
    Const NULLANSWER = -1;
    Const NOANSWER = 0;
    Const YESANSWER = 1;
    Const BOTHANSWER = 2;
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'question';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['type_id', 'parent','pp'], 'integer'],
            [['question', 'question_en', 'desc', 'desc_en'], 'string', 'max' => 255],
            [['type_id'], 'exist', 'skipOnError' => true, 'targetClass' => Type::className(), 'targetAttribute' => ['type_id' => 'id']],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => Yii::t('app', 'ID'),
            'question' => Yii::t('app', 'Question'),
            'question_en' => Yii::t('app', 'Question En'),
            'desc' => Yii::t('app', 'Desc'),
            'desc_en' => Yii::t('app', 'Desc En'),
            'type_id' => Yii::t('app', 'Type'),
            'parent' => Yii::t('app', 'Parent'),
            'pp' => Yii::t('app', 'Positive Parent ?'),
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getType()
    {
        return $this->hasOne(Type::className(), ['id' => 'type_id']);
    }
    /**
     * @return \yii\db\ActiveQuery
     */
    public function getParent()
    {
        return $this->hasOne(Question::className(), ['id' => 'parent']);
    }
    public function getParentStatus(){
        switch ($this->pp){

            case self::NULLANSWER:
                return 'N/A';
            case self::NOANSWER:
                return 'No';
            case self::YESANSWER:
                return 'Yes';
            case self::BOTHANSWER:
                return 'Both';
            default:
                return '';
        }
    }
}
