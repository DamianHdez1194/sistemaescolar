<?php

use yii\helpers\Html;

/** @var yii\web\View $this */
/** @var app\models\Coordinacion $model */

$this->title = 'Nueva Coordinacion';
$this->params['breadcrumbs'][] = ['label' => 'Coordinacions', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>

<div class="container-fluid">
	
	<div class="card mb-4 text-left">
		<div class="card-header">
			<i class="fas fa-table me-1"></i>
			<?= $this->title ?>
		</div>
		<div class="card-body">


<div class="coordinacion-create">


    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>


</div>
	</div>
	</div>
