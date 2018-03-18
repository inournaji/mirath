<?php
/**
 * Created by PhpStorm.
 * User: Nour
 * Date: 17/03/2018
 * Time: 06:18 م
 */

namespace common\models;

use Yii;
use yii\base\Model;
use yii\db\Exception;
class Inheritanceanswer extends Model
{
    public $question;
    public $answer;
    public function rules()
    {
        return [
            [['question'],'string'],
            [['answer'],'number'],
        ];
    }

}