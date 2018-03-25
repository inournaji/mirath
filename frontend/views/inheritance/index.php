<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use kartik\switchinput\SwitchInput;
use kartik\touchspin\TouchSpin;

/* @var $this yii\web\View */
/* @var $model common\models\Inheritance */
/* @var $form yii\widgets\ActiveForm */


?>

<div class="inheritance-form jumbotron">
    <?= Html::beginForm(['/inheritance/'], 'POST'); ?>
    <?php
    $test = 0;
    echo  \common\models\Question::render($inheritance->questions);

        ?>
    <div class="form-group">
        <?= Html::submitButton(Yii::t('app','Calculate'), ['class' => 'btn btn-primary']) ?>
    </div>

    <?= Html::endForm() ?>


</>
