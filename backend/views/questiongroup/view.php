<?php

use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model common\models\Questiongroup */
?>
<div class="questiongroup-view">
 
    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'id',
            'name',
        ],
    ]) ?>

</div>
