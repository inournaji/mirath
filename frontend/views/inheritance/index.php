<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model common\models\Inheritance */
/* @var $form yii\widgets\ActiveForm */


?>

<div class="inheritance-form jumbotron">
    <?= Html::beginForm(['/inheritance/'], 'POST'); ?>
    <?php
    $test = 0;
    foreach ($inheritance->questions as $row){
        ?>
        <div class="question-wrapper row">
        <?php
       switch ($row->type_id){
           case 1:
               ?>
               <div class="question-text col-md-3">
                   <?=$row->question ?>
               </div>
               <div class="answer col-md-8">
                   <?= Html::radioList($row->symbol,null,[
                        \common\models\Question::YESANSWER => Yii::t('app','Yes'),
                        \common\models\Question::NOANSWER => Yii::t('app','No')
                   ]);?>
               </div>
                   <?php
                   break;
                   ?>

               <?php
           case 2: ?>
               <div class="question-text col-md-3">
                   <?=$row->question ?>
               </div>
            <div class="answer choice col-md-8">
                <?php
                $first = true;
                foreach ($row->choices as $choice){

                    echo Html::radio($row->symbol,$first,['label'=>$choice->text]);
                    $first = false;
                }
                ?>

            </div>
               <?php
               break;
           case 3:  ?>
               <div class="question-text col-md-3">
                   <?=$row->question ?>
               </div>
               <div class="answer col-md-8">
                   <?= Html::textInput($row->symbol,0);?>
               </div>
               <?php
               break;

       }
       ?>
        </div>
            <?php
    }

        ?>
    <div class="form-group">
        <?= Html::submitButton(Yii::t('app','Continue'), ['class' => 'btn btn-primary']) ?>
    </div>

    <?= Html::endForm() ?>


</>
