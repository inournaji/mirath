<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model common\models\Inheritance */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="inheritance-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'gender')->textInput() ?>

    <?= $form->field($model, 'husband')->textInput() ?>

    <?= $form->field($model, 'wives')->textInput() ?>

    <?= $form->field($model, 'sons')->textInput() ?>

    <?= $form->field($model, 'daughters')->textInput() ?>

    <?= $form->field($model, 'grandsons')->textInput() ?>

    <?= $form->field($model, 'granddaughters')->textInput() ?>

    <?= $form->field($model, 'father')->textInput() ?>

    <?= $form->field($model, 'mother')->textInput() ?>

    <?= $form->field($model, 'grandfather')->textInput() ?>

    <?= $form->field($model, 'paternal_grandmother')->textInput() ?>

    <?= $form->field($model, 'maternal_grandmother')->textInput() ?>

    <?= $form->field($model, 'full_brothers')->textInput() ?>

    <?= $form->field($model, 'full_sisters')->textInput() ?>

    <?= $form->field($model, 'paternal_brothers')->textInput() ?>

    <?= $form->field($model, 'paternal_sisters')->textInput() ?>

    <?= $form->field($model, 'maternal_brothers')->textInput() ?>

    <?= $form->field($model, 'maternal_sisters')->textInput() ?>

    <?= $form->field($model, 'full_nephews')->textInput() ?>

    <?= $form->field($model, 'paternal_nephews')->textInput() ?>

    <?= $form->field($model, 'fullpaternal_uncles')->textInput() ?>

    <?= $form->field($model, 'paternal_paternal_uncles')->textInput() ?>

    <?= $form->field($model, 'full_cousins')->textInput() ?>

    <?= $form->field($model, 'paternal_cousins')->textInput() ?>

    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
