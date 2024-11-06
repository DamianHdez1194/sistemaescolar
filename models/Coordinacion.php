<?php

namespace app\models;
use yii\behaviors\BlameableBehavior;
use yii\db\ActiveRecord;
use Yii;

/**
 * This is the model class for table "coordinacion".
 *
 * @property int $ID
 * @property string|null $Nombre
 * @property int|null $Fecha_creacion
 * @property int|null $Fecha_actualizacion
 * @property int|null $Fk_user
 *
 * @property User $fkUser
 * @property Profesor[] $profesors
 */
class Coordinacion extends \yii\db\ActiveRecord
{
    /**
     * Funcion para grabar el usuario y las fechas actuales
     */
    public function behaviors(){
        return[
            [
                'class' => BlameableBehavior::className(),
                'createdByAttribute' => 'Fk_user',
                'updatedByAttribute' => 'Fk_user',
            ],
            'timestamp' => [
            'class' => 'yii\behaviors\TimestampBehavior',
            'attributes' => [
                ActiveRecord::EVENT_BEFORE_INSERT => ['Fecha_creacion', 'Fecha_actualizacion'],
                ActiveRecord::EVENT_BEFORE_UPDATE => ['Fecha_actualizacion'],
            ],
        ],
    ];
    }
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'coordinacion';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['Fecha_creacion', 'Fecha_actualizacion', 'Fk_user'], 'integer'],
            [['Nombre'], 'string', 'max' => 255],
            //[['Fk_user'], 'exist', 'skipOnError' => true, 'targetClass' => User::class, 'targetAttribute' => ['Fk_user' => 'id']],
            [['Fk_user'], 'exist', 'skipOnError' => true, 'targetClass' => \webvimark\modules\UserManagement\models\User::className(), 'targetAttribute' => ['Fk_user' => 'id']],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'ID' => 'ID',
            'Nombre' => 'Nombre',
            'Fecha_creacion' => 'Fecha Creación',
            'Fecha_actualizacion' => 'Fecha Actualización',
            'Fk_user' => 'Id Usuario',
        ];
    }

    /**
     * Gets query for [[FkUser]].
     *
     * @return \yii\db\ActiveQuery|\app\models\query\UserQuery
     */
    public function getFkUser()
    {
        return $this->hasOne(\webvimark\modules\UserManagement\models\User::className(), ['id' => 'Fk_user']);
    }

    /**
     * Gets query for [[Profesors]].
     *
     * @return \yii\db\ActiveQuery|\app\models\query\ProfesorQuery
     */
    public function getProfesors()
    {
        return $this->hasMany(Profesor::class, ['Fk_coordinacion' => 'ID']);
    }

    /**
     * {@inheritdoc}
     * @return \app\models\query\CoordinacionQuery the active query used by this AR class.
     */
    public static function find()
    {
        return new \app\models\query\CoordinacionQuery(get_called_class());
    }
}
