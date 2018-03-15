<?php

use yii\db\Migration;

/**
 * Handles the creation of table `question`.
 */
class m180213_161739_create_question_table extends Migration
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

        $this->createTable('type', [
            'id' => $this->primaryKey(),
            'name' => $this->string(),

        ],$tableOptions);

        $this->createTable('question', [
            'id' => $this->primaryKey(),
            'question' => $this->string(),
            'question_en' => $this->string(),
            'desc' => $this->string(),
            'desc_en' => $this->string(),
            'type_id' => $this->integer(),
            'parent' => $this->integer()

        ],$tableOptions);

        // creates index for column `type_id`
        $this->createIndex(
            'idx-question-type_id',
            'question',
            'type_id'
        );
        // add foreign key for table `brand`
        $this->addForeignKey(
            'fk-question-type_id',
            'question',
            'type_id',
            'type',
            'id'
        );
    }

    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
        // drops foreign key for table `type`
        $this->dropForeignKey(
            'fk-question-type_id',
            'question'
        );

        // drops index for column `type_id`
        $this->dropIndex(
            'idx-question-type_id',
            'question'
        );
        $this->dropTable('question');
        $this->dropTable('type');

    }
}
