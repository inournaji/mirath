<?php
use yii\helpers\Html;
use yii\widgets\ActiveForm;
use common\models\Type;
use common\models\Question;
use yii\helpers\ArrayHelper;
use kartik\select2\Select2;
use kartik\touchspin\TouchSpin;
/* @var $this yii\web\View */
/* @var $model common\models\Question */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="question-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'question')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'question_en')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'desc')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'desc_en')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'symbol')->textInput(['maxlength' => true]) ?>
    <?= $form->field($model, 'default_answer')->textInput(['maxlength' => true]) ?>


    <?= $form->field($model, 'type_id')->widget(Select2::className(),[
        'data' => ArrayHelper::map(Type::find()->all(),'id','name'),
        'options' => ['placeholder' => 'Select a Type ...'],
        'pluginOptions' => [
            'allowClear' => true,
        ],
    ]) ?>
    <?= $form->field($model, 'parent')->widget(Select2::className(),[
        'data' => ArrayHelper::map(Question::find()->all(),'id','question'),
        'options' => ['placeholder' => 'Select parent question ...'],
        'pluginOptions' => [
            'allowClear' => true,
        ],
    ]) ?>

    <?= $form->field($model, 'weight')->widget(TouchSpin::className(),[
        'pluginOptions' => [  'min' => -50,'max=>'=>50,'step' => 1,'initval' => 0]
    ]) ?>



	<?php if (!Yii::$app->request->isAjax){ ?>
	  	<div class="form-group">
	        <?= Html::submitButton($model->isNewRecord ? Yii::t('app', 'Create') : Yii::t('app', 'Update'), ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
	    </div>
	<?php } ?>

    <?php ActiveForm::end(); ?>
    
</div>
