<?php

namespace frontend\controllers;

use common\models\Question;
use Yii;
use common\models\Inheritance;
use common\models\InheritanceSearch;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use common\component\ClipsCalculator\ClipsHelper;

/**
 * InheritanceController implements the CRUD actions for Inheritance model.
 */
class InheritanceController extends Controller
{
    public $bodyClass='inheritance';

    /**
     * {@inheritdoc}
     */
    public function behaviors()
    {
        return [
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    'delete' => ['POST'],
                ],
            ],
        ];
    }

    /**
     * Lists all Inheritance models.
     * @return mixed
     */
    public function actionIndex()
    {
        if(Yii::$app->request->isPost){
            $request = Yii::$app->request;
            $model = new Inheritance();

            $post = array_change_key_case($request->post(),CASE_LOWER);
            $model->load($post,'');
            if( $model->load($post,'') &&  $model->validate()){
                $clips_object = $model->toClips();
               // return ClipsHelper::calculate($clips_object);
               $result =  ClipsHelper::calculate($clips_object);
               $result = Inheritance::t($result);

               if(count($result) !=0){
                   return  $this->render('result',[
                       'result' => $result,
                       'model' => $model,
                   ]);
               }else{
                   return  $this->render('noresult',[]);
               }


            }
            else
            {
                Yii::$app->getSession()->setFlash('error',$model->getErrors());
                return  $this->render('index',[
                    'inheritance' => $model,
                ]);
            }

        }else{
                $model = new Inheritance();
                $model->questions = Question::Initialize();
            return $this->render('index', [
            'inheritance' => $model,
        ]);
        }
    }

    /**
     * Displays a single Inheritance model.
     * @param integer $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionView($id)
    {
        return $this->render('view', [
            'model' => $this->findModel($id),
        ]);
    }

    /**
     * Creates a new Inheritance model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        $model = new Inheritance();

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['view', 'id' => $model->id]);
        }

        return $this->render('create', [
            'model' => $model,
        ]);
    }

    /**
     * Updates an existing Inheritance model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionUpdate($id)
    {
        $model = $this->findModel($id);

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['view', 'id' => $model->id]);
        }

        return $this->render('update', [
            'model' => $model,
        ]);
    }

    /**
     * Deletes an existing Inheritance model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param integer $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionDelete($id)
    {
        $this->findModel($id)->delete();

        return $this->redirect(['index']);
    }

    /**
     * Finds the Inheritance model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return Inheritance the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = Inheritance::findOne($id)) !== null) {
            return $model;
        }
        throw new NotFoundHttpException('The requested page does not exist.');
    }
}
