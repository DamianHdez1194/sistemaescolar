<?php

namespace app\controllers;

use app\models\Coordinacion;
use app\models\search\CoordinacionSearch;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use yii;
use app\components\Util;
/**
 * CoordinacionController implements the CRUD actions for Coordinacion model.
 */
class CoordinacionController extends Controller
{
    public $freeAccessActions = ['']; //Acciones Permitidas
    /**
     * @inheritDoc
     */
    public function behaviors()
    {
        return [
            'ghost-access' => [
                'class' => 'webvimark\modules\UserManagement\components\GhostAccessControl',
            ],
        ];
    }

    /**
     * Lists all Coordinacion models.
     *
     * @return string
     */
    public function actionIndex()
    {
        $searchModel = new CoordinacionSearch();
        $dataProvider = $searchModel->search($this->request->queryParams);

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Displays a single Coordinacion model.
     * @param int $ID ID
     * @return string
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionView($ID)
    {
        $ID = Util::encrypt_decryptID($ID,2);
        return $this->renderAjax('view', [
            'model' => $this->findModel(Util::encrypt_decryptID($ID,1)),
        ]);
    }

    /**
     * Creates a new Coordinacion model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return string|\yii\web\Response
     */
    public function actionCreate()
    {
        $model = new Coordinacion();

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['index']);
        }

        elseif (Yii::$app->request->isAjax) {
            return $this->renderAjax('create', [
                        'model' => $model
            ]);
        } else {
            return $this->render('create', [
                        'model' => $model
            ]);
        }
    }

    /**
     * Updates an existing Coordinacion model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param int $ID ID
     * @return string|\yii\web\Response
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionUpdate($ID)
    {
        $ID = Util::encrypt_decryptID($ID,2);
        $model = $this->findModel(Util::encrypt_decryptID($ID,1));

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['index']);
        }
        elseif (Yii::$app->request->isAjax) {
            return $this->renderAjax('update', [
                        'model' => $model
            ]);
        } else {
            return $this->render('update', [
                        'model' => $model
            ]);
        }
    }

    /**
     * Deletes an existing Coordinacion model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param int $ID ID
     * @return \yii\web\Response
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionDelete($ID)
    {
        $ID = Util::encrypt_decryptID($ID,2);
        $this->findModel(Util::encrypt_decryptID($ID,1))->delete();

        return $this->redirect(['index']);
    }

    /**
     * Finds the Coordinacion model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param int $ID ID
     * @return Coordinacion the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($ID)
    {
        $ID = Util::encrypt_decryptID($ID,2);
        if (($model = Coordinacion::findOne(['ID' => $ID])) !== null) {
            return $model;
        }


        throw new NotFoundHttpException('The requested page does not exist.');
    }
}
