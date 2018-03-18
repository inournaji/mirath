<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model common\models\Inheritance */

$this->title = 'Create Inheritance';
$this->params['breadcrumbs'][] = ['label' => 'Inheritances', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="inheritance-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
