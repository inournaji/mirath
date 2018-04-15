<?php

namespace common\models;

use Yii;
use yii\helpers\Html;
use kartik\switchinput\SwitchInput;
use kartik\touchspin\TouchSpin;

/**
 * This is the model class for table "question".
 *
 * @property int $id
 * @property string $question
 * @property string $question_en
 * @property string $desc
 * @property string $desc_en
 * @property int $pp
 * @property int $default_answer
 * @property int $parent
 * @property int $type_id
 * @property string $symbol
 * @property int $group_id
 *
 * @property Choice[] $choices
 * @property Questiongroup $group
 * @property Type $type
 * @property Question[] $children
 */
class Question extends \yii\db\ActiveRecord
{
    Const NULLANSWER = -1;
    Const NOANSWER = 0;
    Const YESANSWER = 1;
    Const BOTHANSWER = 2;
    public $visible = false;
    public $children =array();
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
            [['type_id','group_id','default_answer'], 'required'],
            [['type_id', 'parent','pp','group_id','default_answer'], 'integer'],
            [['symbol'], 'required'],
            [['visible'], 'safe'],
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
            'default_answer' => Yii::t('app', 'Default Answer'),
        ];
    }


    /**
     * @return \yii\db\ActiveQuery
     */
    public function getParents()
    {
        return $this->hasOne(Question::className(), ['id' => 'parent']);
    }

    public function fields()
    {
        $test =  parent::fields();
        $test[] = 'visible';
        $test[] = 'type';
        $test[] = 'choices';
        return $test;
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
//    public function getParent()
//    {
//        return $this->hasOne(Question::className(), ['id' => 'parent']);
//    }
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
    public static function Initialize(){
        $tmp =  Question::find()->all();
        return $tmp;
    }

    public function afterFind()
    {
        if($this->parent == null){
            $this->visible = true;
        }
        if(Yii::$app->language == 'en-US'){
            if(!empty($this->question_en))
                $this->question = $this->question_en;
            if(!empty($this->desc_en))
                $this->desc = $this->desc_en;

        }
        parent::afterFind();

    }

    public static function render(array $models){
       $html = '<div id="formfields">';
        foreach ($models as $row){
            $class = $row->parent != null?'hidden':'';
            $html .='<div id="'.$row->symbol.'"  class="question-wrapper row '.$class.'">';
                switch ($row->type_id){
                    case 1:
                        $html .= '<div class="question-text col-md-4">';
                        $html .= $row->question.'</div>';
                        $html .= '<div class="info col-md-1">';
                        $html .= $row->desc?  '<div class="glyphicon glyphicon-info-sign"><span class=" tooltiptext">'.$row->desc.'</span></div>' :'';
                        $html .= '</div>';
                        $html .= '<div class="answer col-md-7">';
                        $html .= SwitchInput::widget([
                            'name' => $row->symbol,
                            'value' => $row->default_answer,
                            'pluginOptions' => [
                                'labelText'=>'<i class="glyphicon glyphicon-question-sign"></i>',
                                'size' => 'large',
                                'onColor' => 'success',
                                'offColor' => 'danger',
                                'onText' => Yii::t('app','Yes'),
                                'offText' => Yii::t('app','No'),
                                ]
                            ]);
                        $html .= '</div>';
                        break;
                    case 2:
                        $html .='<div class="question-text col-md-4">';
                        $html .=$row->question;
                        $html .='</div>';
                        $html .= '<div class="info col-md-1">';
                        $html .= $row->desc?  '<div class="glyphicon glyphicon-info-sign"><span class=" tooltiptext">'.$row->desc.'</span></div>' :'';
                        $html .= '</div>';
                        $html .='<div class="answer choice col-md-7">';

                            foreach ($row->choices as $choice){
                                $checked = false;
                                if ($row->default_answer == $choice->value){
                                    $checked = true;

                                }
                                $html .= Html::radio($row->symbol,$checked,['label'=>$choice->text,'value'=>$choice->value]);
                                $checked = false;
                            }
                        $html .='</div>';
                        break;
                    case 3:
                        $html .='<div class="question-text col-md-4">';
                        $html .=$row->question;
                        $html .='</div>';
                        $html .= '<div class="info col-md-1">';
                        $html .= $row->desc?  '<div class="glyphicon glyphicon-info-sign"><span class=" tooltiptext">'.$row->desc.'</span></div>' :'';
                        $html .= '</div>';
                        $html .='<div class="answer col-md-7">';
                        $html .= Html::textInput($row->symbol,$row->default_answer);
                        $html .='</div>';
                        break;
                }
            $html .='</div>';
        }
        $html.="</div>";
        return $html;
    }
}
