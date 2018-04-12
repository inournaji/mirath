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
    <?php
    $html = Inheritance::showResult($result);
    echo $html;

    ?>
</div>

