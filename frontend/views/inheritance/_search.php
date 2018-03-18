<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model common\models\InheritanceSearch */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="inheritance-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>

    <?= $form->field($model, 'id') ?>

    <?= $form->field($model, 'gender') ?>

    <?= $form->field($model, 'husband') ?>

    <?= $form->field($model, 'wives') ?>

    <?= $form->field($model, 'sons') ?>

    <?php // echo $form->field($model, 'daughters') ?>

    <?php // echo $form->field($model, 'grandsons') ?>

    <?php // echo $form->field($model, 'granddaughters') ?>

    <?php // echo $form->field($model, 'father') ?>

    <?php // echo $form->field($model, 'mother') ?>

    <?php // echo $form->field($model, 'grandfather') ?>

    <?php // echo $form->field($model, 'paternal_grandmother') ?>

    <?php // echo $form->field($model, 'maternal_grandmother') ?>

    <?php // echo $form->field($model, 'full_brothers') ?>

    <?php // echo $form->field($model, 'full_sisters') ?>

    <?php // echo $form->field($model, 'paternal_brothers') ?>

    <?php // echo $form->field($model, 'paternal_sisters') ?>

    <?php // echo $form->field($model, 'maternal_brothers') ?>

    <?php // echo $form->field($model, 'maternal_sisters') ?>

    <?php // echo $form->field($model, 'full_nephews') ?>

    <?php // echo $form->field($model, 'paternal_nephews') ?>

    <?php // echo $form->field($model, 'fullpaternal_uncles') ?>

    <?php // echo $form->field($model, 'paternal_paternal_uncles') ?>

    <?php // echo $form->field($model, 'full_cousins') ?>

    <?php // echo $form->field($model, 'paternal_cousins') ?>

    <div class="form-group">
        <?= Html::submitButton('Search', ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton('Reset', ['class' => 'btn btn-default']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
