<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "choice".
 *
 * @property int $id
 * @property string $text
 * @property string $text_en
 * @property int $value
 * @property int $question_id
 *
 * @property Question $question
 */
class Choice extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'choice';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['value', 'question_id'], 'integer'],
            [['text', 'text_en'], 'string', 'max' => 255],
            [['question_id'], 'exist', 'skipOnError' => true, 'targetClass' => Question::className(), 'targetAttribute' => ['question_id' => 'id']],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => Yii::t('app', 'ID'),
            'text' => Yii::t('app', 'Text'),
            'text_en' => Yii::t('app', 'Text En'),
            'value' => Yii::t('app', 'Value'),
            'question_id' => Yii::t('app', 'Question ID'),
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getQuestion()
    {
        return $this->hasOne(Question::className(), ['id' => 'question_id']);
    }

    public function afterFind()
    {
        if(Yii::$app->language == 'en-US'){
            if(!empty($this->text_en))
                $this->text = $this->text_en;
        }

            parent::afterFind();
    }
}
