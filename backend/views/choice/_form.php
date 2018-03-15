<?php
use yii\helpers\Html;
use yii\widgets\ActiveForm;
use common\models\Question;
use yii\helpers\ArrayHelper;
use kartik\select2\Select2;

/* @var $this yii\web\View */
/* @var $model common\models\Choice */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="choice-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'text')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'text_en')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'value')->textInput() ?>

    <?= $form->field($model, 'question_id')->widget(Select2::className(),[
        'data' => ArrayHelper::map(Question::find()->all(),'id','question'),
        'options' => ['placeholder' => 'Select parent question ...'],
        'pluginOptions' => [
            'allowClear' => true,
        ],
    ]) ?>

  
	<?php if (!Yii::$app->request->isAjax){ ?>
	  	<div class="form-group">
	        <?= Html::submitButton($model->isNewRecord ? Yii::t('app', 'Create') : Yii::t('app', 'Update'), ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
	    </div>
	<?php } ?>

    <?php ActiveForm::end(); ?>
    
</div>
