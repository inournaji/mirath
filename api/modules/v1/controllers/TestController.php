<?php
/**
 * Created by PhpStorm.
 * User: Fadi
 * Date: 7/28/2016
 * Time: 3:41 PM
 */

namespace api\modules\v1\controllers;

use Yii;
use yii\filters\auth\CompositeAuth;
use yii\filters\auth\HttpBearerAuth;
use yii\helpers\ArrayHelper;
use yii\rest\ActiveController;
use common\models\Setting;

class TestController extends ActiveController
{
    public $modelClass = 'common\models\Choice';

    public function actionTry()
    {
        return "Done";

    }
}