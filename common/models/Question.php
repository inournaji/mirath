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
 * @property string $symbol
 * @property int $group_id
 *
 * @property Choice[] $choices
 * @property Questiongroup $group
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
            [['type_id','group_id'], 'required'],
            [['type_id', 'parent','pp','group_id'], 'integer'],
            [['symbol'], 'required'],
            [['question', 'question_en', 'desc', 'desc_en','symbol'], 'string', 'max' => 255],
            [['group_id'], 'exist', 'skipOnError' => false, 'targetClass' => Questiongroup::className(), 'targetAttribute' => ['group_id' => 'id']],
            [['type_id'], 'exist', 'skipOnError' => false, 'targetClass' => Type::className(), 'targetAttribute' => ['type_id' => 'id']],
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
            'symbol' => Yii::t('app', 'Symbol'),
            'group_id' => Yii::t('app', 'Group ID'),
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
    /**
     * @return \yii\db\ActiveQuery
     */
    public function getChoices()
    {
        return $this->hasMany(Choice::className(), ['question_id' => 'id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getGroup()
    {
        return $this->hasOne(Questiongroup::className(), ['id' => 'group_id']);
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
