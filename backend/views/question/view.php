<?php

use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model common\models\Question */
?>
<div class="question-view">
 
    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'id',
            'question',
            'question_en',
            'desc',
            'desc_en',
            [
                'attribute' => 'type_id',
                'value' => function($model){
                    return $model->type->name;

                }
            ],
            'parent',
        ],
    ]) ?>

</div>
