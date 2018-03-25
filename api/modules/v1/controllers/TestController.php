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
use common\models\Question;
use yii\data\ActiveDataProvider;


class TestController extends ActiveController
{
    public $modelClass = 'common\models\Choice';

    public function actionTry()
    {
//        $test =   Question::find()->where(['id' => 22])->with('choices')->with('type')->one();
//        return $test;

        $activeData = new ActiveDataProvider([
            'query' => Question::find()->with('choices')->with('type'),
            'pagination'=>false,

        ]);
        return $activeData;


    }
}