<?php

use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model common\models\Type */
?>
<div class="type-view">
 
    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'id',
            'name',
        ],
    ]) ?>

</div>
