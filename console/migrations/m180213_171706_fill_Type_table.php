<?php

use yii\db\Migration;

/**
 * Class m180213_171706_fill_Type_table
 */
class m180213_171706_fill_Type_table extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
        Yii::$app->db->createCommand()->batchInsert('type', ['name'], [
            ['YN'],
            ['CHOICE'],
            ['NUMBER'],

        ])->execute();


    }

    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
        echo "m180213_171706_fill_Type_table cannot be reverted.\n";

        return false;
    }

    /*
    // Use up()/down() to run migration code without a transaction.
    public function up()
    {

    }

    public function down()
    {
        echo "m180213_171706_fill_Type_table cannot be reverted.\n";

        return false;
    }
    */
}
