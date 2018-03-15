<?php

use yii\db\Migration;

/**
 * Handles the creation of table `choice`.
 */
class m180213_163849_create_choice_table extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
        $this->createTable('choice', [
            'id' => $this->primaryKey(),
            'text' => $this->string(),
            'text_en' => $this->string(),
            'value' => $this->integer(),
            'question_id' =>$this->integer()
        ]);

        // creates index for column `question_id`
        $this->createIndex(
            'idx-choice-question_id',
            'choice',
            'question_id'
        );
        // add foreign key for table `question`
        $this->addForeignKey(
            'fk-choice-question_id',
            'choice',
            'question_id',
            'question',
            'id'
        );
    }

    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
        // drops foreign key for table `choice`
        $this->dropForeignKey(
            'fk-choice-question_id',
            'choice'
        );

        // drops index for column `question_id`
        $this->dropIndex(
            'idx-choice-question_id',
            'choice'
        );
        $this->dropTable('choice');
    }
}
