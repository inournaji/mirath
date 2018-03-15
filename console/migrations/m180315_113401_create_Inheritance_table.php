<?php

use yii\db\Migration;

/**
 * Handles the creation of table `Inheritance`.
 */
class m180315_113401_create_Inheritance_table extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
        $tableOptions = null;
        if ($this->db->driverName === 'mysql') {
            // http://stackoverflow.com/questions/766809/whats-the-difference-between-utf8-general-ci-and-utf8-unicode-ci
            $tableOptions = 'CHARACTER SET utf8 COLLATE utf8_general_ci ENGINE=InnoDB';
        }
        $this->createTable('Inheritance', [
            'id' => $this->primaryKey(),
            'gender'=> $this->smallInteger(),
            'husband'=> $this->smallInteger(),
            'wives' => $this->smallInteger(),
            'sons' => $this->smallInteger(),
            'daughters' => $this->smallInteger(),
            'grandsons' => $this->smallInteger(),
            'granddaughters' => $this->smallInteger(),
            'father' => $this->smallInteger(),
            'mother' => $this->smallInteger(),
            'grandfather' => $this->smallInteger(),
            'paternal_grandmother' => $this->smallInteger(),
            'maternal_grandmother' => $this->smallInteger(),
            'full_brothers' => $this->smallInteger(),
            'full_sisters' => $this->smallInteger(),
            'paternal_brothers' => $this->smallInteger(),
            'paternal_sisters' => $this->smallInteger(),
            'maternal_brothers' => $this->smallInteger(),
            'maternal_sisters' => $this->smallInteger(),
            'full_nephews' => $this->smallInteger(),
            'paternal_nephews' => $this->smallInteger(),
            'fullpaternal_uncles' => $this->smallInteger(),
            'paternal_paternal_uncles' => $this->smallInteger(),
            'full_cousins' => $this->smallInteger(),
            'paternal_cousins' => $this->smallInteger(),
        ],$tableOptions);
    }

    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
        $this->dropTable('Inheritance');
    }
}
