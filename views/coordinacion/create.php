<?php

use yii\helpers\Html;

/** @var yii\web\View $this */
/** @var app\models\Coordinacion $model */

$this->title = 'Create Coordinacion';
$this->params['breadcrumbs'][] = ['label' => 'Coordinacions', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="coordinacion-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
