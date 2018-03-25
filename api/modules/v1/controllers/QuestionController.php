<?php
/*
 * Created by PhpStorm.
 * User: Ahmad
 * Date: 2016-06-12
 * Time: 4:34 PM
 */

namespace api\modules\v1\controllers;

use common\models\Question;
use yii\filters\auth\CompositeAuth;
use yii\filters\auth\HttpBearerAuth;
use yii\helpers\ArrayHelper;
use yii\rest\ActiveController;
use yii\filters\auth\QueryParamAuth;
use yii\data\ActiveDataProvider;
use yii\rest\Controller;


/**
 * Class QuestionController
 * @package api\modules\v1\controllers
 * @link api/web/v1/question
 */
class QuestionController extends Controller
{
    public function behaviors()
    {
        return ArrayHelper::merge(
            parent::behaviors(), [
                'authenticator' => [
                    'class' => CompositeAuth::className(),
                    'except' => ['index'],
                    'authMethods' => [
                        HttpBearerAuth::className(),
                    ],
                ],
            ]
        );
    }
    public function actionIndex(){
       return Question::find()->joinWith('choices')->all();
    }




}