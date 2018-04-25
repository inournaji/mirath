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
    <div class="noresult-col panel col-lg-6 col-lg-offset-3 col-sm-8 col-sm-offset-2 col-xs-10 col-xs-offset-1 ">
        <img class="noresult-icon" src="images/mark!.svg">
    <p> <?= Yii::t('app','Sorry, we couldn\'t find a solution for your case, we are working on new cases please try again later') ?> </p>
        <?= Html::beginForm(['/inheritance/'], 'POST',['id'=>'inheritance']); ?>
        <div class="form-group submit">
            <?= Html::submitButton(Yii::t('app','Another Case'), ['class' => 'btn btn-primary']) ?>
        </div>
        <?= Html::endForm() ?>

    </div>
</div>

