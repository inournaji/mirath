<?php
/**
 * Created by PhpStorm.
 * User: Nour
 * Date: 11/04/2018
 * Time: 05:39 م
 */
use common\models\Inheritance;
use kartik\helpers\Html;
use dosamigos\chartjs\ChartJs;

/* @var $this yii\web\View */
/* @var $result  */
?>
<div class="inheritance-result jumbotron" >
    <h1><?= Yii::t('app', 'Inheritance dispensation') ?></h1>
    <div class="inheritance-col chart-wrapper col-lg-8 col-lg-offset-2 table-responsive">
    <?= Inheritance::showResultChart($result)?>
    </div>
    <div class="inheritance-col table-wrapper col-lg-8 col-lg-offset-2">
        <?=Inheritance::showResultTable($result) ?>
    </div>
</div>

