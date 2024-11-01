<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "archivo".
 *
 * @property int $ID
 * @property string|null $Nombre
 * @property string|null $Tipo
 * @property string|null $Tamano
 * @property string|null $Ruta
 * @property string|null $Descripcion
 * @property string|null $Nombre_temporal
 * @property int|null $Fecha_creacion
 * @property int|null $Fecha_actualizacion
 * @property int|null $Fk_user
 *
 * @property Curso[] $cursos
 * @property User $fkUser
 */
class Archivo extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'archivo';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['Fecha_creacion', 'Fecha_actualizacion', 'Fk_user'], 'integer'],
            [['Nombre', 'Tipo', 'Tamano', 'Ruta', 'Descripcion', 'Nombre_temporal'], 'string', 'max' => 255],
            [['Fk_user'], 'exist', 'skipOnError' => true, 'targetClass' => User::class, 'targetAttribute' => ['Fk_user' => 'id']],
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
            'Tipo' => 'Tipo',
            'Tamano' => 'Tamano',
            'Ruta' => 'Ruta',
            'Descripcion' => 'Descripcion',
            'Nombre_temporal' => 'Nombre Temporal',
            'Fecha_creacion' => 'Fecha Creacion',
            'Fecha_actualizacion' => 'Fecha Actualizacion',
            'Fk_user' => 'Fk User',
        ];
    }

    /**
     * Gets query for [[Cursos]].
     *
     * @return \yii\db\ActiveQuery|\app\models\query\CursoQuery
     */
    public function getCursos()
    {
        return $this->hasMany(Curso::class, ['Fk_Foto_Portada' => 'ID']);
    }

    /**
     * Gets query for [[FkUser]].
     *
     * @return \yii\db\ActiveQuery|\app\models\query\UserQuery
     */
    public function getFkUser()
    {
        return $this->hasOne(User::class, ['id' => 'Fk_user']);
    }

    /**
     * {@inheritdoc}
     * @return \app\models\query\ArchivoQuery the active query used by this AR class.
     */
    public static function find()
    {
        return new \app\models\query\ArchivoQuery(get_called_class());
    }
}
