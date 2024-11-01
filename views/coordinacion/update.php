<?php

use yii\helpers\Html;

/** @var yii\web\View $this */
/** @var app\models\Coordinacion $model */

$this->title = 'Update Coordinacion: ' . $model->ID;
$this->params['breadcrumbs'][] = ['label' => 'Coordinacions', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->ID, 'url' => ['view', 'ID' => $model->ID]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="coordinacion-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
