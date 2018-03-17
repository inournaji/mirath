<?php
use yii\helpers\Url;

return [
    [
        'class' => 'kartik\grid\CheckboxColumn',
        'width' => '20px',
    ],
    [
        'class' => 'kartik\grid\SerialColumn',
        'width' => '30px',
    ],
        // [
        // 'class'=>'\kartik\grid\DataColumn',
        // 'attribute'=>'id',
    // ],
    [
        'class'=>'\kartik\grid\DataColumn',
        'attribute'=>'question',
    ],
    [
        'class'=>'\kartik\grid\DataColumn',
        'attribute'=>'question_en',
    ],
    [
        'class'=>'\kartik\grid\DataColumn',
        'attribute'=>'parent',
        'value' => function($model) {
         if($model->parent != null){
             return $parent =$model->getParent()->one()->question;
         }
        },
    ],
    [
        'class'=>'\kartik\grid\DataColumn',
        'attribute'=>'desc',
    ],
    [
        'class'=>'\kartik\grid\DataColumn',
        'attribute'=>'desc_en',
    ],
    [
        'class'=>'\kartik\grid\DataColumn',
        'attribute'=>'type_id',
        'value'=>function ($model, $key, $index, $widget) {
            return $model->group->name;
        },

    ],

    [
        'class'=>'\kartik\grid\DataColumn',
        'attribute'=>'symbol',
    ],
    [
        'class'=>'\kartik\grid\DataColumn',
        'attribute'=>'type_id',
        'value'=>function ($model, $key, $index, $widget) {
            return $model->type->name;
        },

    ],
    [
        'class'=>'\kartik\grid\DataColumn',
        'attribute'=>'pp',
        'value'=>function ($model, $key, $index, $widget) {
            return $model->getParentStatus();
        },

    ],
    // [
        // 'class'=>'\kartik\grid\DataColumn',
        // 'attribute'=>'parent',
    // ],
    [
        'class' => 'kartik\grid\ActionColumn',
        'dropdown' => false,
        'vAlign'=>'middle',
        'urlCreator' => function($action, $model, $key, $index) { 
                return Url::to([$action,'id'=>$key]);
        },
        'viewOptions'=>['role'=>'modal-remote','title'=>'View','data-toggle'=>'tooltip'],
        'updateOptions'=>['role'=>'modal-remote','title'=>'Update', 'data-toggle'=>'tooltip'],
        'deleteOptions'=>['role'=>'modal-remote','title'=>'Delete', 
                          'data-confirm'=>false, 'data-method'=>false,// for overide yii data api
                          'data-request-method'=>'post',
                          'data-toggle'=>'tooltip',
                          'data-confirm-title'=>'Are you sure?',
                          'data-confirm-message'=>'Are you sure want to delete this item'], 
    ],

];   