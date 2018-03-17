<?php

use yii\db\Migration;

/**
 * Class m180317_103719_add_symbol_and_group_to_question_table
 */
class m180317_103719_add_symbol_and_group_to_question_table extends Migration
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
        $this->createTable('questiongroup', [
            'id' => $this->primaryKey(),
            'name' => $this->string()->notNull()->unique(),
        ],$tableOptions);
        $this->addColumn('question', 'symbol', $this->string()->notNull());
        $this->addColumn('question', 'group_id', $this->integer());

        // creates index for column `group_id`
        $this->createIndex(
            'idx-question-group_id',
            'question',
            'group_id'
        );
        // add foreign key for table `questiongroup`
        $this->addForeignKey(
            'fk-question-group_id',
            'question',
            'group_id',
            'questiongroup',
            'id'
        );

    }

    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
        // drops foreign key for table `questiongroup`
        $this->dropForeignKey(
            'fk-question-group_id',
            'question'
        );

        // drops index for column `group_id`
        $this->dropIndex(
            'idx-question-group_id',
            'question'
        );
        $this->dropColumn('question','group_id');
        $this->dropColumn('question','symbol');
        $this->dropTable('questiongroup');



    }

    /*
    // Use up()/down() to run migration code without a transaction.
    public function up()
    {

    }

    public function down()
    {
        echo "m180317_103719_add_symbol_and_group_to_question_table cannot be reverted.\n";

        return false;
    }
    */
}
