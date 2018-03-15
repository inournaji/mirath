<?php

use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model common\models\Choice */
?>
<div class="choice-view">
 
    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'id',
            'text',
            'text_en',
            'value',
            [
                'attribute' => 'question_id',
                'value' => function($model){
                    return $model->question->question;

                }
            ],
        ],
    ]) ?>

</div>
