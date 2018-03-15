<?php
/**
 * Created by PhpStorm.
 * User: Nour
 * Date: 10/03/2018
 * Time: 10:45 م
 */
namespace common\component;


class Languageswitcher extends \yii\base\Behavior{
    public function events()
    {
        return [
            \yii\web\Application::EVENT_BEFORE_REQUEST => 'changeLanguage'
        ];
    }

    public function changeLanguage(){
        if(isset($_COOKIE['lang'])){
            \Yii::$app->language = $_COOKIE['lang'];
        }
       // \Yii::$app->language = 'ar-SY';
        $test = 'test';
    }

}