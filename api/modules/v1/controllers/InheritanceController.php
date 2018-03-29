<?php
/*
 * Created by PhpStorm.
 * User: Ahmad
 * Date: 2016-06-12
 * Time: 4:34 PM
 */

namespace api\modules\v1\controllers;

use yii;
use common\models\Inheritance;
use common\models\Question;
use yii\filters\auth\CompositeAuth;
use yii\filters\auth\HttpBearerAuth;
use yii\helpers\ArrayHelper;
use yii\rest\ActiveController;
use yii\filters\auth\QueryParamAuth;
use yii\data\ActiveDataProvider;
use yii\rest\Controller;
use common\component\ClipsCalculator\ClipsHelper;

/**
 * Class InheritanceController
 * @package api\modules\v1\controllers
 * @link api/web/v1/Inheritance
 */
class InheritanceController extends Controller
{
    public function actionSubmit(){
        $request = Yii::$app->request;
        $model = new Inheritance();
        $post = array_change_key_case($request->post(),CASE_LOWER);
        if( $model->load($post,'') &&  $model->validate()){
           $clips_object = $model->toClips();
           return ClipsHelper::calculate($clips_object);

        }
        else
            return "No";

    }




}