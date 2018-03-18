<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model common\models\Inheritance */

$this->title = $model->id;
$this->params['breadcrumbs'][] = ['label' => 'Inheritances', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="inheritance-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Update', ['update', 'id' => $model->id], ['class' => 'btn btn-primary']) ?>
        <?= Html::a('Delete', ['delete', 'id' => $model->id], [
            'class' => 'btn btn-danger',
            'data' => [
                'confirm' => 'Are you sure you want to delete this item?',
                'method' => 'post',
            ],
        ]) ?>
    </p>

    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'id',
            'gender',
            'husband',
            'wives',
            'sons',
            'daughters',
            'grandsons',
            'granddaughters',
            'father',
            'mother',
            'grandfather',
            'paternal_grandmother',
            'maternal_grandmother',
            'full_brothers',
            'full_sisters',
            'paternal_brothers',
            'paternal_sisters',
            'maternal_brothers',
            'maternal_sisters',
            'full_nephews',
            'paternal_nephews',
            'fullpaternal_uncles',
            'paternal_paternal_uncles',
            'full_cousins',
            'paternal_cousins',
        ],
    ]) ?>

</div>
